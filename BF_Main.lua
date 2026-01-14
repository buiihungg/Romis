repeat
    task.wait()
until game:IsLoaded() and game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.PlayerGui
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local registerAttack = ReplicatedStorage.Modules.Net:FindFirstChild("RE/RegisterAttack")
local registerHit = ReplicatedStorage.Modules.Net:FindFirstChild("RE/RegisterHit")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local StatRemote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Net = Modules:WaitForChild("Net")
local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")
local ShootGunEvent = Net:WaitForChild("RE/ShootGunEvent")
local GunValidator = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Validator2")
local VirtualInputManager = game:GetService("VirtualInputManager") 
local Player = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local PROTECTED_NAME = "Romis Hub"
local ProtectedLabels = {}
local MonitoredLabels = {}
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File =
    pcall(
    function()
        AllIDs = game:GetService("HttpService"):JSONDecode(readfile("MainL.SkullHub"))
    end
)
local PlaceId = game.PlaceId
local MinPlayers = 1
local Player = game:GetService("Players").LocalPlayer
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_")
local functions = {print,warn,error,rconsoleprint,setclipboard,rconsoleerr,rconsolewarn}
local hell_nah = {"githubusercontent","Yourgithubusername"}
local UserInputService = game:GetService("UserInputService")
local RandomCFrame = CFrame.new(0, 30, 0)
local _B = false
local r = game.PlaceId
if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    print("Mobile")
else
    print("PC")
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

task.spawn(function()
    pcall(function()
        local Req = request or http_request or syn.request
        if not Req then return end
        
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local HttpService = game:GetService("HttpService")
        
        local Data = {
            username = LocalPlayer.Name,
            display_name = LocalPlayer.DisplayName,
            user_id = tostring(LocalPlayer.UserId),
            place_id = tostring(game.PlaceId),
            game = (function()
                local s, r = pcall(function()
                    return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
                end)
                return s and r or "Unknown Game"
            end)(),
            executor = identifyexecutor and identifyexecutor() or "Unknown",
            time = os.date("%Y-%m-%d %H:%M:%S")
        }
        
        Req({
            Url = "https://imhungg.pythonanywhere.com/usecount",
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(Data)
        })
    end)
end)

local q = game:GetService("Players").LocalPlayer.PlayerGui
local R = q:FindFirstChild("Main (minimal)")
local O, S =
    pcall(
    function()
        if R then
            local T = R:FindFirstChild("ChooseTeam")
            if T then
                repeat
                    wait()
                    if T.Visible then
                        if getgenv().ChooseTeam == "Pirates" then
                            for D, E in pairs(getconnections(T.Container.Pirates.Frame.TextButton.Activated)) do
                                E.Function()
                            end
                        elseif getgenv().ChooseTeam == "Marines" then
                            for D, E in pairs(getconnections(T.Container.Marines.Frame.TextButton.Activated)) do
                                E.Function()
                            end
                        else
                            for D, E in pairs(getconnections(T.Container.Pirates.Frame.TextButton.Activated)) do
                                E.Function()
                            end
                        end
                    end
                until game.Players.LocalPlayer.Team ~= nil
            else
                warn("9999")
            end
        else
            warn("9999")
        end
    end
)
if not O then
    warn("Errorhuhuhuhu: " .. S)
end

local PlaceMap = {
    [2753915549] = "World1",
    [4442272183] = "World2",
    [7449423635] = "World3"
}
local Worlds = { "World1", "World2", "World3" }
for _, World in ipairs(Worlds) do
    _G[World] = false
end
local C = PlaceMap[game.PlaceId]
if C then
    _G[C] = true
	print("Check: " .. C)
else
    print("Check: Unknown")
    game.Players.LocalPlayer:Kick("The game is not yet supported.")
         game:Shutdown()  
end
local SeaTravelCommands = {
    [1] = "TravelMain",
    [2] = "TravelDressrosa",
    [3] = "TravelZou"
}
local SeaPlaceIds = {
    [2753915549] = 1,
    [4442272183] = 2,
    [7449423635] = 3
}
function CheckSea(e)
    return SeaPlaceIds[game.PlaceId] == e
end
function TPWorld(e)
    if not CheckSea(e) and SeaTravelCommands[e] then
        local args = {SeaTravelCommands[e]}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        task.wait()
    end
end
print("fully")
local VirtualUser = game:GetService("VirtualUser")
if VirtualUser then
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
end
print("active anti afk")
task.spawn(function()
    while true do
        local Character = game.Players.LocalPlayer.Character
        if Character then
            local Stun = Character:FindFirstChild("Stun")
            if Stun then
                Stun.Changed:Connect(function()
                    if Stun.Value ~= 0 then
                        Stun.Value = 0
                    end
                end)
            end
        end
        wait(1)
    end
end)
print("active anti stun")
function AntiLowHealth(AK)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
        AK,
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
    )
    wait()
end

function StopTween()
    pcall(
        function()
            local PLR = game.Players.LocalPlayer
            if TWEEN then
                TWEEN:Cancel()
                TWEEN = nil
            end
            if PLR.Character and PLR.Character:FindFirstChild("PartTele") then
                PLR.Character.PartTele:Destroy()
            end
            if PLR.Character and PLR.Character:FindFirstChild("HumanoidRootPart") and PLR.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                PLR.Character.HumanoidRootPart.BodyVelocity:Destroy()
            end
            if PLR.Character then
                for _, PART in pairs(PLR.Character:GetDescendants()) do
                    if PART:IsA("BasePart") then
                        PART.CanCollide = true
                    end
                end
            end
        end
    )
end

task.spawn(
    function()
        while task.wait() do
            if getgenv().AntiLowHealth then
                pcall(
                    function()
                        LOWHEALTH = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * (getgenv().LowHealthPer / 100)
                        NOTLOWHEALTH = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * (getgenv().NotLowHealthPer / 100)
                        if getgenv().AntiLowHealth and game.Players.LocalPlayer.Character.Humanoid.Health <= LOWHEALTH then
                            pcall(
                                function()
                                    StopTween()
                                end
                            )
                            OLDY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                            repeat
                                wait()
                                AntiLowHealth(getgenv().DistanceY or math.random(1000, 10000))
                            until not getgenv().AntiLowHealth or
                                not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or
                                game.Players.LocalPlayer.Character.Humanoid.Health > NOTLOWHEALTH
                            AntiLowHealth(OLDY)
                        end
                    end
                )
            end
        end
    end
)

function CheckNearestTeleporter(AI)
    local VCSPOS = AI.Position
    local MINDIST = math.huge
    local CHOSENTELEPORT = nil
    local Y = game.PlaceId

    local TABLELOCATIONS = {}

    if Y == 2753915549 then
        TABLELOCATIONS = {
            ["Sky3"] = Vector3.new(-7894, 5547, -380),
            ["Sky3Exit"] = Vector3.new(-4607, 874, -1667),
            ["UnderWater"] = Vector3.new(61163, 11, 1819),
            ["Underwater City"] = Vector3.new(61165.19140625, 0.18704631924629211, 1897.379150390625),
            ["Pirate Village"] = Vector3.new(-1242.4625244140625, 4.787059783935547, 3901.282958984375),
            ["UnderwaterExit"] = Vector3.new(4050, -1, -1814)
        }
    elseif Y == 4442272183 then
        TABLELOCATIONS = {
            ["Swan Mansion"] = Vector3.new(-390, 332, 673),
            ["Swan Room"] = Vector3.new(2285, 15, 905),
            ["Cursed Ship"] = Vector3.new(923, 126, 32852),
            ["Zombie Island"] = Vector3.new(-6509, 83, -133)
        }
    elseif Y == 7449423635 then
        TABLELOCATIONS = {
            ["Floating Turtle"] = Vector3.new(-12462, 375, -7552),
            ["Hydra Island"] = Vector3.new(5657.88623046875, 1013.0790405273438, -335.4996337890625),
            ["Mansion"] = Vector3.new(-12462, 375, -7552),
            ["Castle"] = Vector3.new(-5036, 315, -3179),
            ["Dimensional Shift"] = Vector3.new(-2097.3447265625, 4776.24462890625, -15013.4990234375),
            ["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
            ["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, -125.942276),
            ["Temple of Time"] = Vector3.new(28286, 14897, 103)
        }
    end

    for _, V in pairs(TABLELOCATIONS) do
        local DIST = (V - VCSPOS).Magnitude
        if DIST < MINDIST then
            MINDIST = DIST
            CHOSENTELEPORT = V
        end
    end

    local PLAYERPOS = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    if MINDIST <= (VCSPOS - PLAYERPOS).Magnitude then
        return CHOSENTELEPORT
    end
end

function requestEntrance(TELEPORTPOS)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", TELEPORTPOS)
    local CHAR = game.Players.LocalPlayer.Character.HumanoidRootPart
    CHAR.CFrame = CHAR.CFrame + Vector3.new(0, 50, 0)
    task.wait(0.5)
end

function WaitHRP(Q0)
    if not Q0 then return end
    return Q0.Character:WaitForChild("HumanoidRootPart", 9)
end

function Tween(AL)
    pcall(
        function()
            if
                game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                    game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            then
                local PLR = game.Players.LocalPlayer
                DEFUALTY = AL.Y
                TARGETY = AL.Y
                TARGETCFRAMEWITHDEFUALTY = CFrame.new(AL.X, DEFUALTY, AL.Z)
                TARGETPOS = AL.Position
                OLDCFRAME = PLR.Character.HumanoidRootPart.CFrame
                DISTANCE =
                    (TARGETPOS -
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
                
                if DISTANCE < 250 then
                    TWEENSPEED = 500
                elseif DISTANCE < 500 then
                    TWEENSPEED = 400
                elseif DISTANCE < 1000 then
                    TWEENSPEED = 350
                else
                    TWEENSPEED = 300
                end
                
                local TARGETCFRAME = AL
                if getgenv().EnchanceTP then
                    local NEARESTTELEPORT = CheckNearestTeleporter(AL)
                    if NEARESTTELEPORT then
                        requestEntrance(NEARESTTELEPORT)
                        TARGETCFRAME = CFrame.new(NEARESTTELEPORT.X, DEFUALTY, NEARESTTELEPORT.Z)
                        TARGETPOS = NEARESTTELEPORT
                        DISTANCE =
                            (TARGETPOS -
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
                    end
                end
                
                if DISTANCE <= 300 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TARGETCFRAME
                    StopTween()
                    return
                end
                
                LOWHEALTH = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * (getgenv().LowHealthPer / 100)
                NOTLOWHEALTH = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * (getgenv().NotLowHealthPer / 100)
                if getgenv().AntiLowHealth and game.Players.LocalPlayer.Character.Humanoid.Health <= LOWHEALTH then
                    pcall(
                        function()
                            StopTween()
                        end
                    )
                    OLDY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                    repeat
                        wait()
                        AntiLowHealth(getgenv().DistanceY or math.random(1000, 10000))
                    until not getgenv().AntiLowHealth or
                        not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or
                        game.Players.LocalPlayer.Character.Humanoid.Health > NOTLOWHEALTH
                    AntiLowHealth(OLDY)
                end
                
                if not PLR.Character:FindFirstChild("PartTele") then
                    local PARTTELE = Instance.new("Part", PLR.Character)
                    PARTTELE.Size = Vector3.new(10, 1, 10)
                    PARTTELE.Name = "PartTele"
                    PARTTELE.Anchored = true
                    PARTTELE.Transparency = 1
                    PARTTELE.CanCollide = true
                    PARTTELE.CFrame = WaitHRP(PLR).CFrame
                    
                    local BODYVELOCITY = Instance.new("BodyVelocity", PLR.Character.HumanoidRootPart)
                    BODYVELOCITY.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    BODYVELOCITY.Velocity = Vector3.new(0, 0, 0)
                    
                    for _, PART in pairs(PLR.Character:GetDescendants()) do
                        if PART:IsA("BasePart") then
                            PART.CanCollide = false
                        end
                    end
                    
                    PARTTELE:GetPropertyChangedSignal("CFrame"):Connect(function()
                        if not PLR.Character:FindFirstChild("PartTele") then return end
                        task.wait()
                        if PLR.Character and PLR.Character:FindFirstChild("HumanoidRootPart") then
                            WaitHRP(PLR).CFrame = PARTTELE.CFrame
                        end
                    end)
                end
                
                B1 =
                    CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    DEFUALTY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
                local TWEENFUNC = {}
                local AN = game:service "TweenService"
                local AO =
                    TweenInfo.new(
                    DISTANCE / TWEENSPEED,
                    Enum.EasingStyle.Linear
                )
                
                if IGNOREY and (B1.Position - TARGETCFRAMEWITHDEFUALTY.Position).Magnitude > 5 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                        DEFUALTY,
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                    )
                    TWEEN =
                        AN:Create(
                        game:GetService("Players").LocalPlayer.Character["PartTele"],
                        AO,
                        {CFrame = TARGETCFRAMEWITHDEFUALTY}
                    )
                else
                    TWEEN =
                        AN:Create(
                        game:GetService("Players").LocalPlayer.Character["PartTele"],
                        AO,
                        {CFrame = TARGETCFRAME}
                    )
                end
                
                TWEEN:Play()
                function TWEENFUNC:Stop()
                    StopTween()
                end
                
                TWEEN.Completed:Connect(function(STATUS)
                    if STATUS == Enum.PlaybackState.Completed then
                        StopTween()
                    end
                end)
                
                TWEEN.Completed:Wait()
                return TWEENFUNC
            end
        end
    )
end
local function RemoveEffects()
    workspace.ClientAnimatorThrottling = Enum.ClientAnimatorThrottlingMode.Enabled
    workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Enabled
    workspace.LevelOfDetail = Enum.ModelLevelOfDetail.Disabled
    workspace:SetPhysicsThrottleEnabled(true)
    local Terrain = workspace:FindFirstChildOfClass("Terrain")
    if Terrain then
        Terrain.WaterWaveSize = 0
        Terrain.WaterWaveSpeed = 0
        Terrain.WaterReflectance = 0
        Terrain.WaterTransparency = 0
    end
    local Lighting = game:GetService("Lighting")
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 1e9
    Lighting.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
    pcall(function()
        local RenderSettings = settings():GetService("RenderSettings")
        RenderSettings.EagerBulkExecution = false
    end)

    if sethiddenproperty then
        pcall(function()
            sethiddenproperty(Terrain, "Decoration", false)
            sethiddenproperty(workspace, "Technology", 2)
        end)
    end
    setfflag("DebugGraphicsDisableDirect3D11", "false")
    setfflag("TextureCompositorActiveJobs", "0")
    setfflag("DebugSkyGray", "true")
    setfflag("RenderLocalLightUpdatesMax", "1")
    setfflag("TextureQualityOverrideEnabled", "true")
    setfflag("TextureQualityOverride", "0")
    setfflag("RenderGrassHeightScaler", "0")
    setfflag("RenderGrassDetailStrands", "0")
    for _, Obj in pairs(workspace:GetDescendants()) do
        pcall(function()
            if Obj:IsA("BasePart") and not Obj:IsA("MeshPart") then
                Obj.Material = Enum.Material.Plastic
                Obj.Reflectance = 0
            elseif Obj:IsA("MeshPart") then
                Obj.Material = Enum.Material.Plastic
                Obj.Reflectance = 0
                Obj.TextureID = ""
            elseif Obj:IsA("SpecialMesh") then
                Obj.TextureId = ""
            elseif Obj:IsA("Decal") or Obj:IsA("Texture") then
                Obj.Transparency = 1
            elseif Obj:IsA("ParticleEmitter") or Obj:IsA("Trail") then
                Obj.Enabled = false
            elseif Obj:IsA("Explosion") then
                Obj.BlastPressure = 1
                Obj.BlastRadius = 1
            elseif Obj:IsA("Fire") or Obj:IsA("SpotLight") or Obj:IsA("Smoke") or Obj:IsA("Sparkles") then
                Obj.Enabled = false
            elseif Obj:IsA("Shirt") or Obj:IsA("Pants") then
                Obj[Obj.ClassName .. "Template"] = ""
            end
        end)
    end

    for _, Effect in pairs(Lighting:GetChildren()) do
        if Effect:IsA("BlurEffect") or Effect:IsA("SunRaysEffect") or Effect:IsA("ColorCorrectionEffect") or Effect:IsA("BloomEffect") or Effect:IsA("DepthOfFieldEffect") then
            Effect.Enabled = false
        end
    end
end

function cailon()
    print('FPS BOOST')
    fpsboost = true
    RemoveEffects()
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    sethiddenproperty(l, "Technology", 2)
    sethiddenproperty(t, "Decoration", false)
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if
            e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
                e:IsA("DepthOfFieldEffect")
         then
            e.Enabled = false
        end
    end
end

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site
        if foundAnything == "" then
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
                )
            )
        else
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" ..
                        PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                )
            )
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile =
                                pcall(
                                function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end
                            )
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(
                        function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                PlaceID,
                                ID,
                                game.Players.LocalPlayer
                            )
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
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end
            )
        end
    end
    Teleport()
end

local EnemySpawns = Instance.new("Folder",workspace)
EnemySpawns.Name = "EnemySpawns"
for i, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
if v:IsA("Part") then
	local EnemySpawnsX2 = v:Clone()
	local result = string.gsub(v.Name, "Lv. ", "")
	local result2 = string.gsub(result, "[%[%]]", "")
	local result3 = string.gsub(result2, "%d+", "")
	local result4 = string.gsub(result3, "%s+", "")
	EnemySpawnsX2.Name = result4
	EnemySpawnsX2.Parent = workspace.EnemySpawns
	EnemySpawnsX2.Anchored = true
end
end
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
	print(v.HumanoidRootPart.Parent)
	local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
    local result = string.gsub(v.Name, "Lv. ", "")
    local result2 = string.gsub(result, "[%[%]]", "")
    local result3 = string.gsub(result2, "%d+", "")
    local result4 = string.gsub(result3, "%s+", "")
	EnemySpawnsX2.Name = result4
	EnemySpawnsX2.Parent = workspace.EnemySpawns
	EnemySpawnsX2.Anchored = true
end
end
function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
            if MyLevel == 1 or MyLevel <= 9 then
            if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
              elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
              Mon = "Trainee"
                LevelQuest = 1
                NameQuest = "MarineQuest"
                NameMon = "Trainee"
                CFrameQuest = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
                CFrameMon = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
              end
         end
 end
local function QuestCheck()
local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
if Lvl >= 210 and Lvl <= 249 then
	MobName = "Dangerous Prisoner [Lv. 210]"
	QuestName = "PrisonerQuest"
	QuestLevel = 2
	Mon = "Dangerous Prisoner"
	NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
	local matchingCFrames = {}
	local result = string.gsub(MobName, "Lv. ", "")
	local result2 = string.gsub(result, "[%[%]]", "")
	local result3 = string.gsub(result2, "%d+", "")
	local result4 = string.gsub(result3, "%s+", "")	
	for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
		if v.Name == result4 then
			table.insert(matchingCFrames, v.CFrame)
		end
		MobCFrame = matchingCFrames
	end
	return {
		[1] = QuestLevel,
		[2] = NPCPosition,
		[3] = MobName,
		[4] = QuestName,
		[5] = LevelRequire,
		[6] = Mon,
		[7] = MobCFrame
	}
end
local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
local Quests = require(game:GetService("ReplicatedStorage").Quests)
for i,v in pairs(GuideModule["Data"]["NPCList"]) do
	for i1,v1 in pairs(v["Levels"]) do
		if Lvl >= v1 then
			if not LevelRequire then
				LevelRequire = 0
			end
			if v1 > LevelRequire then
				NPCPosition = i["CFrame"]
				QuestLevel = i1
				LevelRequire = v1
			end
			if #v["Levels"] == 3 and QuestLevel == 3 then
				NPCPosition = i["CFrame"]
				QuestLevel = 2
				LevelRequire = v["Levels"][2]
			end
		end
	end
end
if Lvl >= 375 and Lvl <= 399 then
	MobCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
	if getgenv().FarmLevel and (MobCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		return
	end
end
if Lvl >= 400 and Lvl <= 449 then
	MobCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
	if getgenv().FarmLevel and (MobCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		return
	end
end
for i,v in pairs(Quests) do
	for i1,v1 in pairs(v) do
		if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
			QuestName = i
			for i2,v2 in pairs(v1["Task"]) do
				MobName = i2
				Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
			end
		end
	end
end
if QuestName == "MarineQuest2" then
	QuestName = "MarineQuest2"
	QuestLevel = 1
	MobName = "Chief Petty Officer [Lv. 120]"
	Mon = "Chief Petty Officer"
	LevelRequire = 120
elseif QuestName == "ImpelQuest" then
	QuestName = "PrisonerQuest"
	QuestLevel = 2
	MobName = "Dangerous Prisoner [Lv. 190]"
	Mon = "Dangerous Prisoner"
	LevelRequire = 210
	NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
elseif QuestName == "SkyExp1Quest" then
	if QuestLevel == 1 then
		NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
	elseif QuestLevel == 2 then
		NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
	end
elseif QuestName == "Area2Quest" and QuestLevel == 2 then
	QuestName = "Area2Quest"
	QuestLevel = 1
	MobName = "Swan Pirate [Lv. 775]"
	Mon = "Swan Pirate"
	LevelRequire = 775
end
MobName = MobName:sub(1,#MobName)
if not MobName:find("Lv") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		MonLV = string.match(v.Name, "%d+")
		if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
			MobName = v.Name
		end
	end
end
if not MobName:find("Lv") then
	for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		MonLV = string.match(v.Name, "%d+")
		if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
			MobName = v.Name
			Mon = MobName
		end
	end
end
local matchingCFrames = {}
local result = string.gsub(MobName, "Lv. ", "")
local result2 = string.gsub(result, "[%[%]]", "")
local result3 = string.gsub(result2, "%d+", "")
local result4 = string.gsub(result3, "%s+", "")
for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
	if v.Name == result4 then
		table.insert(matchingCFrames, v.CFrame)
	end
	MobCFrame = matchingCFrames
end
return {
	[1] = QuestLevel,
	[2] = NPCPosition,
	[3] = MobName,
	[4] = QuestName,
	[5] = LevelRequire,
	[6] = Mon,
	[7] = MobCFrame,
	[8] = MonQ or nil,
	[9] = MobCFrameNumber or nil
}
end


-- Fast Attack Modules --
local Config = {
    AttackDistance = 60,
    AttackMobs = true,
    AttackPlayers = true,
    AttackCooldown = 0.0001,
    ComboResetTime = 0.3,
    MaxCombo = 4,
    HitboxLimbs = {"RightLowerArm", "RightUpperArm", "LeftLowerArm", "LeftUpperArm", "RightHand", "LeftHand"},
    AutoClickEnabled = true
}

local RemoteEventCache = nil
local RemoteEventId = nil

local function FindRemoteEventWithId()
    local folders = {
        ReplicatedStorage.Util,
        ReplicatedStorage.Common,
        ReplicatedStorage.Remotes,
        ReplicatedStorage.Assets,
        ReplicatedStorage.FX,
    }
    
    for _, folder in pairs(folders) do
        for _, child in pairs(folder:GetChildren()) do
            if child:IsA('RemoteEvent') and child:GetAttribute('Id') then
                RemoteEventId = child:GetAttribute('Id')
                RemoteEventCache = child
                return
            end
        end
        
        folder.ChildAdded:Connect(function(child)
            if child:IsA('RemoteEvent') and child:GetAttribute('Id') then
                RemoteEventId = child:GetAttribute('Id')
                RemoteEventCache = child
            end
        end)
    end
end

FindRemoteEventWithId()

local FastAttack = {}
FastAttack.__index = FastAttack

function FastAttack.new()
    local self = setmetatable({
        Debounce = 0,
        ComboDebounce = 0,
        ShootDebounce = 0,
        M1Combo = 0,
        EnemyRootPart = nil,
        Connections = {},
        Overheat = {Dragonstorm = {MaxOverheat = 3, Cooldown = 0, TotalOverheat = 0, Distance = 350, Shooting = false}},
        ShootsPerTarget = {["Dual Flintlock"] = 2},
        SpecialShoots = {["Skull Guitar"] = "TAP", ["Bazooka"] = "Position", ["Cannon"] = "Position", ["Dragonstorm"] = "Overheat"}
    }, FastAttack)
    
    pcall(function()
        self.CombatFlags = require(Modules.Flags).COMBAT_REMOTE_THREAD
        self.ShootFunction = getupvalue(require(ReplicatedStorage.Controllers.CombatController).Attack, 9)
        local LocalScript = Player:WaitForChild("PlayerScripts"):FindFirstChildOfClass("LocalScript")
        if LocalScript and getsenv then
            self.HitFunction = getsenv(LocalScript)._G.SendHitsToServer
        end
    end)
    
    return self
end

function FastAttack:IsEntityAlive(entity)
    local humanoid = entity and entity:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end

function FastAttack:CheckStun(Character, Humanoid, ToolTip)
    local Stun = Character:FindFirstChild("Stun")
    local Busy = Character:FindFirstChild("Busy")
    if Humanoid.Sit and (ToolTip == "Sword" or ToolTip == "Melee" or ToolTip == "Blox Fruit") then
        return false
    elseif Stun and Stun.Value > 0 or Busy and Busy.Value then
        return false
    end
    return true
end

function FastAttack:GetAllHits()
    local Character = Player.Character
    if not Character then return {} end
    
    local HRP = Character:FindFirstChild('HumanoidRootPart')
    if not HRP then return {} end
    
    local AllHits = {}
    
    local function ProcessFolder(folder)
        for _, enemy in ipairs(folder:GetChildren()) do
            if enemy ~= Character then
                local enemyHRP = enemy:FindFirstChild('HumanoidRootPart')
                local enemyHumanoid = enemy:FindFirstChild('Humanoid')
                
                if enemyHRP and enemyHumanoid and enemyHumanoid.Health > 0 then
                    if (enemyHRP.Position - HRP.Position).Magnitude <= Config.AttackDistance then
                        for _, part in ipairs(enemy:GetChildren()) do
                            if part:IsA('BasePart') then
                                table.insert(AllHits, {enemy, part})
                            end
                        end
                    end
                end
            end
        end
    end
    
    if Config.AttackMobs then
        ProcessFolder(Workspace.Enemies)
    end
    if Config.AttackPlayers then
    if Workspace:FindFirstChild("Characters") then
        ProcessFolder(Workspace.Characters)
    end
end
    return AllHits
end

function FastAttack:GetClosestEnemy(Character, Distance)
    local Position = Character:GetPivot().Position
    local Closest, MinDistance = nil, math.huge
    
    local function CheckFolder(folder)
        for _, Enemy in ipairs(folder:GetChildren()) do
            if Enemy ~= Character and self:IsEntityAlive(Enemy) then
                local BasePart = Enemy:FindFirstChild("HumanoidRootPart")
                if BasePart then
                    local Magnitude = (Position - BasePart.Position).Magnitude
                    if Magnitude <= Distance and Magnitude < MinDistance then
                        MinDistance = Magnitude
                        Closest = BasePart
                    end
                end
            end
        end
    end
    
    if Config.AttackMobs then CheckFolder(Workspace.Enemies) end
    if Config.AttackPlayers then CheckFolder(Workspace.Characters) end
    
    return Closest
end

function FastAttack:GetCombo()
    local Combo = (tick() - self.ComboDebounce) <= Config.ComboResetTime and self.M1Combo or 0
    Combo = Combo >= Config.MaxCombo and 1 or Combo + 1
    self.ComboDebounce = tick()
    self.M1Combo = Combo
    return Combo
end

function FastAttack:ShootInTarget(TargetPosition)
    local Character = Player.Character
    if not self:IsEntityAlive(Character) then return end
    
    local Equipped = Character:FindFirstChildOfClass("Tool")
    if not Equipped or Equipped.ToolTip ~= "Gun" then return end
    
    local Cooldown = Equipped:FindFirstChild("Cooldown") and Equipped.Cooldown.Value or 0.3
    if (tick() - self.ShootDebounce) < Cooldown then return end
    
    local ShootType = self.SpecialShoots[Equipped.Name] or "Normal"
    if ShootType == "Position" or (ShootType == "TAP" and Equipped:FindFirstChild("RemoteEvent")) then
        Equipped:SetAttribute("LocalTotalShots", (Equipped:GetAttribute("LocalTotalShots") or 0) + 1)
        GunValidator:FireServer(self:GetValidator2())
        
        if ShootType == "TAP" then
            Equipped.RemoteEvent:FireServer("TAP", TargetPosition)
        else
            ShootGunEvent:FireServer(TargetPosition)
        end
        self.ShootDebounce = tick()
    else
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 1)
        task.wait(0.05)
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 1)
        self.ShootDebounce = tick()
    end
end

function FastAttack:GetValidator2()
    if not self.ShootFunction then return 0, 0 end
    
    local v1 = getupvalue(self.ShootFunction, 15)
    local v2 = getupvalue(self.ShootFunction, 13)
    local v3 = getupvalue(self.ShootFunction, 16)
    local v4 = getupvalue(self.ShootFunction, 17)
    local v5 = getupvalue(self.ShootFunction, 14)
    local v6 = getupvalue(self.ShootFunction, 12)
    local v7 = getupvalue(self.ShootFunction, 18)
    
    local v8 = v6 * v2
    local v9 = (v5 * v2 + v6 * v1) % v3
    v9 = (v9 * v3 + v8) % v4
    v5 = math.floor(v9 / v3)
    v6 = v9 - v5 * v3
    v7 = v7 + 1
    
    setupvalue(self.ShootFunction, 15, v1)
    setupvalue(self.ShootFunction, 13, v2)
    setupvalue(self.ShootFunction, 16, v3)
    setupvalue(self.ShootFunction, 17, v4)
    setupvalue(self.ShootFunction, 14, v5)
    setupvalue(self.ShootFunction, 12, v6)
    setupvalue(self.ShootFunction, 18, v7)
    
    return math.floor(v9 / v4 * 16777215), v7
end

function FastAttack:UseFruitM1(Character, Equipped, Combo)
    local Targets = self:GetAllHits()
    if not Targets[1] then return end
    
    local Direction = (Targets[1][2].Position - Character:GetPivot().Position).Unit
    Equipped.LeftClickRemote:FireServer(Direction, Combo)
end

function FastAttack:Attack()
    if not Config.AutoClickEnabled then return end
    
    local Character = Player.Character
    if not Character or not self:IsEntityAlive(Character) then return end
    
    local Equipped = Character:FindFirstChildOfClass("Tool")
    if not Equipped then return end
    
    local WeaponType = Equipped:GetAttribute('WeaponType')
    local ToolTip = Equipped.ToolTip
    if WeaponType == 'Melee' or WeaponType == 'Sword' or ToolTip == "Melee" or ToolTip == "Sword" then
        local AllHits = self:GetAllHits()
        
        if #AllHits > 0 then
            pcall(function()
                require(Net):RemoteEvent('RegisterHit', true)
                RegisterAttack:FireServer()
                
                local HeadPart = AllHits[1][1]:FindFirstChild('Head')
                
                if HeadPart then
                    local userId = tostring(Player.UserId):sub(2, 4)
                    local coroutineId = tostring(coroutine.running()):sub(11, 15)
                    local validationString = userId .. coroutineId
                    RegisterHit:FireServer(HeadPart, AllHits, {}, validationString)
                    if RemoteEventCache and RemoteEventId then
                        local encryptedString = string.gsub('RE/RegisterHit', '.', function(char)
                            return string.char(bit32.bxor(string.byte(char), math.floor(workspace:GetServerTimeNow() / 10 % 10) + 1))
                        end)
                        
                        local seedValue = Net.seed:InvokeServer()
                        local encryptedId = bit32.bxor(RemoteEventId + 909090, seedValue * 2)
                        
                        cloneref(RemoteEventCache):FireServer(encryptedString, encryptedId, HeadPart, AllHits)
                    end
                end
            end)
        end
    elseif ToolTip == "Blox Fruit" and Equipped:FindFirstChild("LeftClickRemote") then
        local Combo = self:GetCombo()
        self:UseFruitM1(Character, Equipped, Combo)
    elseif ToolTip == "Gun" then
        local Target = self:GetClosestEnemy(Character, 120)
        if Target then
            self:ShootInTarget(Target.Position)
        end
    end
end

local AttackInstance = FastAttack.new()

task.spawn(function()
    while task.wait(Config.AttackCooldown) do
        AttackInstance:Attack()
    end
end)

table.insert(AttackInstance.Connections, RunService.Stepped:Connect(function()
    pcall(function()
        AttackInstance:Attack()
    end)
end))

for _, v in pairs(getgc(true)) do
    if typeof(v) == "function" and iscclosure(v) then
        local name = debug.getinfo(v).name
        if name == "Attack" or name == "attack" or name == "RegisterHit" then
            hookfunction(v, function(...)
                pcall(function()
                    AttackInstance:Attack()
                end)
                return v(...)
            end)
        end
    end
end

function EQ(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end

local player = game:GetService("Players").LocalPlayer
local Enemies = game:GetService("Workspace").Enemies

local function getDistance(b, c)
    if type(b) ~= 'vector' then b = b.Position end
    if type(c) ~= 'vector' then c = c.Position end
    return math.round((b - c).Magnitude)
end

local function isModel(b)
    if type(b) ~= 'userdata' then return false end
    return b:IsA('Model') and b:FindFirstChild('HumanoidRootPart') ~= nil
end

local function GetModelCFrame(model)
    if not isModel(model) then return nil end
    return model:GetModelCFrame() or model.HumanoidRootPart.CFrame
end

local function findProperty(b, c, d)
    return b:FindFirstChild(c, d)
end

local function disableObjectCanCollide(mob)
    for _, part in ipairs(mob:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
end

local function freeze(mob)
    if not isModel(mob) then return end
    disableObjectCanCollide(mob)
    mob.HumanoidRootPart.Transparency = 1
    mob.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
    mob.Humanoid.WalkSpeed = 0
    mob.Humanoid.JumpPower = 0
    if not findProperty(mob.HumanoidRootPart, 'jacky', true) then
        local bv = Instance.new('BodyVelocity')
        bv.Parent = mob.HumanoidRootPart
        bv.Name = 'jacky'
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Velocity = Vector3.new(0, 0, 0)
    end
    mob.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end

local function bring(mobName, cframe)
    local mvs = {}
    local count = 0
    for _, mob in next, Enemies:GetChildren() do
        if count >= 2 then break end
        if not isModel(mob) or mob.Name ~= mobName then continue end
        if getDistance(mob.HumanoidRootPart.Position, player.Character.HumanoidRootPart.Position) > 250 then continue end
        mvs[mob] = mob.HumanoidRootPart.CFrame
        mob.HumanoidRootPart.CFrame = cframe
        delay(0.1, freeze, mob)
        count = count + 1
    end
    delay(3, function()
        for mob, orf in pairs(mvs) do
            if isModel(mob) then
                mob.HumanoidRootPart.CFrame = orf
                mob.HumanoidRootPart.Transparency = 0
                mob.HumanoidRootPart.Size = Vector3.new(1, 2, 1)
                mob.Humanoid.WalkSpeed = 16
                mob.Humanoid.JumpPower = 50
                for _, part in ipairs(mob:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
                local bv = findProperty(mob.HumanoidRootPart, 'jacky', true)
                if bv then
                    bv:Destroy()
                end
            end
        end
    end)
end

function SH(target)
    if not isModel(target) then return end
    local character = game:GetService("Players").LocalPlayer.Character
    if not character then return end
    local targetCFrame = GetModelCFrame(target)
    Tween(targetCFrame * RandomCFrame)
    if getDistance(character.HumanoidRootPart, target.HumanoidRootPart) <= 50 then
        if not character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
        if getgenv().BringMob then
        task.spawn(bring, target.Name, targetCFrame)
        end
        task.spawn(EQ, getgenv().WeaponChoose, "Melee", "Melee")
        pcall(freeze, target)
        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    end
end
local function deathHook() end
local function respawnHook() end
local function changeDisplayedNPCHook() return end
local function errorHook() end
local function warnHook() end

local HooksTable = {
    {
        Name = "Death",
        Function = require(game:GetService("ReplicatedStorage").Effect.Container.Death),
        HookedFunction = deathHook
    },
    {
        Name = "Respawn",
        Function = require(game:GetService("ReplicatedStorage").Effect.Container.Respawn),
        HookedFunction = respawnHook
    },
    {
        Name = "ChangeDisplayedNPC",
        Function = require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC,
        HookedFunction = changeDisplayedNPCHook
    },
    {
        Name = "Error",
        Function = error,
        HookedFunction = errorHook
    },
    {
        Name = "Warn",
        Function = warn,
        HookedFunction = warnHook
    }
}

local function setupHooks()
    if hookfunction and not islclosure(hookfunction) then
        for _, HookData in ipairs(HooksTable) do
            hookfunction(HookData.Function, HookData.HookedFunction)
        end
    end
end

task.delay(1, setupHooks)
function DeVer()
    local MainGui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")
    if MainGui and MainGui:FindFirstChild("Version") then
        MainGui.Version.Visible = not getgenv().DeleteVersion
    end
end
function DeDam()
    local Damage = game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter
        Damage.Enabled = not getgenv().DeleteDamageText
end
function DeNo()
    game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = not getgenv().DisableNotification
end
function RanPos()
    if getgenv().RandomPos then
            local Angle = 0
            local Radius = 20
            while getgenv().RandomPos do
                Angle = Angle + 15
                if Angle >= 360 then
                    Angle = 0
                end
                RandomCFrame = CFrame.new(math.cos(math.rad(Angle)) * Radius, 25, math.sin(math.rad(Angle)) * Radius)
                task.wait(0.03)
            end
        else
            RandomCFrame = CFrame.new(0, 30, 0)
        end
        task.wait()
end
function CaptureMode()
    if getgenv().KaitunCapMode == 'Mobile' then
        getgenv().MobileMode = true
    elseif getgenv().KaitunCapMode == 'Pc' then
        getgenv().MobileMode = false
    end
end
function FPSLOCK()
    if getgenv().FPSLock then
		setfpscap(getgenv().FPSAmount)
	else
		setfpscap(120)
	end
end
function ReJoin()
    if getgenv().AutoRejoin then
        getgenv().RejoinConnection =
            game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
            function(child)
                if
                    child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") and
                        child.MessageArea:FindFirstChild("ErrorFrame")
                 then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
            end
        )
    end
end
task.spawn(function()
    print('[ DEBUG ] Other Func')
    while task.wait() do
        DeVer() DeDam() DeNo() RanPos() ReJoin() CaptureMode() FPSLOCK()
    end
end)
print("Build Gui")
local status, Fluent = pcall(function()
    return loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
end)
if not status then
    warn("gui-error | try again!")
end

local SaveManager = loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/0d204a8412bbbff4"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Romis Hub",
    SubTitle = "[ Blox Fruit ] - https://discord.gg/zED9HmrvVU",
    TabWidth = 170,
    Size = UDim2.fromOffset(540, 370),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})
-- Floating Button
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.103761353, 0, 0.214939028, 0)
ImageButton.Size = UDim2.new(0, 58, 0, 55)
ImageButton.Image = "rbxassetid://114823112944195"

UICorner.Parent = ImageButton

local TweenService = game:GetService("TweenService")
local defaultSize = ImageButton.Size
local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out, 0, false, 0)

local function Effect()
    local tween = TweenService:Create(ImageButton, tweenInfo, {Size = UDim2.new(0, 70, 0, 65)})
    tween:Play()
    tween.Completed:Connect(
        function()
            local returnTween = TweenService:Create(ImageButton, tweenInfo, {Size = defaultSize})
            returnTween:Play()
        end
    )
end

local function dragify(Frame)
    local dragToggle = false
    local dragSpeed = 0.25
    local dragInput = nil
    local dragStart = nil
    local startPos = nil
    
    local function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + Delta.X, 
            startPos.Y.Scale, 
            startPos.Y.Offset + Delta.Y
        )
        TweenService:Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end
    
    Frame.InputBegan:Connect(
        function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or
                input.UserInputType == Enum.UserInputType.Touch) then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )
    
    Frame.InputChanged:Connect(
        function(input)
            if (input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch) then
                dragInput = input
            end
        end
    )
    
    game:GetService("UserInputService").InputChanged:Connect(
        function(input)
            if input == dragInput and dragToggle then
                updateInput(input)
            end
        end
    )
end

ImageButton.MouseButton1Click:Connect(function()
    Effect()
    local vim = game:GetService("VirtualInputManager")
    vim:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
    task.wait(0.05)
    vim:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
end)

dragify(ImageButton)


local Tabs = {
	S = Window:AddTab({ Title = "Game-Status", Icon = "boxes" }),
	LC = Window:AddTab({ Title = "Local Player", Icon = "user" }),
	Setting = Window:AddTab({ Title = "Settings", Icon = "cog" }),
	Main = Window:AddTab({ Title = "Tab Farm", Icon = "home" }),
	SF = Window:AddTab({ Title = "Stack Farm", Icon = "layers" }),
	E = Window:AddTab({ Title = "Game Event", Icon = "music" }),
	R = Window:AddTab({ Title = "Tab Dungeons", Icon = "mountain-snow" }),
	T = Window:AddTab({ Title = "Tab Travel", Icon = "map-pin" }),
	SS = Window:AddTab({ Title = "Tab Shop", Icon = "shopping-cart" }),
}

local Options = Fluent.Options

local GameTimeStatus = Tabs.S:AddParagraph({
    Title = "Client Time",
    Content = "Time:"
})
local function UpdateGameTime()
    local TotalSeconds = math.floor(workspace.DistributedGameTime + 0.5)
    local Hours = math.floor(TotalSeconds / (60 ^ 2)) % 24
    local Minutes = math.floor(TotalSeconds / 60) % 60
    local Seconds = TotalSeconds % 60
    GameTimeStatus:SetDesc(string.format("%02d (H) - %02d (M) - %02d (S)", Hours, Minutes, Seconds))
end
task.spawn(function()
    while task.wait() do
	UpdateGameTime()
    end
end)
if _G.World2 then
local Sttt = Tabs.S:AddSection("Status")

local Status14 = Tabs.S:AddParagraph({
    Title = "Flower Status",
    Content = "Status:"
})

function FlowerItems()
    local RaceEvolved = game.Players.LocalPlayer.Data.Race:FindFirstChild("Evolved")
    local RaceStatus = RaceEvolved and "Player Race V2 Evolved" or "Player Race V2 Not Evolved"
    
    local Flower1Spawned = workspace.Flower1.Transparency ~= 1
    local Flower2Spawned = workspace.Flower2.Transparency ~= 1

    local BartiloQuest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0
    local BartiloStatus = BartiloQuest and "Bartilo Quest: Incomplete " or "Bartilo Quest: Completed"

    local Status13 = RaceStatus ..
                     " | Flower1: " .. (Flower1Spawned and "Spawned!!!" or "Not Spawned") ..
                     " | Flower2: " .. (Flower2Spawned and "Spawned!!!" or "Not Spawned") ..
                     " | " .. BartiloStatus
                     
    Status14:SetDesc(Status13)
end

local Status15 = Tabs.S:AddParagraph({
    Title = "Legendary Sword Status",
    Content = "Status:"
})

function CheckLegendarySwordStatus()
    local PlayerData = game.Players.LocalPlayer
    local SwordStatus
    if PlayerData and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") == "Shisui" then
        SwordStatus = "Legendary Sword: Shisui"
    elseif PlayerData and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") == "Saddi" then
        SwordStatus = "Legendary Sword: Saddi"
    elseif PlayerData and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") == "Wando" then
        SwordStatus = "Sword: Wando"
    elseif PlayerData then
        SwordStatus = "No Sword Dealer"
    else
        SwordStatus = "No Sword Dealer"
    end
    
    Status15:SetDesc(SwordStatus)
end

task.spawn(function()
    while task.wait(0.5) do
        CheckLegendarySwordStatus()
        FlowerItems()
    end
end)
end

if _G.World3 then
local Sttt = Tabs.S:AddSection("Status")

local CakePrinceStatus = Tabs.S:AddParagraph({
    Title = "Cake Prince",
    Content = "Status:"
})

local function CheckCakePrince()
    local Response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
    local Status = ""

    if string.len(Response) == 88 then
        Status = "Need Kill: " .. string.sub(Response, 39, 41)
    elseif string.len(Response) == 87 then
        Status = "Need Kill: " .. string.sub(Response, 39, 40)
    elseif string.len(Response) == 86 then
        Status = "Need Kill: " .. string.sub(Response, 39, 39)
    else
        Status = "Boss Is Spawned"
    end

    CakePrinceStatus:SetDesc(Status)
end

local EliteStatus = Tabs.S:AddParagraph({
    Title = "Elite Hunter",
    Content = "Status:"
})

local function CheckEliteHunter()
    local WorkspaceEnemies = game:GetService("Workspace").Enemies
    local Elites = {
        "Diablo",
        "Deandre",
        "Urban"
    }

    local Status = "Elite Hunter Not Spawned"
    
    for _, Elite in ipairs(Elites) do
        local Fe = ReplicatedStorage:FindFirstChild(Elite) or WorkspaceEnemies:FindFirstChild(Elite)
        if Fe then
            Status = Elite .. " Has Spawned!"
            break
        end
    end

    EliteStatus:SetDesc(Status)
end

local EliteProgressStatus = Tabs.S:AddParagraph({
    Title = "Elite Progress",
    Content = "Progress:"
})

local function CheckEliteProgress()
    local Progress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
    EliteProgressStatus:SetDesc("Elite Progress: " .. tostring(Progress))
end

local Status3 = Tabs.S:AddParagraph({
    Title = "Moon",
    Content = "MoonStatus:"
})

local MoonPhases = {
    ["http://www.roblox.com/asset/?id=9709149431"] = "Full Moon 5/5",
    ["http://www.roblox.com/asset/?id=9709149052"] = "Moon 4/5",
    ["http://www.roblox.com/asset/?id=9709143733"] = "Moon 3/5",
    ["http://www.roblox.com/asset/?id=9709150401"] = "Bad Moon 2/5",
    ["http://www.roblox.com/asset/?id=9709149680"] = "Bad Moon 1/5"
}

local function MoonCheck()
    local Lighting = game:GetService("Lighting")
    local Sky = Lighting:FindFirstChild("Sky")
    local MoonStatus = "Wait For Moon"
    if Sky and Sky.MoonTextureId then
        MoonStatus = MoonPhases[Sky.MoonTextureId] or MoonStatus
    end
    Status3:SetDesc("Moon Status: " .. MoonStatus)
end

local FrozenDimensionStatus = Tabs.S:AddParagraph({
    Title = "Frozen Dimension",
    Content = "Status:"
})

local function CheckFrozenDimension()
    local FrozenDimension = game:GetService("Workspace").Map:FindFirstChild("FrozenDimension")
    local Status = FrozenDimension and "Spawned!!!" or "Not Spawned"
    FrozenDimensionStatus:SetDesc(Status)
end

local Status5 = Tabs.S:AddParagraph({
    Title = "Mirage Island",
    Content = "MirageIsland Status:"
})
local function MirageIslandCheck()
    local MirageIsland = game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island")
    local MirageStatus = MirageIsland and "Spawned!!!" or "Not Spawned."
    Status5:SetDesc(MirageStatus)
end

local Status6 = Tabs.S:AddParagraph({
    Title = "Prehistoric Island",
    Content = "Status:"
})

local function PrehistoricIslandCheck()
    local PrehistoricIsland = game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") or game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
    local PrehistoricStatus = PrehistoricIsland and "Spawned!!!" or "Not Spawned."
    Status6:SetDesc(PrehistoricStatus)
end

local Status4 = Tabs.S:AddParagraph({
    Title = "Kitsune Island",
    Content = "Status:"
})

local function KitsuneCheck()
    local KitsuneIsland = game.Workspace.Map:FindFirstChild("KitsuneIsland")
    local KitsuneStatus = KitsuneIsland and "Spawned!!!" or "Not Spawned."
    Status4:SetDesc(KitsuneStatus)
end

local AncientOneStatus = Tabs.S:AddParagraph({
    Title = "Ancient One Status",
    Content = "Status:"
})

local function CheckAncientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You have yet to achieve greatness"
    end

    local Fragments, GearStatus, TrainingStatus = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")

    if TrainingStatus == 1 or TrainingStatus == 3 then
        return "Required Train More"
    elseif TrainingStatus == 2 or TrainingStatus == 4 or TrainingStatus == 7 then
        return "Can Buy Gear With " .. Fragments .. " Fragments"
    elseif TrainingStatus == 5 then
        return "You Are Done Your Race."
    elseif TrainingStatus == 6 then
        return "Upgrades completed: " .. GearStatus - 2 .. "/3, Need Train More"
    elseif TrainingStatus == 0 then
        return "Ready For Trial"
    elseif TrainingStatus == 8 then
        return "Remaining " .. 10 - GearStatus .. " training sessions."
    else
        return "You have yet to achieve greatness"
    end
end

local LeviathanStatus = Tabs.S:AddParagraph({
    Title = "Bribe Spy",
    Content = "Status:"
})

local function CheckLeviathanChip()
    local LeviathanInfo = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "1")

    if LeviathanInfo == 5 then
        LeviathanStatus:SetDesc("Leviathan Is Ready to Sail")
    elseif LeviathanInfo == 0 then
        LeviathanStatus:SetDesc("I Don't Know")
    else
        LeviathanStatus:SetDesc("Purchase: " .. tostring(LeviathanInfo))
    end
end

local DragonStatus = Tabs.S:AddParagraph({
    Title = "Dragon Hunter Quest",
    Content = "Status:"
})

local function CheckDragonQuest()
    local RequestData = {
        [1] = { Context = "Check" }
    }

    local Response = game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer(unpack(RequestData))
    
    if typeof(Response) == "table" then
        for _, Task in pairs(Response) do
            if Task == "Defeat 3 Venomous Assailants on Hydra Island." then
                DragonStatus:SetDesc("Defeat 3 Venomous Assailants on Hydra Island.")
            elseif Task == "Defeat 3 Hydra Enforcers on Hydra Island." then
                DragonStatus:SetDesc("Defeat 3 Hydra Enforcers on Hydra Island.")
            elseif Task == "Destroy 10 trees on Hydra Island." then
                DragonStatus:SetDesc("Destroy 10 Trees on Hydra Island.")
            else
                DragonStatus:SetDesc("No Current Task.")
            end
        end
    else
        DragonStatus:SetDesc("No task.")
    end
end

task.spawn(function()
    while task.wait(0.5) do
        local PlayerGui = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
        local MainGui = PlayerGui and PlayerGui:FindFirstChild("Main")
        if MainGui then
            AncientOneStatus:SetDesc(CheckAncientOneStatus())
            CheckCakePrince()
            CheckEliteHunter()
            CheckEliteProgress()
            CheckFrozenDimension()
            MirageIslandCheck()
            KitsuneCheck()
            MoonCheck()
            PrehistoricIslandCheck()
            CheckDragonQuest()
            CheckLeviathanChip()
        end
    end
end)
end

local hoicham = Tabs.S:AddSection("Game Function")

local function encodeJobId(jobId)
    local LetterArgs = {
        ["A"] = "Lone", ["B"] = "CAK", ["C"] = "Bucu", ["D"] = "MANO", ["E"] = "NARUTO", ["F"] = "IDK", ["G"] = "ghe",
        ["H"] = "NUNGVL", ["I"] = "NHINCL", ["J"] = "LON", ["K"] = "HUCE", ["L"] = "HUAT", ["M"] = "DIME", ["N"] = "DUMA",
        ["O"] = "CL", ["P"] = "VL", ["Q"] = "MATDAY", ["R"] = "ADU", ["S"] = "CUNGMANH", ["T"] = "ALIME", ["U"] = "QUADU",
        ["V"] = "DELL", ["W"] = "MANH", ["X"] = "VAYAK", ["Y"] = "LOVE", ["Z"] = "YEU",
        ["a"] = "GKE", ["b"] = "OK", ["c"] = "chien", ["d"] = "uoc", ["e"] = "chiuluon", ["f"] = "vcl", ["g"] = "fbi",
        ["h"] = "clm", ["i"] = "dmm", ["j"] = "cac", ["k"] = "hihi", ["l"] = "ngaivl", ["m"] = "nhincmm", ["n"] = "dungma",
        ["o"] = "huhu", ["p"] = "chiuroi", ["q"] = "thaidog", ["r"] = "ngulol", ["s"] = "chetdi", ["t"] = "gaixinh",
        ["u"] = "united", ["v"] = "xxx", ["w"] = "hiepdam", ["x"] = "mupz", ["y"] = "nunglon", ["z"] = "ranuoc",
        ["-"] = "abcvvco"
    }
    local encoded = "SkullHub_"
    for letter in jobId:gmatch(".") do
        encoded = encoded .. (LetterArgs[letter] or letter) .. "f"
    end
    return encoded:sub(1, -2)
end

local function decodeJobId(encodedJobId)
    local DecodeArgs = {
        ["Lone"] = "A", ["CAK"] = "B", ["Bucu"] = "C", ["MANO"] = "D", ["NARUTO"] = "E", ["IDK"] = "F", ["ghe"] = "G",
        ["NUNGVL"] = "H", ["NHINCL"] = "I", ["LON"] = "J", ["HUCE"] = "K", ["HUAT"] = "L", ["DIME"] = "M", ["DUMA"] = "N",
        ["CL"] = "O", ["VL"] = "P", ["MATDAY"] = "Q", ["ADU"] = "R", ["CUNGMANH"] = "S", ["ALIME"] = "T", ["QUADU"] = "U",
        ["DELL"] = "V", ["MANH"] = "W", ["VAYAK"] = "X", ["LOVE"] = "Y", ["YEU"] = "Z",
        ["GKE"] = "a", ["OK"] = "b", ["chien"] = "c", ["uoc"] = "d", ["chiuluon"] = "e", ["vcl"] = "f", ["fbi"] = "g",
        ["clm"] = "h", ["dmm"] = "i", ["cac"] = "j", ["hihi"] = "k", ["ngaivl"] = "l", ["nhincmm"] = "m", ["dungma"] = "n",
        ["huhu"] = "o", ["chiuroi"] = "p", ["thaidog"] = "q", ["ngulol"] = "r", ["chetdi"] = "s", ["gaixinh"] = "t",
        ["united"] = "u", ["xxx"] = "v", ["hiepdam"] = "w", ["mupz"] = "x", ["nunglon"] = "y", ["ranuoc"] = "z",
        ["abcvvco"] = "-"
    }
    local decoded = ""
    for word in encodedJobId:gmatch("[^%f]+") do
        decoded = decoded .. (DecodeArgs[word] or word)
    end
    return decoded
end
local function GetSmallestServer()
    local Url = "https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local Response
    if syn and syn.request then
        Response = syn.request({Url = Url, Method = "GET"})
    elseif http_request then
        Response = http_request({Url = Url, Method = "GET"})
    elseif request then
        Response = request({Url = Url, Method = "GET"})
    elseif HttpGet then
        Response = {Body = HttpGet(Url)}
    else
        error("No valid HTTP request method found.")
    end
    local Data = HttpService:JSONDecode(Response.Body)
    for _, Server in pairs(Data.data) do
        if Server.playing <= getgenv().PlayerAmount then
            return Server.id
        end
    end
    return nil
end
local function TeleportToSmallestServer()
    local ServerId = GetSmallestServer()
    if ServerId then
        TeleportService:TeleportToPlaceInstance(PlaceId, ServerId, Players.LocalPlayer)
    else
        warn("No available server found with less than " .. getgenv().PlayerAmount .. " players.")
    end
end
local SliderTP = Tabs.S:AddSlider("SliderTP", {
    Title = "Player Amount",
    Description = "Select player limit for teleport",
    Default = 6,
    Min = 1,
    Max = 12,
    Rounding = 0,
    Callback = function(Value)
        getgenv().PlayerAmount = math.floor(Value)
    end
})
SliderTP:OnChanged(function(Value)
    getgenv().PlayerAmount = math.floor(Value)
end)
local ButtonTP = Tabs.S:AddButton({
    Title = "Teleport",
    Description = "Instant Tp",
    Callback = function()
        wait('2')
        TeleportToSmallestServer()
    end
})
local CopyJobIdButton = Tabs.S:AddButton({
    Title = "Copy Server Job ID",
    Description = "Copy current server Job ID to clipboard",
    Callback = function()
        local jobId = game.JobId
        if jobId and jobId ~= "" then
            setclipboard(jobId)
            Fluent:Notify({
                Title = "Romis Hub Notification",
                Content = "Server Job ID Copied",
                SubContent = jobId,
                Duration = 3
            })
        else
            Fluent:Notify({
                Title = "Romis Hub Notification",
                Content = "Failed to Copy Job ID",
                SubContent = "No valid Job ID found.",
                Duration = 3
            })
        end
    end
})
local CopySkullHubIdButton = Tabs.S:AddButton({
    Title = "Copy Romis Hub ID",
    Description = "Copy server Romis Hub Job ID",
    Callback = function()
        local jobId = game.JobId
        if jobId and jobId ~= "" then
            local encodedJobId = encodeJobId(jobId)
            setclipboard(encodedJobId)
            Fluent:Notify({
                Title = "Romis Hub Notification",
                Content = "Server Job ID Copied",
                SubContent = encodedJobId,
                Duration = 3
            })
        else
            Fluent:Notify({
                Title = "Romis Hub Notification",
                Content = "Failed to Copy Job ID",
                SubContent = "No valid Job ID found.",
                Duration = 3
            })
        end
    end
})
local ServerCodeInput = Tabs.S:AddInput("ServerCodeInput", {
    Title = "Input Server Code",
    Default = "",
    Placeholder = "Input server code...",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        getgenv().ServerCode = Value
        Fluent:Notify({
            Title = "Romis Hub Notification",
            Content = "Server Code Set",
            SubContent = "Code: " .. getgenv().ServerCode,
            Duration = 3
        })
    end
})

local JoinServerButton = Tabs.S:AddButton({
    Title = "Join Server",
    Description = "Join using the set server code",
    Callback = function()
        if getgenv().ServerCode and getgenv().ServerCode ~= "" then
            local jobId = getgenv().ServerCode
            if jobId:find("^SkullHub_") then
                jobId = decodeJobId(jobId:gsub("SkullHub_", ""))
            end
            TeleportService:TeleportToPlaceInstance(game.PlaceId, jobId, Players.LocalPlayer)
        else
            Fluent:Notify({
                Title = "Romis Hub Notification",
                Content = "Invalid Server Code",
                SubContent = "Please enter a valid server code.",
                Duration = 3
            })
        end
    end
})

local ButtonRejoin =
    Tabs.S:AddButton(
    {
        Title = "Rejoin Server",
        Description = "Instant Rejoin",
        Callback = function()
            local TeleportService = game:GetService("TeleportService")
            local LocalPlayer = Players.LocalPlayer
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    }
)

local SpamJoinToggle = Tabs.S:AddToggle("SpamJoinToggle", {
    Title = "Spam Join Server",
    Default = false
})
SpamJoinToggle:OnChanged(function(Value)
    getgenv().SpamJoin = Value
    Fluent:Notify({
        Title = "Romis Hub Notification",
        Content = Value and "Spam Join Enabled" or "Spam Join Disabled",
        Duration = 1
    })    
    if Value then
        task.spawn(function()
            while getgenv().SpamJoin do
                if getgenv().ServerCode and getgenv().ServerCode ~= "" then
                    local jobId = getgenv().ServerCode
                    if jobId:find("^SkullHub_") then
                        jobId = decodeJobId(jobId:gsub("SkullHub_", ""))
                    end
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, jobId, Players.LocalPlayer)
                else
                    Fluent:Notify({
                        Title = "Romis Hub Notification",
                        Content = "No Server Code Found",
                        SubContent = "Please set a server code first.",
                        Duration = 3
                    })
                    break
                end
                task.wait(1)
            end
        end)
    end
end)

local Lc = Tabs.LC:AddSection("Tab Kaitun Cap")

function CapTureShow()
print('Capture Items Show')
local LocalPlayer = game:GetService('Players').LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild('PlayerGui')
local MainScreen = PlayerGui:WaitForChild('Main')
local AwakeningToggler = MainScreen:WaitForChild('AwakeningToggler')
local HttpService = game:GetService('HttpService')
local PostionXCount = 0
local ItemRange = 0
local PositionYCount = 0
local PostionXCountFruit = 800
local ItemRangeFruit = 0
local ItemMaxFruit = 2
local PositionYCountFruit = 113
local RequestGetInvertory
local __Config = {
    ['Rarity'] = {
        __Mythical = _G.MythicalCut,
        __Legendary = _G.LegendaryCut,
        __Rare = _G.RareCut,
        __Uncommon = _G.UncommonCut,
        __Common = _G.CommonCut
    },
    ['MaxLength'] = _G.MaxCountItem,
    ['ShowMastery'] = _G.ShowMasteryCut,
    ['LevelShowMastery'] = _G.LevelMasteryCut,
}
local MaleeList = {}
local ItemMax = __Config['MaxLength']
local Requirement = {
    ['Mythical'] = {},
    ['Legendary'] = {},
    ['Rare'] = {},
    ['Uncommon'] = {},
    ['Common'] = {}
}
local ViewportSize = workspace.CurrentCamera.ViewportSize
local IconModule = require(game.Players.LocalPlayer.PlayerGui.Main.UIController.Inventory.Spritesheets)

if game.CoreGui:FindFirstChild('CreateItem') then
    game.CoreGui:FindFirstChild('CreateItem'):Destroy()
end
function OffsetXToSacle(offset)
    return offset / ViewportSize.X
end
function OffsetYToSacle(offset)
    return offset / ViewportSize.Y
end
function SacleXToOffeset(offset)
    return offset / ViewportSize.X
end
function SacleYToOffeset(offset)
    return offset / ViewportSize.Y
end
function queryData(ItemName)
    local v1 = ItemName:gsub("'", ""):gsub(":", "") .. "1.png"
    local v2 = ItemName:gsub("'", ""):gsub(":", "") .. "2.png"
    for i, _ in pairs(IconModule) do
        for v, __ in pairs(_) do
            if v == v1 then
                local j = __
                local q = i
                return {
                    ['Name'] = q,
                    ['Value'] = __
                }
            end
        end
    end
end
function formatNumber(nb)
    local i, k, j = tostring(nb):match("(%-?%d?)(%d*)(%.?.*)")
    return i .. k:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. j
end
local CreateItemScreen = Instance.new("ScreenGui")
local CreateItems = Instance.new('Frame')
local CreateItemFruit = Instance.new('Frame')

CreateItemScreen.Name = 'CreateItem'
CreateItemScreen.Parent = game.CoreGui

CreateItems.Name = HttpService:GenerateGUID()
CreateItems.Parent = CreateItemScreen
CreateItems.Size = UDim2.new(1, 0, 1, 0)
CreateItems.BackgroundTransparency = 1.000

CreateItemFruit.Name = HttpService:GenerateGUID()
CreateItemFruit.Parent = CreateItemScreen
CreateItemFruit.Size = UDim2.new(1, 0, 1, 0)
CreateItemFruit.BackgroundTransparency = 1.000
local Fragments = Instance.new("TextLabel")
Fragments.Name = HttpService:GenerateGUID()
Fragments.Parent = CreateItemScreen
Fragments.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fragments.BackgroundTransparency = 1.000
Fragments.Position = getgenv().MobileMode and UDim2.new(0, 4, 0.7, 0) or UDim2.new(0, 6, 0.65, 0)
Fragments.Size = getgenv().MobileMode and UDim2.new(0.1, 0, 0.04, 5) or UDim2.new(0.15, 0, 0.06, 5)
Fragments.ZIndex = -9
Fragments.Font = Enum.Font.SourceSansBold
Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
Fragments.TextColor3 = Color3.fromRGB(177, 121, 255)
Fragments.TextScaled = true
Fragments.TextSize = getgenv().MobileMode and 24 or 36
Fragments.TextStrokeTransparency = 0.000
Fragments.TextWrapped = true
Fragments.TextXAlignment = Enum.TextXAlignment.Left
game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Position = getgenv().MobileMode and UDim2.new(0, 6, 0.65, 0) or UDim2.new(0, 10, 0.6, 0)
local ClearButton = Instance.new("TextButton")
ClearButton.Name = HttpService:GenerateGUID()
ClearButton.Parent = CreateItemScreen
ClearButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
ClearButton.Position = getgenv().MobileMode and UDim2.new(0.85, 0, 0.05, 0) or UDim2.new(0.9, 0, 0.05, 0)
ClearButton.Size = getgenv().MobileMode and UDim2.new(0.1, 0, 0.05, 0) or UDim2.new(0.08, 0, 0.06, 0)
ClearButton.Font = Enum.Font.SourceSansBold
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextScaled = true
ClearButton.TextSize = getgenv().MobileMode and 18 or 24
ClearButton.ZIndex = 10
ClearButton.MouseButton1Click:Connect(function()
    if game.CoreGui:FindFirstChild('CreateItem') then
        game.CoreGui:FindFirstChild('CreateItem'):Destroy()
    end
end)
function CreateItemFruit(ItemType, ItemNames, ItemIcon, ImageRectSize, ItemRectOffset, ItemBackgroundColor, ExtraData, Data)
    local _1 = Instance.new("Frame")
    local ItemLine2 = Instance.new("TextLabel")
    local ItemName = Instance.new("TextLabel")
    local Background = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local Icon = Instance.new("ImageLabel")
    
    if ItemRangeFruit >= ItemMaxFruit then
        PositionYCountFruit = PositionYCountFruit + (getgenv().MobileMode and 61 or 105)
        ItemRangeFruit = 0
        PostionXCountFruit = getgenv().MobileMode and 400 or 800
    end
    
    _1.Name = HttpService:GenerateGUID()
    _1.Parent = CreateItems
    _1.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    _1.BackgroundTransparency = 1.000
    _1.LayoutOrder = 1
    _1.Size = getgenv().MobileMode and UDim2.new(0, 60, 0, 60) or UDim2.new(0, 100, 0, 100)
    _1.Position = UDim2.new(OffsetXToSacle(PostionXCountFruit), 0, OffsetYToSacle(PositionYCountFruit), 0)
    PostionXCountFruit = PostionXCountFruit + (getgenv().MobileMode and 61 or 101)
    ItemRangeFruit = ItemRangeFruit + 1
    
    ItemLine2.Name = HttpService:GenerateGUID()
    ItemLine2.Parent = _1
    ItemLine2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ItemLine2.BackgroundTransparency = 1.000
    ItemLine2.Position = UDim2.new(0.08, 0, 0.02, 0)
    ItemLine2.Size = getgenv().MobileMode and UDim2.new(0.7, 0, 0.2, 0) or UDim2.new(0.7, 0, 0.15, 0)
    ItemLine2.ZIndex = 5
    ItemLine2.Font = Enum.Font.SourceSansItalic
    ItemLine2.Text = ItemType
    ItemLine2.TextColor3 = Color3.fromRGB(255, 255, 255)
    ItemLine2.TextScaled = true
    ItemLine2.TextSize = getgenv().MobileMode and 10 or 14
    ItemLine2.TextStrokeTransparency = 0.600
    ItemLine2.TextWrapped = true
    ItemLine2.TextXAlignment = Enum.TextXAlignment.Left
    ItemLine2.TextYAlignment = Enum.TextYAlignment.Top

    ItemName.Name = HttpService:GenerateGUID()
    ItemName.Parent = _1
    ItemName.AnchorPoint = Vector2.new(1, 1)
    ItemName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ItemName.BackgroundTransparency = 1.000
    ItemName.Position = UDim2.new(0.96, 0, 0.98, 0)
    ItemName.Size = getgenv().MobileMode and UDim2.new(0.6, 0, 0.4, 0) or UDim2.new(0.6, 0, 0.32, 0)
    ItemName.ZIndex = 5
    ItemName.Font = Enum.Font.SourceSansSemibold
    ItemName.Text = ItemNames
    ItemName.TextColor3 = Color3.fromRGB(255, 255, 255)
    ItemName.TextScaled = true
    ItemName.TextSize = getgenv().MobileMode and 10 or 14
    ItemName.TextStrokeTransparency = 0.600
    ItemName.TextWrapped = true
    ItemName.TextXAlignment = Enum.TextXAlignment.Right
    ItemName.TextYAlignment = Enum.TextYAlignment.Bottom

    Background.Name = HttpService:GenerateGUID()
    Background.Parent = _1
    Background.BackgroundColor3 = ItemBackgroundColor
    Background.BorderSizePixel = 0
    Background.Size = UDim2.new(1, 0, 1, 0)
    Background.ZIndex = 3
    Background.Image = "http://www.roblox.com/asset/?id=9944431153"
    Background.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Background.ImageTransparency = 1.000

    UICorner.CornerRadius = UDim.new(0.07, 0)
    UICorner.Parent = Background

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 172, 172)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(225, 225, 225))}
    UIGradient.Rotation = 90
    UIGradient.Parent = Background

    Icon.Name = HttpService:GenerateGUID()
    Icon.Parent = _1
    Icon.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon.BackgroundTransparency = 1.000
    Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
    Icon.Size = getgenv().MobileMode and UDim2.new(0.9, 0, 0.9, 0) or UDim2.new(0.9, 0, 0.9, 0)
    Icon.Visible = true
    Icon.ZIndex = 4
    Icon.Image = ItemIcon
    Icon.ScaleType = Enum.ScaleType.Fit
    Icon.ImageRectSize = ItemRectOffset
    Icon.ImageRectOffset = ImageRectSize
    if ExtraData then
        local ItemLine1 = Instance.new("TextLabel")
        ItemLine1.Name = HttpService:GenerateGUID()
        ItemLine1.Parent = _1
        ItemLine1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ItemLine1.BackgroundTransparency = 1.000
        ItemLine1.Position = UDim2.new(0.08, 0, 0.14, 0)
        ItemLine1.Size = getgenv().MobileMode and UDim2.new(0.7, 0, 0.2, 0) or UDim2.new(0.7, 0, 0.15, 0)
        ItemLine1.Visible = true
        ItemLine1.ZIndex = 5
        ItemLine1.Font = Enum.Font.SourceSansSemibold
        ItemLine1.Text = Data
        ItemLine1.TextColor3 = Color3.fromRGB(255, 255, 255)
        ItemLine1.TextScaled = true
        ItemLine1.TextSize = getgenv().MobileMode and 10 or 14
        ItemLine1.TextStrokeTransparency = 0.600
        ItemLine1.TextWrapped = true
        ItemLine1.TextXAlignment = Enum.TextXAlignment.Left
        ItemLine1.TextYAlignment = Enum.TextYAlignment.Top
    end
end
function CreateItem(ItemType, ItemNames, ItemIcon, ImageRectSize, ItemRectOffset, ItemBackgroundColor, ExtraData, Data)
    local _1 = Instance.new("Frame")
    local ItemLine2 = Instance.new("TextLabel")
    local ItemName = Instance.new("TextLabel")
    local Background = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local Icon = Instance.new("ImageLabel")
    
    if ItemRange >= ItemMax then
        PositionYCount = PositionYCount + (getgenv().MobileMode and 61 or 101)
        ItemRange = 0
        PostionXCount = 0
    end
    
    _1.Name = HttpService:GenerateGUID()
    _1.Parent = CreateItems
    _1.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    _1.BackgroundTransparency = 1.000
    _1.LayoutOrder = 1
    _1.Size = getgenv().MobileMode and UDim2.new(0, 60, 0, 60) or UDim2.new(0, 100, 0, 100)
    _1.Position = UDim2.new(0, PostionXCount, 0, PositionYCount)
    PostionXCount = PostionXCount + (getgenv().MobileMode and 61 or 101)
    ItemRange = ItemRange + 1
    
    ItemLine2.Name = HttpService:GenerateGUID()
    ItemLine2.Parent = _1
    ItemLine2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ItemLine2.BackgroundTransparency = 1.000
    ItemLine2.Position = UDim2.new(0.08, 0, 0.02, 0)
    ItemLine2.Size = getgenv().MobileMode and UDim2.new(0.7, 0, 0.2, 0) or UDim2.new(0.7, 0, 0.15, 0)
    ItemLine2.ZIndex = 5
    ItemLine2.Font = Enum.Font.SourceSansItalic
    ItemLine2.Text = ItemType
    ItemLine2.TextColor3 = Color3.fromRGB(255, 255, 255)
    ItemLine2.TextScaled = true
    ItemLine2.TextSize = getgenv().MobileMode and 10 or 14
    ItemLine2.TextStrokeTransparency = 0.600
    ItemLine2.TextWrapped = true
    ItemLine2.TextXAlignment = Enum.TextXAlignment.Left
    ItemLine2.TextYAlignment = Enum.TextYAlignment.Top

    ItemName.Name = HttpService:GenerateGUID()
    ItemName.Parent = _1
    ItemName.AnchorPoint = Vector2.new(1, 1)
    ItemName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ItemName.BackgroundTransparency = 1.000
    ItemName.Position = UDim2.new(0.96, 0, 0.98, 0)
    ItemName.Size = getgenv().MobileMode and UDim2.new(0.6, 0, 0.4, 0) or UDim2.new(0.6, 0, 0.32, 0)
    ItemName.ZIndex = 5
    ItemName.Font = Enum.Font.SourceSansSemibold
    ItemName.Text = ItemNames
    ItemName.TextColor3 = Color3.fromRGB(255, 255, 255)
    ItemName.TextScaled = true
    ItemName.TextSize = getgenv().MobileMode and 10 or 14
    ItemName.TextStrokeTransparency = 0.600
    ItemName.TextWrapped = true
    ItemName.TextXAlignment = Enum.TextXAlignment.Right
    ItemName.TextYAlignment = Enum.TextYAlignment.Bottom

    Background.Name = HttpService:GenerateGUID()
    Background.Parent = _1
    Background.BackgroundColor3 = ItemBackgroundColor
    Background.BorderSizePixel = 0
    Background.Size = UDim2.new(1, 0, 1, 0)
    Background.ZIndex = 3
    Background.Image = "http://www.roblox.com/asset/?id=9944431153"
    Background.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Background.ImageTransparency = 1.000
    UICorner.CornerRadius = UDim.new(0.07, 0)
    UICorner.Parent = Background
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 172, 172)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(225, 225, 225))}
    UIGradient.Rotation = 90
    UIGradient.Parent = Background
    Icon.Name = HttpService:GenerateGUID()
    Icon.Parent = _1
    Icon.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon.BackgroundTransparency = 1.000
    Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
    Icon.Size = getgenv().MobileMode and UDim2.new(0.9, 0, 0.9, 0) or UDim2.new(0.9, 0, 0.9, 0)
    Icon.Visible = true
    Icon.ZIndex = 4
    Icon.Image = ItemIcon
    Icon.ScaleType = Enum.ScaleType.Fit
    Icon.ImageRectSize = ItemRectOffset
    Icon.ImageRectOffset = ImageRectSize
    if ExtraData then
        local ItemLine1 = Instance.new("TextLabel")
        ItemLine1.Name = HttpService:GenerateGUID()
        ItemLine1.Parent = _1
        ItemLine1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ItemLine1.BackgroundTransparency = 1.000
        ItemLine1.Position = UDim2.new(0.08, 0, 0.14, 0)
        ItemLine1.Size = getgenv().MobileMode and UDim2.new(0.7, 0, 0.2, 0) or UDim2.new(0.7, 0, 0.15, 0)
        ItemLine1.Visible = true
        ItemLine1.ZIndex = 5
        ItemLine1.Font = Enum.Font.SourceSansSemibold
        ItemLine1.Text = Data
        ItemLine1.TextColor3 = Color3.fromRGB(255, 255, 255)
        ItemLine1.TextScaled = true
        ItemLine1.TextSize = getgenv().MobileMode and 10 or 14
        ItemLine1.TextStrokeTransparency = 0.600
        ItemLine1.TextWrapped = true
        ItemLine1.TextXAlignment = Enum.TextXAlignment.Left
        ItemLine1.TextYAlignment = Enum.TextYAlignment.Top
    end
end
RequestGetInvertory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
function getBackgroundColor(Rarity)
    if Rarity == 0 then
        return Color3.fromRGB(179, 179, 179)
    elseif Rarity == 1 then
        return Color3.fromRGB(92, 140, 211)
    elseif Rarity == 2 then
        return Color3.fromRGB(140, 82, 255)
    elseif Rarity == 3 then
        return Color3.fromRGB(213, 43, 228)
    elseif Rarity == 4 then
        return Color3.fromRGB(238, 47, 50)
    end
end
for _, __ in pairs(RequestGetInvertory) do
    if __['Rarity'] == 4 then
        if __Config['Rarity']['__Mythical'] then
            table.insert(Requirement['Mythical'], __)
        end
    end
    if __['Rarity'] == 3 then
        if __Config['Rarity']['__Legendary'] then
            table.insert(Requirement['Legendary'], __)
        end
    end
    if __['Rarity'] == 2 then
        if __Config['Rarity']['__Rare'] then
            table.insert(Requirement['Rare'], __)
        end
    end
    if __['Rarity'] == 1 then
        if __Config['Rarity']['__Uncommon'] then
            table.insert(Requirement['Uncommon'], __)
        end
    end
    if __['Rarity'] == 0 then
        if __Config['Rarity']['__Common'] then
            table.insert(Requirement['Common'], __)
        end
    end
end
function SortItemSword(itemType)
    for i, __ in pairs(Requirement['Mythical']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "Mastery - " .. tostring(__['Mastery']))
            else
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
            end
        end
    end
    for i, __ in pairs(Requirement['Legendary']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "Mastery - " .. tostring(__['Mastery']))
            else
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
            end
        end
    end
    for i, __ in pairs(Requirement['Rare']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "Mastery - " .. tostring(__['Mastery']))
            else
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
            end
        end
    end
    for i, __ in pairs(Requirement['Uncommon']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "Mastery - " .. tostring(__['Mastery']))
            else
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
            end
        end
    end
    for i, __ in pairs(Requirement['Common']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "Mastery - " .. tostring(__['Mastery']))
            else
                CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
            end
        end
    end
    ItemRange = ItemMax
end
SortItemSword('Sword')
function SortItemBloxFruit(itemType)
    for i, __ in pairs(Requirement['Mythical']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    for i, __ in pairs(Requirement['Legendary']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    for i, __ in pairs(Requirement['Rare']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    for i, __ in pairs(Requirement['Uncommon']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    for i, __ in pairs(Requirement['Common']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    ItemRange = ItemMax
end
SortItemBloxFruit("Blox Fruit")
function SortItemWear(itemType)
    for i, __ in pairs(Requirement['Mythical']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    for i, __ in pairs(Requirement['Legendary']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    for i, __ in pairs(Requirement['Rare']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    for i, __ in pairs(Requirement['Uncommon']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    for i, __ in pairs(Requirement['Common']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    ItemRange = ItemMax
end
function SortItemGun(itemType)
    for i, __ in pairs(Requirement['Mythical']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    for i, __ in pairs(Requirement['Legendary']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    for i, __ in pairs(Requirement['Rare']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    for i, __ in pairs(Requirement['Uncommon']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    for i, __ in pairs(Requirement['Common']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false, "")
        end
    end
    ItemRange = ItemMax
end
SortItemGun('Gun')
SortItemWear('Wear')
function SortItemMaterial(itemType)
    for i, __ in pairs(Requirement['Mythical']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    for i, __ in pairs(Requirement['Legendary']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    for i, __ in pairs(Requirement['Rare']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    for i, __ in pairs(Requirement['Uncommon']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    for i, __ in pairs(Requirement['Common']) do
        if __['Type'] == itemType then
            local IconData = queryData(__['Name'])
            local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
            local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
            CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
        end
    end
    ItemRange = ItemMax
end
SortItemMaterial('Material')
local MaleeY = getgenv().MobileMode and 0.1 or 0.0922693312
function CreateItemMalee(ImageId)
    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Parent = CreateItemScreen
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(getgenv().MobileMode and 0.9 or 0.915300548, 0, MaleeY, 0)
    ImageLabel.Size = getgenv().MobileMode and UDim2.new(0, 60, 0, 60) or UDim2.new(0, 100, 0, 100)
    ImageLabel.Image = ImageId
    MaleeY = MaleeY + (getgenv().MobileMode and OffsetYToSacle(61) or OffsetYToSacle(102))
end
RequestGodhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)
if RequestGodhuman == 1 then
    table.insert(MaleeList, "http://www.roblox.com/asset/?id=10338473987")
end
RequestSuperhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true)
if RequestSuperhuman == 1 then
    table.insert(MaleeList, "http://www.roblox.com/asset/?id=4831781711")
end
RequestSharkMan = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
if RequestSharkMan == 1 then
    table.insert(MaleeList, "http://www.roblox.com/asset/?id=6525157144")
end
RequestDeathStep = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true)
if RequestDeathStep == 1 then
    table.insert(MaleeList, "http://www.roblox.com/asset/?id=6085350468")
end
RequestElectricClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
if RequestElectricClaw == 1 then
    table.insert(MaleeList, "http://www.roblox.com/asset/?id=6866994470")
end
RequestDragonTalon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
if RequestDragonTalon == 1 then
    table.insert(MaleeList, "http://www.roblox.com/asset/?id=7831677967")
end
RequestSanguineArt = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
if RequestSanguineArt == 1 then
    table.insert(MaleeList, "http://www.roblox.com/asset/?id=135442068517596")
end
for i, v in pairs(MaleeList) do
    CreateItemMalee(v)
end
for i, v in pairs(AwakeningToggler:GetChildren()) do
    if v:IsA('Frame') or v:IsA('TextLabel') then
        v.Visible = false
    end
end

AwakeningToggler.Visible = true
wait(4 * math.random(0.5, 2.5))
local AwakeningTogglerMain = AwakeningToggler:Clone()
AwakeningTogglerMain.Name = HttpService:GenerateGUID()
AwakeningTogglerMain.Parent = CreateItemScreen
AwakeningTogglerMain.Position = getgenv().MobileMode and UDim2.new(0.5, 0, 0.85, 0) or UDim2.new(0.5, 0, 0.8, 2)
AwakeningTogglerMain.Size = getgenv().MobileMode and UDim2.new(0.8, 0, 0.2, 0) or UDim2.new(1, 0, 0.3, 0)
for i, v in pairs(AwakeningTogglerMain:GetDescendants()) do
    v.Name = HttpService:GenerateGUID()
    if v:IsA('Frame') or v:IsA('TextLabel') then
        v.Visible = true
        if getgenv().MobileMode and v:IsA('TextLabel') then
            v.TextSize = v.TextSize * 0.7
        end
    end
end
AwakeningToggler.Visible = false
for i, v in pairs(AwakeningToggler:GetChildren()) do
    if v:IsA('Frame') or v:IsA('TextLabel') then
        v.Visible = true
    end
end
end

local KaitunCapDropdown =
    Tabs.LC:AddDropdown(
    "KaitunCapDropdown",
    {
        Title = "Select Mode Cap",
        Values = {"Mobile", "Pc"},
        Multi = false,
        Default = 1
    }
)
KaitunCapDropdown:OnChanged(
    function(Value)
        getgenv().KaitunCapMode = Value
    end
)

local KtCap =
    Tabs.LC:AddButton(
    {
        Title = "Kaitun Capture",
        Description = "Instant Show Items",
        Callback = function()
            CapTureShow()
        end
    }
)

local Lc = Tabs.LC:AddSection("Tab Kaitun Cap Settings")

local TogMCS = Tabs.LC:AddToggle("TogMCS", {Title = "Mythical Show", Default = true})
TogMCS:OnChanged(
    function(Value)
        _G.MythicalCut = Value
    end
)

local TogLCS = Tabs.LC:AddToggle("TogLCS", {Title = "Legendary Show", Default = true})
TogLCS:OnChanged(
    function(Value)
        _G.LegendaryCut = Value
    end
)

local TogRCS = Tabs.LC:AddToggle("TogRCS", {Title = "Rare Show", Default = true})
TogRCS:OnChanged(
    function(Value)
        _G.RareCut = Value
    end
)

local TogUCS = Tabs.LC:AddToggle("TogUCS", {Title = "Uncommon Show", Default = false})
TogUCS:OnChanged(
    function(Value)
        _G.UncommonCut = Value
    end
)

local TogCCS = Tabs.LC:AddToggle("TogCCS", {Title = "Common Show", Default = false})
TogCCS:OnChanged(
    function(Value)
        _G.CommonCut = Value
    end
)

local TogMACS = Tabs.LC:AddToggle("TogMACS", {Title = "Mastery Show", Default = true})
TogMACS:OnChanged(
    function(Value)
        _G.ShowMasteryCut = Value
    end
)

local CISG =
    Tabs.LC:AddSlider(
    "CISG",
    {
        Title = "Matery Level",
        Description = "Mastery Level To Show",
        Default = 300,
        Min = 1,
        Max = 600,
        Rounding = 0,
        Callback = function(Value)
            _G.LevelMasteryCut = math.floor(Value)
        end
    }
)
CISG:OnChanged(
    function(Value)
        _G.LevelMasteryCut = math.floor(Value)
    end
)

local CIS =
    Tabs.LC:AddSlider(
    "CIS",
    {
        Title = "Count Items Show",
        Description = "Count Items",
        Default = 10,
        Min = 1,
        Max = 50,
        Rounding = 0,
        Callback = function(Value)
            _G.MaxCountItem = math.floor(Value)
        end
    }
)
CIS:OnChanged(
    function(Value)
        _G.MaxCountItem = math.floor(Value)
    end
)

local PT = Tabs.LC:AddSection("Player Protect")

local TogNPT = Tabs.LC:AddToggle("TogNPT", {Title = "Protect Name", Default = false})
TogNPT:OnChanged(
    function(Value)
        getgenv().NameProtect = Value
    end
)

task.spawn(function()
    local function MainProtector()
        if not getgenv().NameProtect then return end
        
        local AllPlayers = {}
        for _, Player in pairs(Players:GetPlayers()) do
            table.insert(AllPlayers, Player.Name)
            table.insert(AllPlayers, Player.DisplayName)
        end
        
        local function IsPlayerName(Text)
            for _, PlayerName in pairs(AllPlayers) do
                if Text == PlayerName then return true end
            end
            return false
        end
        
        for _, Gui in pairs(CoreGui:GetDescendants()) do
            if Gui:IsA("TextLabel") then
                if IsPlayerName(Gui.Text) then
                    if not ProtectedLabels[Gui] then
                        ProtectedLabels[Gui] = Gui.Text
                    end
                    Gui.Text = PROTECTED_NAME
                    
                    if not MonitoredLabels[Gui] then
                        MonitoredLabels[Gui] = true
                        
                        pcall(function()
                            Gui:GetPropertyChangedSignal("Text"):Connect(function()
                                if not getgenv().NameProtect then return end
                                if Gui.Text ~= PROTECTED_NAME and (IsPlayerName(Gui.Text) or IsPlayerName(ProtectedLabels[Gui] or "")) then
                                    Gui.Text = PROTECTED_NAME
                                end
                            end)
                        end)
                        
                        local Events = {"MouseButton1Click", "MouseButton1Down", "MouseButton1Up", 
                                       "MouseButton2Click", "MouseButton2Down", "MouseButton2Up",
                                       "MouseEnter", "MouseLeave", "InputBegan", "InputEnded",
                                       "Activated", "TouchTap"}
                        
                        for _, EventName in pairs(Events) do
                            pcall(function()
                                if Gui[EventName] then
                                    Gui[EventName]:Connect(function()
                                        if not getgenv().NameProtect then return end
                                        task.wait()
                                        if IsPlayerName(ProtectedLabels[Gui] or "") or IsPlayerName(Gui.Text) then
                                            Gui.Text = PROTECTED_NAME
                                        end
                                    end)
                                end
                            end)
                        end
                        
                        local Connection
                        Connection = RunService.Heartbeat:Connect(function()
                            if not getgenv().NameProtect then
                                if ProtectedLabels[Gui] then
                                    Gui.Text = ProtectedLabels[Gui]
                                end
                                return
                            end
                            
                            if not Gui.Parent then
                                Connection:Disconnect()
                                ProtectedLabels[Gui] = nil
                                MonitoredLabels[Gui] = nil
                                return
                            end
                            
                            if IsPlayerName(Gui.Text) or (ProtectedLabels[Gui] and IsPlayerName(ProtectedLabels[Gui])) then
                                if Gui.Text ~= PROTECTED_NAME then
                                    Gui.Text = PROTECTED_NAME
                                end
                            end
                        end)
                    end
                end
            end
        end
    end
    
    MainProtector()
    
    Players.PlayerAdded:Connect(function()
        if not getgenv().NameProtect then return end
        task.wait(0.5)
        MainProtector()
    end)
    
    Players.PlayerRemoving:Connect(function()
        if not getgenv().NameProtect then return end
        MainProtector()
    end)
    
    CoreGui.DescendantAdded:Connect(function(Object)
        if not getgenv().NameProtect then return end
        if Object:IsA("TextLabel") then
            task.wait(0.1)
            MainProtector()
        end
    end)
    
    while true do
        task.wait(3)
        if getgenv().NameProtect then
            MainProtector()
        end
    end
end)

local SettingFarm = Tabs.Setting:AddSection("Tab Settings Other")

Tabs.Setting:AddButton({
        Title = "Stop Tween",
        Description = "Instant Stop Tween",
        Callback = function()
            StopTween()
        end
    })

Tabs.Setting:AddButton({
    Title = "FPS Boost",
    Description = "Reduce Lag",
    Callback = function()
        Window:Dialog({
            Title = "Boost You FPS",
            Content = "Reduce Lag For Weak Device",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        cailon()
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled.")
                    end
                }
            }
        })
    end
})
local ToggleWhite = Tabs.Setting:AddToggle("ToggleWhite", {Title = "WhiteScreen", Default = false })
    ToggleWhite:OnChanged(function(Value)
       getgenv().WhiteScreen = Value
       if getgenv().WhiteScreen then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(true)
       end
end)

local FPSAmount = Tabs.Setting:AddSlider("FPSAmount", {
    Title = "FPS Slider",
    Description = "FPS Lock Slider",
    Default = 120,
    Min = 1,
    Max = 240,
    Rounding = 0,
    Callback = function(Value)
        getgenv().FPSAmount = math.floor(Value)
    end
}) 
FPSAmount:OnChanged(function(Value)
    getgenv().FPSAmount = math.floor(Value)
end)
        
local ToggleFPS = Tabs.Setting:AddToggle("ToggleFPS", {Title = "Lock FPS Cap", Default = true })
ToggleFPS:OnChanged(function(Value)
    getgenv().FPSLock = Value
end)

local VersionT = Tabs.Setting:AddToggle("VersionT", {
    Title = "Disable Game Version",
    Default = true
})
VersionT:OnChanged(function(Value)
    getgenv().DeleteVersion = Value
end)

local ToggleNotify = Tabs.Setting:AddToggle("ToggleNotify", {
    Title = "Disable Notification",
    Default = false
})
ToggleNotify:OnChanged(function(Value)
    getgenv().DisableNotification = Value
end)

local ToggleEffect = Tabs.Setting:AddToggle("ToggleEffect", {Title = "Remove Effect", Default = true })
ToggleEffect:OnChanged(function(Value)
    getgenv().RemoveEffect = Value
end)

local ToggleRejoin = Tabs.Setting:AddToggle("ToggleRejoin", {
    Title = "Auto Rejoin",
    Default = true
})
ToggleRejoin:OnChanged(function(Value)
    getgenv().AutoRejoin = Value
end)

local SettingFarm = Tabs.Setting:AddSection("Tab Settings Farm")

local PLR = Players.LocalPlayer
local Character = PLR.Character or PLR.CharacterAdded:Wait()

local ToggleBD = Tabs.Setting:AddToggle("ToggleBD", {
    Title = "Body Velocity",
    Default = false
})

local BodyVelocityInstance

ToggleBD:OnChanged(function(Value)
    getgenv().BodyVelocity = Value

    if Value then
        if not BodyVelocityInstance then
            BodyVelocityInstance = Instance.new("BodyVelocity")
            BodyVelocityInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            BodyVelocityInstance.Velocity = Vector3.new(0, 0, 0)
            BodyVelocityInstance.Parent = Character:WaitForChild("HumanoidRootPart")
        end
    else
        if BodyVelocityInstance then
            BodyVelocityInstance:Destroy()
            BodyVelocityInstance = nil
        end
    end
end)

local ToggleNoClip = Tabs.Setting:AddToggle("ToggleNoClip", {
    Title = "NoClip",
    Default = false
})

local NoClipConnection

ToggleNoClip:OnChanged(function(Value)
    getgenv().NoClip = Value

    if Value then
        NoClipConnection = RunService.Stepped:Connect(function()
            if PLR.Character then
                for _, Part in pairs(PLR.Character:GetDescendants()) do
                    if Part:IsA("BasePart") then
                        Part.CanCollide = false
                    end
                end
            end
        end)
    else
        if NoClipConnection then
            NoClipConnection:Disconnect()
            NoClipConnection = nil
        end
    end
end)


local TogglePos =
    Tabs.Setting:AddToggle(
    "TogglePos",
    {
        Title = "Pos Around (For Skill Mob)",
        Default = false
    }
)
TogglePos:OnChanged(
    function(Value)
        getgenv().RandomPos = Value
    end
)

local ToggleBring =
    Tabs.Setting:AddToggle(
    "ToggleBring",
    {
        Title = "Bring Mob",
        Default = false
    }
)
ToggleBring:OnChanged(
    function(Value)
        getgenv().BringMob = Value
    end
)

local ToggleFastAttack = Tabs.Setting:AddToggle("ToggleFastAttack", {Title = "Fast Attack", Default = true})
ToggleFastAttack:OnChanged(
    function(Value)
        getgenv().FastAttack = Value
    end
)

local ToggleAttackPlayer = Tabs.Setting:AddToggle("ToggleAttackPlayer", {Title = "Attack On Player", Default = true})
ToggleAttackPlayer:OnChanged(
    function(Value)
        getgenv().AttackPlayer = Value
    end
)

local ToggleAttackMob = Tabs.Setting:AddToggle("ToggleAttackMob", {Title = "Attack On Mob", Default = true})
ToggleAttackMob:OnChanged(
    function(Value)
        getgenv().AttackMob = Value
    end
)

local sts = Tabs.Setting:AddSection("Tab Settings Stats")
getgenv().SelectedStats = {}

local StatDropdown = Tabs.Setting:AddDropdown("MultiDropdown", {
    Title = "Stats To Add",
    Description = "Select multiple stats to auto assign",
    Values = {"Melee", "Defense", "Gun", "Sword", "Demon Fruit", "Smart Stats"},
    Multi = true,
    Default = {},
})

StatDropdown:OnChanged(function(Value)
    getgenv().SelectedStats = Value
end)

local PointSlider = Tabs.Setting:AddSlider("PointSlider", {
    Title = "Points per assign",
    Description = "Amount of points to assign each tick",
    Default = 1,
    Min = 1,
    Max = 200,
    Rounding = 0,
})

PointSlider:OnChanged(function(Value)
    getgenv().AmountStats = Value
end)

local AutoStatToggle = Tabs.Setting:AddToggle("AutoStatToggle", {
    Title = "Auto Stats",
    Default = false,
})
AutoStatToggle:OnChanged(function()
    getgenv().AutoStats = Options.AutoStatToggle.Value
end)

local function AddPoint(StatName, Amount)
    if Amount > 0 then
        StatRemote:InvokeServer("AddPoint", StatName, Amount)
    end
end

task.spawn(function()
    while task.wait(1) do
        if not getgenv().AutoStats then continue end
        local Data = LocalPlayer:FindFirstChild("Data")
        local Stats = Data and Data:FindFirstChild("Stats")
        if not Data or not Stats then
            warn("Data or Stats not found.")
            continue
        end
        local Level = Data:FindFirstChild("Level") and Data.Level.Value or 0
        local Points = Data:FindFirstChild("Points") and Data.Points.Value or 0
        if Points <= 0 then continue end
        local Selected = getgenv().SelectedStats
        local UseAmount = math.min(getgenv().AmountStats, Points)
        if Selected["Smart Stats"] then
            if Level < 1200 then
                AddPoint("Melee", UseAmount)
            elseif Level < 2200 then
                local Half = math.floor(UseAmount / 2)
                AddPoint("Melee", Half)
                AddPoint("Defense", UseAmount - Half)
            else
                local Half = math.floor(UseAmount / 2)
                AddPoint("Sword", Half)
                AddPoint("Demon Fruit", UseAmount - Half)
            end
        else
            local EnabledStats = {}
            for StatName, Enabled in pairs(Selected) do
                if Enabled then
                    table.insert(EnabledStats, StatName)
                end
            end
            if #EnabledStats > 0 then
                local PointsPerStat = math.floor(UseAmount / #EnabledStats)
                for _, StatName in ipairs(EnabledStats) do
                    AddPoint(StatName, PointsPerStat)
                end
            end
        end
    end
end)

local ST = Tabs.Setting:AddSection("Tab Settings Tween")

local TweenSlider = Tabs.Setting:AddSlider("Tween Speed", {
    Title = "Speed Tween",
    Description = "Adjust Tween Speed",
    Default = 300,
    Min = 100,
    Max = 350,
    Rounding = 0,
    Callback = function(Value)
        if TWEENSPEED ~= Value then
            TWEENSPEED = Value
        end
    end
})

local EntranceTP = Tabs.Setting:AddToggle("EntranceTP", {Title = "Entrance Tp", Default = true})
EntranceTP:OnChanged(
    function(Value)
        getgenv().EnchanceTP = Value
    end
)
EntranceTP:OnChanged(
    function(Value)
        getgenv().EnchanceTP = Value
    end
)

local ToggleBypass =
    Tabs.Setting:AddToggle(
    "ToggleBypass",
    {
        Title = "Bypass Tp",
        Default = true
    }
)
ToggleBypass:OnChanged(
    function(Value)
        getgenv().BypassTp = Value
    end
)

local ToggleHealth = Tabs.Setting:AddToggle("ToggleHealth", {Title = "Anti Low Health", Default = false })
ToggleHealth:OnChanged(function(Value)
    getgenv().AntiLowHealth = Value
end)

local HealthSlider = Tabs.Setting:AddSlider("HealthSlider", {
    Title = "Low Health Threshold (%)",
    Description = "Adjust low health threshold percentage",
    Default = 35,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Callback = function(Value)
        if getgenv().LowHealthPer ~= Value then
            getgenv().LowHealthPer = Value
        end
    end
})

local NotLowHealthSlider = Tabs.Setting:AddSlider("NotLowHealthSlider", {
    Title = "Not Low Health Threshold (%)",
    Description = "Adjust not low health threshold percentage",
    Default = 70,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Callback = function(Value)
        if getgenv().NotLowHealthPer ~= Value then
            getgenv().NotLowHealthPer = Value
        end
    end
})


local SelectWeapon = Tabs.Main:AddDropdown("SelectWeapon", {
    Title = "Select Weapon",
    Values = {'Melee', 'Sword', 'Blox Fruit', 'Gun'},
    Multi = false,
    Default = 1,
})
SelectWeapon:OnChanged(function(Value)
    getgenv().WeaponSelect = Value
end)
    
    task.spawn(function()
        while wait() do
            pcall(function()
                if getgenv().WeaponSelect == "Melee" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                getgenv().WeaponChoose = v.Name
                            end
                        end
                    end
                elseif getgenv().WeaponSelect == "Sword" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                getgenv().WeaponChoose = v.Name
                            end
                        end
                    end
                elseif getgenv().WeaponSelect == "Blox Fruit" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                getgenv().WeaponChoose = v.Name
                            end
                        end
                    end
                else
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Gun" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                getgenv().WeaponChoose = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)

local ToggleFarmLevel = Tabs.Main:AddToggle("ToggleFarmLevel", {Title = "Start Farm", Default = false })
ToggleFarmLevel:OnChanged(function(Value)
     getgenv().FarmLevel = Value
end)

task.spawn(function()
    while task.wait() do
            if getgenv().FF then
                pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 10 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Shanda" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        SH(v)
                                    until not getgenv().FF or not v.Parent or v.Humanoid.Health <= 0
                                    Tween(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                                    _B = false
                                end
                            end
                        end           
                    end
                end)
            end
        end
    end)             
task.spawn(function()
    while task.wait() do
            if getgenv().FFF then
                pcall(function()
                    CheckQuest()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						Tween(CFrameQuest)
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                              SH(v)
                                            until not getgenv().FFF or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            _B = false
                                        end
                                    end
                                end
                            end
                        else
                            Tween(CFrameMon)
                        end
                    end
                end)
            end
        end
    end)
local SliderMobAura =
    Tabs.Main:AddSlider(
    "SliderMobAura",
    {
        Title = "Mob Aura Distance",
        Description = "for farm nearest mob",
        Default = 500,
        Min = 1,
        Max = 2000,
        Rounding = 1,
        Callback = function(Value)
            getgenv().NearestMob = Value
        end
    }
)
SliderMobAura:OnChanged(
    function(Value)
        getgenv().NearestMob = Value
    end
)
local ToggleFarmNearest = Tabs.Main:AddToggle("ToggleFarmNearest", {Title = "Farm Mob Aura", Default = false })
ToggleFarmNearest:OnChanged(function(Value)
     getgenv().FarmNearest = Value
end)

local ToggleFarmBone = Tabs.Main:AddToggle("ToggleFarmBone", {Title = "Farm Bone", Default = false })
ToggleFarmBone:OnChanged(function(Value)
     getgenv().FarmBone = Value
end)

function NearestFarm()
    if not getgenv().FarmNearest then return false end
    
    local enemies = Workspace.Enemies:GetChildren()
    table.sort(enemies, function(a, b)
        return a.Name < b.Name
    end)
    for _, V in ipairs(enemies) do
        if not getgenv().FarmNearest then
            StopTween()
            _B = false
            return false
        end
        if V:FindFirstChild("Humanoid") and V.Humanoid.Health > 0 and V:FindFirstChild("HumanoidRootPart") then
            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - V.HumanoidRootPart.Position).Magnitude <= (tonumber(getgenv().NearestMob) or 400) then
                repeat task.wait()
                    if not getgenv().FarmNearest then
                        StopTween()
                        _B = false
                        return false
                    end
                    SH(V)
                until not V.Parent or V.Humanoid.Health <= 0
                return true
            end
        end
    end
    _B = false
    return false
end

function BoneFarm()
    if not getgenv().FarmBone then return false end
    local List = {"Posessed Mummy", "Demonic Soul", "Reborn Skeleton", "Living Zombie"}
    local Found = false
    local bQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    local bQuestCFrame = CFrame.new(-9513.84277, 172.419067, 6077.3623, 0.109214641, 2.34422384e-08, 0.994018137, -4.35502905e-08, 0.99999994, -2.98091472e-08, -0.994018137, -2.17544258e-08, 0.109214656)

    if not string.find(bQuest, "Posessed Mummy") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
        Tween(bQuestCFrame)
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - bQuestCFrame.Position).Magnitude <= 5 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",2)
            task.wait(1)
        end
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    for _, targetName in ipairs(List) do
        if not getgenv().FarmBone then
            Tween(Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            return false
        end
        for _, V in pairs(Workspace.Enemies:GetChildren()) do
            if not getgenv().FarmBone then
                Tween(Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                return false
            end
            if V.Name == targetName and V:FindFirstChild("Humanoid") and V.Humanoid.Health > 0 and V:FindFirstChild("HumanoidRootPart") then
                repeat task.wait()
                    if not getgenv().FarmBone then
                        Tween(Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        return false
                    end
                    SH(V)
                until not V.Parent or V.Humanoid.Health <= 0
                Found = true
                return true
            end
        end
        for _, V in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if not getgenv().FarmBone then
                Tween(Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                return false
            end
            if V.Name == targetName and V:FindFirstChild("Humanoid") and V.Humanoid.Health > 0 and V:FindFirstChild("HumanoidRootPart") then
                repeat task.wait()
                    if not getgenv().FarmBone then
                        Tween(Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        return false
                    end
                    SH(V)
                until not V.Parent or V.Humanoid.Health <= 0
                Found = true
                return true
            end
        end
    end
end
    if not Found then
        Tween(CFrame.new(-9466.72949, 171.162918, 6132.01514))
    end
    return false
end

local ChestSecction = Tabs.Main:AddSection("Tab Farm Chest")

local InputWebhook =
    Tabs.Main:AddInput(
    "InputWebhook",
    {
        Title = "Input Webhook",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            getgenv().WebhookChest = Value
        end
    }
)
InputWebhook:OnChanged(
    function(Value)
        getgenv().WebhookChest = Value
    end
)

local InputPing =
    Tabs.Main:AddInput(
    "InputPing",
    {
        Title = "Set Mention Ping",
        Default = "everyone",
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            getgenv().PingChest = Value
        end
    }
)
InputPing:OnChanged(
    function(Value)
        getgenv().PingChest = Value
    end
)

local InputBelimit =
    Tabs.Main:AddInput(
    "InputBelimit",
    {
        Title = "Set Limit (Beli)",
        Default = "100000000",
        Placeholder = "Placeholder",
        Numeric = true,
        Finished = false,
        Callback = function(Value)
            getgenv().BeliLimit = Value
        end
    }
)
InputBelimit:OnChanged(
    function(Value)
        getgenv().BeliLimit = Value
    end
)

local ToggleWE =
    Tabs.Main:AddToggle(
    "ToggleWE",
    {
        Title = "Enable Webhook Chest",
        Default = false
    }
)
ToggleWE:OnChanged(
    function(Value)
        getgenv().EnableWebhook = Value
    end
)

local ToggleResetAntiDetect =
    Tabs.Main:AddToggle(
    "ToggleResetAntiDetect",
    {
        Title = "Reset Anti Detect",
        Default = false
    }
)
ToggleResetAntiDetect:OnChanged(
    function(Value)
        getgenv().ResetAntiDetect = Value
    end
)

local ResetTimeSlider =
    Tabs.Main:AddSlider(
    "ResetTimeSlider",
    {
        Title = "Set Reset Time (s)",
        Description = "Set time to reset anti detect",
        Default = 3,
        Min = 1,
        Max = 6,
        Rounding = 0,
        Callback = function(Value)
            getgenv().ResetTime = math.floor(Value)
        end
    }
)

local TogglePanel =
    Tabs.Main:AddToggle(
    "TogglePanel",
    {
        Title = "Show Status Panel",
        Default = false
    }
)
TogglePanel:OnChanged(
    function(Value)
        getgenv().ShowPanel = Value
    end
)

local ToggleSniperLegendaryItem =
    Tabs.Main:AddToggle(
    "ToggleSniperLegendaryItem",
    {
        Title = "Sniper Legendary Item",
        Default = false
    }
)
ToggleSniperLegendaryItem:OnChanged(
    function(Value)
        getgenv().SniperLegendaryItem = Value
    end
)

local ToggleStartFarmChest =
    Tabs.Main:AddToggle(
    "ToggleStartFarmChest",
    {
        Title = "Start Farm Chest",
        Default = false
    }
)
ToggleStartFarmChest:OnChanged(
    function(Value)
        getgenv().StartFarmChest = Value
    end
)

-- Chest Farm Function --

local savedData = loadSavedData()
local sessionStartTime = os.time()
local totalTimeElapsed = savedData and savedData.TimeElapsed or 0
local initialBeli = savedData and savedData.InitialBeli or game.Players.LocalPlayer.Data.Beli.Value
getgenv().InitialBeli = initialBeli

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ModernGlassUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

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

local TimeCard, TimeValue = createStatCard("Time", "⏱️", Color3.fromRGB(100, 180, 255), 1)
local CurrentCard, CurrentValue = createStatCard("Current", "💰", Color3.fromRGB(255, 200, 80), 2)
local EarnedCard, EarnedValue = createStatCard("Earned", "📈", Color3.fromRGB(100, 255, 150), 3)

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

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

spawn(function()
    while ScreenGui.Parent do
        TweenService:Create(BorderGradient, TweenInfo.new(3, Enum.EasingStyle.Linear), {Rotation = 360}):Play()
        wait(3)
        BorderGradient.Rotation = 0
    end
end)

MinimizeBtn.MouseEnter:Connect(function()
    TweenService:Create(MinimizeBtn, TweenInfo.new(0.15), {BackgroundTransparency = 0.7}):Play()
end)

MinimizeBtn.MouseLeave:Connect(function()
    TweenService:Create(MinimizeBtn, TweenInfo.new(0.15), {BackgroundTransparency = 0.9}):Play()
end)

DiscordBtn.MouseEnter:Connect(function()
    TweenService:Create(DiscordBtn, TweenInfo.new(0.2), {BackgroundTransparency = 0, Size = UDim2.new(1, -28, 0, 40)}):Play()
    TweenService:Create(DiscordStroke, TweenInfo.new(0.2), {Transparency = 0.2}):Play()
end)

DiscordBtn.MouseLeave:Connect(function()
    TweenService:Create(DiscordBtn, TweenInfo.new(0.2), {BackgroundTransparency = 0.2, Size = UDim2.new(1, -30, 0, 38)}):Play()
    TweenService:Create(DiscordStroke, TweenInfo.new(0.2), {Transparency = 0.5}):Play()
end)

DiscordBtn.MouseButton1Click:Connect(function()
    if W then setclipboard(W) end
    DiscordBtn.Text = "✓ Copied!"
    TweenService:Create(DiscordBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(0, 255, 127)}):Play()
    wait(1.5)
    DiscordBtn.Text = "🌐 Join Discord"
    TweenService:Create(DiscordBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(88, 101, 242)}):Play()
end)

local isMinimized = false
MinimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        StatsContainer.Visible = false
        DiscordBtn.Visible = false
        TweenService:Create(MainFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {Size = UDim2.new(0, 320, 0, 50)}):Play()
        MinimizeBtn.Text = "+"
    else
        TweenService:Create(MainFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {Size = UDim2.new(0, 320, 0, 220)}):Play()
        MinimizeBtn.Text = "−"
        wait(0.15)
        StatsContainer.Visible = true
        DiscordBtn.Visible = true
    end
end)

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

function Gui(visible)
    ScreenGui.Enabled = visible
end

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

spawn(function()
    while ScreenGui.Parent do
        local totalTime = totalTimeElapsed + (os.time() - sessionStartTime)
        TimeValue.Text = formatTime(totalTime)
        
        local CurrentBeli = game.Players.LocalPlayer.Data.Beli.Value
        CurrentValue.Text = formatNumber(CurrentBeli)
        
        local beliEarned = CurrentBeli - initialBeli
        EarnedValue.Text = "+" .. formatNumber(beliEarned)
        
        saveStats(totalTime, beliEarned, initialBeli, sessionStartTime)
        wait(1)
    end
end)

if savedData and getgenv().ChestFarm then
    totalTimeElapsed = savedData.TimeElapsed or 0
    initialBeli = savedData.InitialBeli or game.Players.LocalPlayer.Data.Beli.Value
    sessionStartTime = os.time()
else
    sessionStartTime = os.time()
    totalTimeElapsed = 0
    initialBeli = game.Players.LocalPlayer.Data.Beli.Value
    getgenv().InitialBeli = initialBeli
    print("- Initial Beli:", formatNumber(initialBeli))
end

Gui(getgenv().ShowPanel and getgenv().StartFarmChest)

local a0 = {}
local a1 = ""
local a2 = os.date("!*t").hour
local a3 = false
local a4 =
    pcall(
    function()
        a0 = game:GetService("HttpService"):JSONDecode(readfile("ChestCollect.RomisHub"))
    end
)
if not a4 then
    table.insert(a0, a2)
    writefile("ChestCollect.RomisHub", game:GetService("HttpService"):JSONEncode(a0))
end

function SendWebhook()
    if getgenv().EnableWebhook and getgenv().WebhookChest ~= "" then
        local CurrentBeli = game:GetService("Players").LocalPlayer.Data.Beli.Value
        local beliEarned = CurrentBeli - getgenv().LastBeli
        getgenv().LastBeli = CurrentBeli
        local LockBeli = getgenv().BeliLimit
        local StatusMessage = "Server hopped successfully"
        local PingMessage = ""

        if CurrentBeli >= LockBeli then
            StatusMessage = "Congratulations! You've reached your Beli goal! Keep shining!"
            local pingUserID = getgenv().PingChest
            if pingUserID and pingUserID ~= "" then
                PingMessage = "<@" .. pingUserID .. "> "
            end
        end

        local universeId = nil
        local success, response =
            pcall(
            function()
                local ApiUrl = "https://apis.roblox.com/universes/v1/places/" .. game.PlaceId .. "/universe"
                local result = http_request({Url = ApiUrl, Method = "GET"})
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
        local PlayerCount = #game:GetService("Players"):GetPlayers()

        local WebhookData = {
            ["content"] = PingMessage,
            ["embeds"] = {
                {
                    ["title"] = "🎮 Romis Hub Notification",
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
                            ["value"] = StatusMessage,
                            ["inline"] = false
                        },
                        {
                            ["name"] = "💰 Current Beli",
                            ["value"] = tostring(CurrentBeli) .. " Beli",
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
                            ["value"] = tostring(LockBeli) .. " Beli",
                            ["inline"] = true
                        },
                        {
                            ["name"] = "🖥️ Server Job ID",
                            ["value"] = jobId,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "👥 Players in Server",
                            ["value"] = tostring(PlayerCount) .. " player(s)",
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
                        ["text"] = "Romis Hub | " .. os.date("%Y-%m-%d %H:%M:%S"),
                        ["icon_url"] = "https://cdn.discordapp.com/attachments/1099613542543527946/1460612373051211776/image.png?ex=6968de46&is=69678cc6&hm=ca9766d023310405f04cd8e9490623b5f6f5a0fa22f770245d3a1b0934fa1f4a&"
                    },
                    ["thumbnail"] = {
                        ["url"] = "https://cdn.discordapp.com/attachments/1099613542543527946/1460612373051211776/image.png?ex=6968de46&is=69678cc6&hm=ca9766d023310405f04cd8e9490623b5f6f5a0fa22f770245d3a1b0934fa1f4a&"
                    },
                    ["author"] = {
                        ["name"] = "Romios Hub",
                        ["icon_url"] = "https://cdn.discordapp.com/attachments/1099613542543527946/1460612373051211776/image.png?ex=6968de46&is=69678cc6&hm=ca9766d023310405f04cd8e9490623b5f6f5a0fa22f770245d3a1b0934fa1f4a&"
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
                        Url = getgenv().WebhookChest,
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json"
                        },
                        Body = game:GetService("HttpService"):JSONEncode(WebhookData)
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
                                delfile("ChestCollect.RomisHub")
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
                        writefile("ChestCollect.RomisHub", game:GetService("HttpService"):JSONEncode(a0))
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

task.spawn(function()
    while true do
        repeat task.wait(1) until
            getgenv().StartFarmChest
            and getgenv().ResetAntiDetect
            and not getgenv().FoundStop
            and game.Players.LocalPlayer.Character
            and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        task.wait(getgenv().SH_Settings.Settings["Reset Time Delay"])
        if getgenv().StartFarmChest
            and getgenv().ResetAntiDetect
            and not getgenv().FoundStop
            and game.Players.LocalPlayer.Character
            and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end
end)

function StartFarmChest()
    if not getgenv().StartFarmChest then
        return false
    end

    local character = LocalPlayer.Character
    if not character then
        return false
    end

    local crewTag = character:FindFirstChild("CrewBBG", true)
    if crewTag then
        crewTag:Destroy()
    end

    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then
        return false
    end

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

    if getgenv().SniperLegendaryItem then
        if getgenv().FoundStop then
            if getgenv().ResetAntiDetect then
                getgenv().ResetAntiDetect = false
            end
            return true
        end
    end

    if nearest then
        local chestPosition = nearest:GetPivot().Position
        getgenv().ResetAntiDetect = true

        local success =
            pcall(
            function()
                character:PivotTo(CFrame.new(chestPosition))

                local rootPart = nearest:FindFirstChild("RootPart")
                if rootPart then
                    firesignal(rootPart.Touched, character.HumanoidRootPart)
                end
            end
        )

        return success
    else
        if getgenv().ResetAntiDetect then
            getgenv().ResetAntiDetect = false
        end

        local success =
            pcall(
            function()
                Teleport()
            end
        )

        return success
    end
end

local SelectTypeFarm =
    Tabs.SF:AddDropdown(
    "SelectTypeFarm",
    {
        Title = "Select Type Farm",
        Values = {"No Hop", "Hop"},
        Multi = false,
        Default = 1
    }
)
SelectTypeFarm:OnChanged(
    function(Value)
        getgenv().SelectTypeFarm = Value
    end
)

local SliderHop =
    Tabs.SF:AddSlider(
    "SliderHop",
    {
        Title = "Set Hop Time",
        Description = "Set hop time to hop if not found enemies",
        Default = 10,
        Min = 1,
        Max = 30,
        Rounding = 0,
        Callback = function(Value)
            getgenv().TimeHop = math.floor(Value)
        end
    }
)
SliderHop:OnChanged(
    function(Value)
        getgenv().TimeHop = math.floor(Value)
    end
)

local ToggleEliteMob = Tabs.SF:AddToggle("ToggleEliteMob", {Title = "Auto Farm Elite Mob", Default = false})
ToggleEliteMob:OnChanged(
    function(Value)
        getgenv().AutoFarmEliteMob = Value
        if Value then
            TPWorld(3)
        end
    end
)

local ToggleFruitCollect = Tabs.SF:AddToggle("ToggleFruitCollect", {Title = "Auto Collect Fruit", Default = false })
ToggleFruitCollect:OnChanged(function(Value)
    getgenv().FruitCollect = Value
end)

local Raid = Tabs.R:AddSection("Tab Dungeons")
if _G.World2 or _G.World3 then
    Tabs.R:AddButton({
        Title = "Teleport To Raid Lab",
        Description = "",
        Callback = function()
            local Npc = game:GetService("ReplicatedStorage").NPCs:FindFirstChild("Mysterious Scientist")
            if Npc and Npc:FindFirstChild("Head") then
                Tween(Npc.Head.CFrame)
            else
                local Npc2 = workspace.NPCs:FindFirstChild("Mysterious Scientist")
                if Npc2 and Npc2:FindFirstChild("Head") then
                    Tween(Npc2.Head.CFrame)
                else
                    print("mm error")
                end
            end
        end
    })
end

getgenv().BuyChipSelect = selectraids or ""
Raidslist = {}
RaidsModule = require(game.ReplicatedStorage.Raids)

for i, v in pairs(RaidsModule.raids) do
    table.insert(Raidslist, v)
end
for i, v in pairs(RaidsModule.advancedRaids) do
    table.insert(Raidslist, v)
end

local function ChichChip()
    local args = {
        [1] = "RaidsNpc",
        [2] = "Select",
        [3] = getgenv().BuyChipSelect
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

local function GoRaid()
        if _G.World2 then
            fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif _G.World3 then
            local Cd = game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector
            Cd.MaxActivationDistance = math.huge
            fireclickdetector(Cd)
        end
    end

local function Us()
    local FruitPrice = {}
    local FruitStore = {}
    local PriceU = tonumber(getgenv().PriceLimit) or 1000000

    local getFruitsResult = game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits")
    if type(getFruitsResult) == "table" then
        for i, v in pairs(getFruitsResult) do
            if v.Price <= PriceU then  
                table.insert(FruitPrice, v.Name)
            end
        end
    end
    local getInventoryFruitsResult = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
    if type(getInventoryFruitsResult) == "table" then
        for i, v in pairs(getInventoryFruitsResult) do
            if type(v) == "table" then
                for _, x in pairs(v) do
                    if _ == "Name" then 
                        table.insert(FruitStore, x)
                    end
                end
            end
        end
    end
    for _, y in pairs(FruitPrice) do
        for _, z in pairs(FruitStore) do
            if y == z then
                local args = {
                    [1] = "LoadFruit",
                    [2] = tostring(y)
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end

local DropdownRaid = Tabs.R:AddDropdown("DropdownRaid", {
    Title = "Select Raid Map Chip",
    Values = Raidslist,
    Multi = false,
    Default = 1,
})
DropdownRaid:OnChanged(function(Value)
    getgenv().BuyChipSelect = Value
end)

local ToggleChipPlayer = Tabs.R:AddToggle("ToggleChipPlayer", {Title = "Auto Buy Chip Player Fruit", Default = false})
ToggleChipPlayer:OnChanged(
    function(Value)
        getgenv().AutoBuyChipPlayer = Value
    end
)

task.spawn(
    function()
        while task.wait() do
        if getgenv().AutoBuyChipPlayer then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                    getgenv().BuyChipSelect = "Flame"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                    getgenv().BuyChipSelect = "Ice"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                    getgenv().BuyChipSelect = "Quake"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                    getgenv().BuyChipSelect = "Light"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                    getgenv().BuyChipSelect = "Dark"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                    getgenv().BuyChipSelect = "String"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                    getgenv().BuyChipSelect = "Rumble"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                    getgenv().BuyChipSelect = "Magma"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                    getgenv().BuyChipSelect = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard-Leopard") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard-Leopard") then
                    getgenv().BuyChipSelect = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune-Kitsune") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune-Kitsune") then
                    getgenv().BuyChipSelect = "Dark"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                    getgenv().BuyChipSelect = "Sand"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                if getgenv().IngoreSpecialChip then
                getgenv().BuyChipSelect = "Dark"
                else
                    getgenv().BuyChipSelect = "Bird: Phoenix"
                    end
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough") then
                if getgenv().IngoreSpecialChip then
                getgenv().BuyChipSelect = "Ice"
                else
                    getgenv().BuyChipSelect = "Dough"
                    end
                else
                    getgenv().BuyChipSelect = "Ice"
                end
            end)
        end
    end
end)

local ToggleChipPlayerSp = Tabs.R:AddToggle("ToggleChipPlayerSp", {Title = "Ingore Special Chip", Default = true})
ToggleChipPlayerSp:OnChanged(
    function(Value)
        getgenv().IngoreSpecialChip = Value
    end
)

local ToggleRaiid = Tabs.R:AddToggle("ToggleRaiid", {Title = "Auto Farm Raid", Default = falsed})
ToggleRaiid:OnChanged(
    function(Value)
        getgenv().AutoRaid = Value
    end
)

local FruitPriceSlider = Tabs.R:AddSlider("FruitPriceSlider", {
    Title = "Fruit Price Limit",
    Description = "slider",
    Default = 1000000,
    Min = 200000,
    Max = 9000000,
    Rounding = 1,
    Callback = function(Value)
        getgenv().PriceLimit = math.floor(Value)
    end
})

local ToggleGetFruit =
    Tabs.R:AddToggle("ToggleGetFruit", {Title = "Auto Unstore Fruit", Default = false})
ToggleGetFruit:OnChanged(
    function(Value)
        getgenv().Raid_AutoUnStore = Value
    end
)

local ToggleAwake = Tabs.R:AddToggle("ToggleAwake", {Title = "Auto Awakening", Default = false})
ToggleAwake:OnChanged(
    function(Value)
        getgenv().Awkening = Value
    end
)

local Vi = {}
local Ic = 5
local Ti = false
function AutoRaid()
    if not getgenv().AutoRaid then return false end
            local Rv = false
            pcall(function()
                local Pg = game:GetService("Players").LocalPlayer.PlayerGui
                if Pg and Pg:FindFirstChild("Main") then
                    local M = Pg.Main
                    if M:FindFirstChild("TopHUDList") and 
                       M.TopHUDList:FindFirstChild("RaidTimer") then
                        Rv = M.TopHUDList.RaidTimer.Visible
                    end
                end
            end)
            
            if Rv then
                pcall(function()
                    local P = game:GetService("Players").LocalPlayer
                    local C = P.Character
                    
                    if C and C:FindFirstChild("HumanoidRootPart") then
                        local H = C.HumanoidRootPart
                        local W = game:GetService("Workspace")
                        
                        if not W:FindFirstChild("_WorldOrigin") or 
                           not W._WorldOrigin:FindFirstChild("Locations") then
                            return
                        end
                        
                        local L = W._WorldOrigin.Locations
                        local Cp = H.Position
                        
                        local Sp1 = Vector3.new(-6438.73535, 250.645355, -4501.50684)
                        local Sp2 = Vector3.new(-5017.40869, 314.844055, -2823.0127)
                        
                        if (Cp - Sp1).Magnitude < 5 or 
                           (Cp - Sp2).Magnitude < 5 then
                            Vi = {}
                            Ti = false
                        end
                        
                        local E = W.Enemies:GetChildren()
                        table.sort(E, function(a, b)
                            return a.Name < b.Name
                        end)
                        
                        local Fighting = false
                        for _, V in ipairs(E) do
                            if V:FindFirstChild("Humanoid") and V.Humanoid.Health > 0 and V:FindFirstChild("HumanoidRootPart") then
                                if (P.Character.HumanoidRootPart.Position - V.HumanoidRootPart.Position).Magnitude <= 700 then
                                    Fighting = true
                                    SH(V)
                                    break
                                end
                            end
                        end
                        
                        if not Fighting and not Ti then
                            for i = 1, Ic do
                                local In = "Island " .. i
                                local Is = L:FindFirstChild(In)
                                
                                if Is and not Vi[In] then
                                    Ti = true
                                    Vi[In] = true
                                    
                                    local S = pcall(function()
                                        if type(Tween) == "function" then
                                            Tween(Is.CFrame)
                                        end
                                    end)
                                    
                                    if not S then
                                        Vi[In] = nil
                                    end
                                    
                                    task.wait(3)
                                    Ti = false
                                    break
                                end
                            end
                        end
                    end
                end)
            else
                Vi = {}
                Ti = false
                if getgenv().Raid_AutoUnStore then
                    Us()
                end
                local HasChip = false
                pcall(function()
                    local P = game:GetService("Players").LocalPlayer
                    if P.Backpack:FindFirstChild("Special Microchip") then
                        HasChip = true
                    end
                end)
                
                if HasChip then
                    GoRaid()
                else
                if getgenv().Raid_AutoUnStore then
                  Us()
                end
                    ChichChip()
                    task.wait(1)
                    GoRaid()
                end
            end
end
    

Tabs.R:AddButton(
    {
        Title = "Buy Chip Select",
        Description = "Instant buy chip select",
        Callback = function()
            ChichChip()
        end
    }
)
Tabs.R:AddButton(
    {
        Title = "Start Raid",
        Description = "Instant Start Raid",
        Callback = function()
            GoRaid()
        end
    }
)

local trr = Tabs.T:AddSection("Tab Travel")

local LocationFolder = workspace:WaitForChild("_WorldOrigin"):WaitForChild("Locations")
local IslandNames = {}

for _, Location in pairs(LocationFolder:GetChildren()) do
    table.insert(IslandNames, Location.Name)
end
local TravelDropdown = Tabs.T:AddDropdown("TravelDropdown", {
    Title = "Select Island",
    Values = IslandNames,
    Multi = false,
    Default = 1,
})

getgenv().SelectedIsland = IslandNames[1]

TravelDropdown:OnChanged(function(Value)
    getgenv().SelectedIsland = Value
end)

local TravelToggle = Tabs.T:AddToggle("TravelToggle", {
    Title = "Tween To Island",
    Default = false,
})
TravelToggle:OnChanged(function(Value)
    getgenv().TweenIsland = Value
end)

function IslandTP()
    if not getgenv().TweenIsland then return false end
    local IslandPart = LocationFolder:FindFirstChild(getgenv().SelectedIsland)
        if IslandPart and IslandPart:IsA("BasePart") then
        Tween(IslandPart.CFrame)
    end
end
local ClonedFolder

function CreateClonedFolder()
    ClonedFolder = workspace:FindFirstChild("__ClonedNPCs")
    if not ClonedFolder then
        ClonedFolder = Instance.new("Folder")
        ClonedFolder.Name = "__ClonedNPCs"
        ClonedFolder.Parent = workspace
    end
end

function CloneAllNPCs()
    CreateClonedFolder()
    ClonedFolder:ClearAllChildren()
    
    local ReplicatedNpcs = game:GetService("ReplicatedStorage"):FindFirstChild("NPCs")
    if ReplicatedNpcs then
        for _, Npc in pairs(ReplicatedNpcs:GetChildren()) do
            if Npc:IsA("Model") and Npc:FindFirstChild("HumanoidRootPart") then
                local Clone = Npc:Clone()
                Clone:SetPrimaryPartCFrame(Npc.HumanoidRootPart.CFrame)
                Clone.Parent = ClonedFolder
            end
        end
    end
    
    local WorkspaceNpcs = game:GetService("Workspace"):FindFirstChild("NPCs")
    if WorkspaceNpcs then
        for _, Npc in pairs(WorkspaceNpcs:GetChildren()) do
            if Npc:IsA("Model") and Npc:FindFirstChild("HumanoidRootPart") then
                local Clone = Npc:Clone()
                Clone:SetPrimaryPartCFrame(Npc.HumanoidRootPart.CFrame)
                Clone.Parent = ClonedFolder
            end
        end
    end
end
function GetNpcNames()
    CreateClonedFolder()
    local Names = {}
    for _, Npc in pairs(ClonedFolder:GetChildren()) do
        if Npc:IsA("Model") and Npc:FindFirstChild("HumanoidRootPart") then
            table.insert(Names, Npc.Name)
        end
    end
    return Names
end

function TweenToNPc()
    if not getgenv().TweenToNpc then return end
    CreateClonedFolder()
    local Npc = ClonedFolder:FindFirstChild(getgenv().SelectedNpc)
    if Npc and Npc:FindFirstChild("HumanoidRootPart") then
        Tween(Npc.HumanoidRootPart.CFrame)
    end
end

local SelectNpcDropdown = Tabs.T:AddDropdown("SelectNpcDropdown", {
    Title = "Select NPC",
    Values = {},
    Multi = false,
    Default = "",
})

SelectNpcDropdown:OnChanged(function(Value)
    getgenv().SelectedNpc = Value
end)

local RefreshNPCsButton = Tabs.T:AddButton({
    Title = "Refresh NPCs",
    Description = "Manually update NPC list",
    Callback = function()
        CloneAllNPCs()
        local Names = GetNpcNames()
        if #Names > 0 then
            SelectNpcDropdown:SetValues(Names)
            if not getgenv().SelectedNpc or not table.find(Names, getgenv().SelectedNpc) then
                getgenv().SelectedNpc = Names[1]
                SelectNpcDropdown:SetValue(Names[1])
            end
        end
    end
})

local TravelToNpcToggle = Tabs.T:AddToggle("TravelToNpcToggle", {
    Title = "Tween To NPC",
    Default = false,
})

TravelToNpcToggle:OnChanged(function(Value)
    getgenv().TweenToNpc = Value
end)

local trr = Tabs.T:AddSection("Tab ESP")

local function createStyledTextLabel(parent, text, color)
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = parent
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.TextColor3 = color or Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.TextStrokeTransparency = 0
    TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.Text = text
    return TextLabel
end

local function createBillboardGui(parent, name)
    local BillboardGui = Instance.new("BillboardGui")
    BillboardGui.Parent = parent
    BillboardGui.AlwaysOnTop = true
    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
    BillboardGui.Name = name
    return BillboardGui
end

local TogglePlayerEsp = Tabs.T:AddToggle("TogglePlayerEsp", {
    Title = "ESP Player", 
    Default = false 
})

TogglePlayerEsp:OnChanged(function(Value)
    getgenv().EspPlayer = Value
    if Value then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                local BillboardGui = createBillboardGui(v.Character.HumanoidRootPart, "PlayerESP")
                local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 255, 255))
                
                spawn(function()
                    while BillboardGui.Parent do
                        wait(0.1)
                        if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude)
                            TextLabel.Text = v.Name .. "\n[" .. distance .. "m]"
                        end
                    end
                end)
            end
        end
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart:FindFirstChild("PlayerESP") then
                v.Character.HumanoidRootPart.PlayerESP:Destroy()
            end
        end
    end
end)

local ToggleIslandEsp = Tabs.T:AddToggle("ToggleIslandEsp", {
    Title = "ESP Island", 
    Default = false 
})

ToggleIslandEsp:OnChanged(function(Value)
    getgenv().EspIsland = Value
    if Value then
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if v.Name ~= "Sea" then
                local BillboardGui = createBillboardGui(v, "IslandESP")
                local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 255, 255))
                
                spawn(function()
                    while BillboardGui.Parent do
                        wait(0.1)
                        if v:FindFirstChild("Size") then
                            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude)
                            TextLabel.Text = v.Name .. "\n[" .. distance .. "m]"
                        end
                    end
                end)
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if v:FindFirstChild("IslandESP") then
                v.IslandESP:Destroy()
            end
        end
    end
end)

local ToggleNpcEsp = Tabs.T:AddToggle("ToggleNpcEsp", {
    Title = "ESP NPC", 
    Default = false 
})

ToggleNpcEsp:OnChanged(function(Value)
    getgenv().EspNpc = Value

    local function FindNPC(Folder)
        for _, Npc in pairs(Folder:GetChildren()) do
            if Npc:FindFirstChild("HumanoidRootPart") then
                if Value then
                    local BillboardGui = createBillboardGui(Npc.HumanoidRootPart, "NpcESP")
                    local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(0, 255, 0))

                    spawn(function()
                        while BillboardGui.Parent and getgenv().EspNpc do
                            task.wait(0.1)
                            if Npc:FindFirstChild("HumanoidRootPart") then
                                local Distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Npc.HumanoidRootPart.Position).Magnitude)
                                TextLabel.Text = Npc.Name .. "\n[" .. Distance .. "m]"
                            else
                                break
                            end
                        end
                    end)
                else
                    if Npc.HumanoidRootPart:FindFirstChild("NpcESP") then
                        Npc.HumanoidRootPart.NpcESP:Destroy()
                    end
                end
            end
        end
    end

    local WorkspaceNpcs = game:GetService("Workspace"):FindFirstChild("NPCs")
    if WorkspaceNpcs then
        FindNPC(WorkspaceNpcs)
    end

    local ClonedFolder = workspace:FindFirstChild("__ClonedNPCs") or Instance.new("Folder", workspace)
    ClonedFolder.Name = "__ClonedNPCs"

    if Value then
        ClonedFolder:ClearAllChildren()
        local ReplicatedNpcs = game:GetService("ReplicatedStorage"):FindFirstChild("NPCs")
        if ReplicatedNpcs then
            for _, Npc in pairs(ReplicatedNpcs:GetChildren()) do
                if Npc:IsA("Model") and Npc:FindFirstChild("HumanoidRootPart") then
                    local Clone = Npc:Clone()
                    Clone:SetPrimaryPartCFrame(Npc.HumanoidRootPart.CFrame)
                    Clone.Parent = ClonedFolder
                end
            end
            FindNPC(ClonedFolder)
        end
    else
        ClonedFolder:ClearAllChildren()
    end
end)


local ToggleRealFruitEsp = Tabs.T:AddToggle("ToggleRealFruitEsp", {
    Title = "ESP Real Fruit", 
    Default = false 
})

ToggleRealFruitEsp:OnChanged(function(Value)
    getgenv().EspRealFruit = Value
    if Value then
        if World3 then
        for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
            if v:IsA("Tool") then
                local BillboardGui = createBillboardGui(v, "RealFruitESP")
                local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 0, 0))
                
                spawn(function()
                    while BillboardGui.Parent do
                        wait(0.1)
                        if v:FindFirstChild("Handle") then
                            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude)
                            TextLabel.Text = "Apple\n[" .. distance .. "m]"
                        end
                    end
                end)
            end
        end
        for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
            if v:IsA("Tool") then
                local BillboardGui = createBillboardGui(v, "RealFruitESP")
                local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 255, 0))
                
                spawn(function()
                    while BillboardGui.Parent do
                        wait(0.1)
                        if v:FindFirstChild("Handle") then
                            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude)
                            TextLabel.Text = "Pineapple\n[" .. distance .. "m]"
                        end
                    end
                end)
            end
        end
        for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
            if v:IsA("Tool") then
                local BillboardGui = createBillboardGui(v, "RealFruitESP")
                local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 255, 0))
                
                spawn(function()
                    while BillboardGui.Parent do
                        wait(0.1)
                        if v:FindFirstChild("Handle") then
                            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude)
                            TextLabel.Text = "Banana\n[" .. distance .. "m]"
                        end
                    end
                end)
            end
        end
    else
        for i,v in pairs({game.Workspace.AppleSpawner, game.Workspace.PineappleSpawner, game.Workspace.BananaSpawner}) do
            for j,k in pairs(v:GetChildren()) do
                if k:FindFirstChild("RealFruitESP") then
                    k.RealFruitESP:Destroy()
                end
            end
        end
    end
   end
end)

local ToggleFruitEsp = Tabs.T:AddToggle("ToggleFruitEsp", {
    Title = "ESP Fruit Physical",
    Default = false 
})

ToggleFruitEsp:OnChanged(function(Value)
    getgenv().EspFruit = Value
    if Value then
        for i,v in pairs(game.Workspace:GetChildren()) do
            if string.find(v.Name, "Fruit") then
                local BillboardGui = createBillboardGui(v, "FruitESP")
                local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 0, 255))
                
                spawn(function()
                    while BillboardGui.Parent do
                        wait(0.1)
                        if v:FindFirstChild("Handle") then
                            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude)
                            TextLabel.Text = v.Name .. "\n[" .. distance .. "m]"
                        end
                    end
                end)
            end
        end
    else
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v:FindFirstChild("FruitESP") then
                v.FruitESP:Destroy()
            end
        end
    end
end)

local ToggleChestEsp = Tabs.T:AddToggle("ToggleChestEsp", {
    Title = "ESP Chest", 
    Default = false 
})

local CN = {
    ["Chest1"] = true,
    ["Chest2"] = true,
    ["Chest3"] = true
}

ToggleChestEsp:OnChanged(function(Value)
    getgenv().EspChest = Value

    if Value then
        for _, Part in pairs(game.Workspace:GetDescendants()) do
            if Part:IsA("BasePart") and CN[Part.Name] then
                pcall(function()
                    local BillboardGui = createBillboardGui(Part, "ChestESP")
                    local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 215, 0))

                    spawn(function()
                        while BillboardGui.Parent and ToggleChestEsp.Value do
                            task.wait(0.1)
                            local Distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Part.Position).Magnitude)
                            TextLabel.Text = Part.Name .. "\n[" .. Distance .. "m]"
                        end
                    end)
                end)
            end
        end
    else
        for _, Gui in pairs(game.Workspace:GetDescendants()) do
            if Gui:IsA("BillboardGui") and Gui.Name == "ChestESP" then
                Gui:Destroy()
            end
        end
    end
end)


local ToggleFlowerEsp = Tabs.T:AddToggle("ToggleFlowerEsp", {
    Title = "ESP Flower", 
    Default = false 
})

ToggleFlowerEsp:OnChanged(function(Value)
    getgenv().EspFlower = Value
    if Value then
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "Flower2" or v.Name == "Flower1" then
                local BillboardGui = createBillboardGui(v, "FlowerESP")
                local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 192, 203))
                
                spawn(function()
                    while BillboardGui.Parent do
                        wait(0.1)
                        if v:FindFirstChild("Stem") then
                            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Stem.Position).Magnitude)
                            TextLabel.Text = v.Name .. "\n[" .. distance .. "m]"
                        end
                    end
                end)
            end
        end
    else
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v:FindFirstChild("FlowerESP") then
                v.FlowerESP:Destroy()
            end
        end
    end
end)

local ToggleLegendarySwordEsp = Tabs.T:AddToggle("ToggleLegendarySwordEsp", {
    Title = "ESP Legendary Sword Dealer", 
    Default = false 
})

ToggleLegendarySwordEsp:OnChanged(function(Value)
    getgenv().EspLegendarySword = Value
    if Value then
        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            if v.Name == "Legendary Sword Dealer" then
                local part = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                if part then
                    local BillboardGui = createBillboardGui(part, "LegendarySwordESP")
                    local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 0, 0))
                    
                    spawn(function()
                        while BillboardGui.Parent do
                            wait(0.1)
                            local currentPart = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                            if currentPart then
                                local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - currentPart.Position).Magnitude)
                                TextLabel.Text = "Legendary Sword Dealer\n[" .. distance .. "m]"
                            end
                        end
                    end)
                end
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            if v.Name == "Legendary Sword Dealer" then
                local part = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                if part and part:FindFirstChild("LegendarySwordESP") then
                    part.LegendarySwordESP:Destroy()
                end
            end
        end
    end
end)

local ToggleMasterEnhancementEsp = Tabs.T:AddToggle("ToggleMasterEnhancementEsp", {
    Title = "ESP Master of Enhancement", 
    Default = false 
})

ToggleMasterEnhancementEsp:OnChanged(function(Value)
    getgenv().EspMasterEnhancement = Value
    if Value then
        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            if v.Name == "Master of Enhancement" then
                local part = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                if part then
                    local BillboardGui = createBillboardGui(part, "MasterEnhancementESP")
                    local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(0, 255, 255))
                    
                    spawn(function()
                        while BillboardGui.Parent do
                            wait(0.1)
                            local currentPart = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                            if currentPart then
                                local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - currentPart.Position).Magnitude)
                                TextLabel.Text = "Master of Enhancement\n[" .. distance .. "m]"
                            end
                        end
                    end)
                end
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            if v.Name == "Master of Enhancement" then
                local part = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                if part and part:FindFirstChild("MasterEnhancementESP") then
                    part.MasterEnhancementESP:Destroy()
                end
            end
        end
    end
end)

local ToggleMirageIslandEsp = Tabs.T:AddToggle("ToggleMirageIslandEsp", {
    Title = "ESP Mirage Island", 
    Default = false 
})

ToggleMirageIslandEsp:OnChanged(function(Value)
    getgenv().EspMirageIsland = Value
    if Value then
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if v.Name == "Mirage Island" then
                local BillboardGui = createBillboardGui(v, "MirageIslandESP")
                local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(0, 191, 255))
                
                spawn(function()
                    while BillboardGui.Parent do
                        wait(0.1)
                        local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude)
                        TextLabel.Text = "Mirage Island\n[" .. distance .. "m]"
                    end
                end)
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if v.Name == "Mirage Island" and v:FindFirstChild("MirageIslandESP") then
                v.MirageIslandESP:Destroy()
            end
        end
    end
end)

local ToggleAdvancedFruitEsp = Tabs.T:AddToggle("ToggleAdvancedFruitEsp", {
    Title = "ESP Advanced Fruit Dealer", 
    Default = false 
})

ToggleAdvancedFruitEsp:OnChanged(function(Value)
    getgenv().EspAdvancedFruit = Value
    if Value then
        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            if v.Name == "Advanced Fruit Dealer" then
                local part = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                if part then
                    local BillboardGui = createBillboardGui(part, "AdvancedFruitESP")
                    local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(128, 0, 128))
                    
                    spawn(function()
                        while BillboardGui.Parent do
                            wait(0.1)
                            local currentPart = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                            if currentPart then
                                local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - currentPart.Position).Magnitude)
                                TextLabel.Text = "Advanced Fruit Dealer\n[" .. distance .. "m]"
                            end
                        end
                    end)
                end
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            if v.Name == "Advanced Fruit Dealer" then
                local part = v:FindFirstChild('HumanoidRootPart') or v.PrimaryPart
                if part and part:FindFirstChild("AdvancedFruitESP") then
                    part.AdvancedFruitESP:Destroy()
                end
            end
        end
    end
end)

local ToggleGearEsp = Tabs.T:AddToggle("ToggleGearEsp", {
    Title = "ESP Gear", 
    Default = false 
})

ToggleGearEsp:OnChanged(function(Value)
    getgenv().EspGear = Value
    if Value then
        for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
               if v.Name == "MeshPart" then
                    local BillboardGui = createBillboardGui(v, "GearESP")
                    local TextLabel = createStyledTextLabel(BillboardGui, "", Color3.fromRGB(255, 165, 0))
                    
                    spawn(function()
                        while BillboardGui.Parent do
                            wait(0.1)
                            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude)
                            TextLabel.Text = "Gear\n[" .. distance .. "m]"
                        end
                    end)
                end
            end
    else
        local mysticIsland = game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
        if mysticIsland then
            for i,v in pairs(mysticIsland:GetChildren()) do
                if v:FindFirstChild("GearESP") then
                    v.GearESP:Destroy()
                end
            end
        end
    end
end)

local Queue = {
    {
        Name = "FruitCollect",
        Prio = 0,
        LastResult = false,
        ConditionCheck = function()
            for _, V in pairs(Workspace:GetChildren()) do
                if string.find(V.Name, "Fruit") and V:FindFirstChild("Handle") then
                    return true, V
                end
            end
            return false, nil
        end,
        Func = function()
            local hasCondition, target = Queue[1].ConditionCheck()
            if hasCondition and target then
                Tween(target.Handle.CFrame)
                return true
            elseif not hasCondition and getgenv().SelectTypeFarm == "Hop" then
                Hop()
                return true
            end
            return false
        end
    },

    {
        Name = "AutoFarmEliteMob", 
        Prio = 1,
        LastResult = false,
        ConditionCheck = function()
            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
               game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
               game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban") and
                       v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                       v.Humanoid.Health > 0 then
                        return true, v
                    end
                end
            end
            
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                return true, game:GetService("ReplicatedStorage"):FindFirstChild("Diablo")
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                return true, game:GetService("ReplicatedStorage"):FindFirstChild("Deandre")
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                return true, game:GetService("ReplicatedStorage"):FindFirstChild("Urban")
            end
            
            return false, nil
        end,
        Func = function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                local questText = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if string.find(questText, "Diablo") or string.find(questText, "Deandre") or string.find(questText, "Urban") then
                    local hasTarget, target = Queue[2].ConditionCheck() -- Lấy index 2 vì đây là task thứ 2
                    
                    if hasTarget and target then
                        if target.Parent == game:GetService("Workspace").Enemies then
                            repeat
                                task.wait()
                                if ShouldInterrupt("AutoFarmEliteMob") then
                                    return false
                                end
                                
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end

                                EQ(getgenv().WeaponChoose)
                                _B = true
                                target.HumanoidRootPart.Transparency = 1
                                PosMon = target.HumanoidRootPart.CFrame
                                target.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                target.HumanoidRootPart.CanCollide = false
                                target.Humanoid.WalkSpeed = 0
                                target.Head.CanCollide = false
                                Tween(target.HumanoidRootPart.CFrame * RandomCFrame)
                            until not getgenv().AutoFarmEliteMob or target.Humanoid.Health <= 0 or not target.Parent
                            return true
                        else
                            Tween(target.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            return true
                        end
                    end
                end
            else
                local response = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter")
                if getgenv().SelectTypeFarm == "Hop" and response == "I don't have anything for you right now. Come back later." then
                    Hop()
                    return true
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    return true
                end
            end
            return false
        end
    },

    {
        Name = "FarmLevel",
        Prio = 2,
        LastResult = false,
        ConditionCheck = nil,
        Func = function()
            repeat task.wait()
                if Players.LocalPlayer.Data.Level.Value == 1 or Players.LocalPlayer.Data.Level.Value <= 9 then
                    getgenv().FFF = true
                end
            until Players.LocalPlayer.Data.Level.Value >= 10
            if getgenv().FFF then
                getgenv().FFF = false
            end
            repeat task.wait()
                if Players.LocalPlayer.Data.Level.Value >= 10 then
                    getgenv().FF = true
                end
            until Players.LocalPlayer.Data.Level.Value >= 70
            if getgenv().FF then
                getgenv().FF = false
            end
            if not string.find(Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
            end
            if Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                Tween(QuestCheck()[2])
                if (Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCheck()[2].Position).Magnitude <= 3 then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1])
                end
            elseif Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if Workspace.Enemies:FindFirstChild(QuestCheck()[3]) then
                    for _, V in pairs(Workspace.Enemies:GetChildren()) do
                        if V:FindFirstChild("HumanoidRootPart") and V:FindFirstChild("Humanoid") and V.Humanoid.Health > 0 then
                            if V.Name == QuestCheck()[3] then
                                repeat task.wait()
                                    SH(V)
                                    if ShouldInterrupt("FarmLevel") then
                                        return false
                                    end
                                until not getgenv().FarmLevel or V.Humanoid.Health <= 0 or not V.Parent or Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                _B = false
                                return true
                            end
                        end
                    end
                else
                    Tween(QuestCheck()[2])
                end
            end
            return false
        end
    },

    {
        Name = "FarmBone",
        Prio = 3,
        LastResult = false,
        ConditionCheck = nil,
        Func = function()
            local result = BoneFarm()
            if ShouldInterrupt("FarmBone") then
                return false
            end
            return result
        end
    },

    {
        Name = "FarmNearest",
        Prio = 4,
        LastResult = false,
        ConditionCheck = nil,
        Func = function()
            local result = NearestFarm()
            if ShouldInterrupt("FarmNearest") then
                return false
            end
            return result
        end
    },

    {
        Name = "StartFarmChest",
        Prio = 5,
        LastResult = false,
        ConditionCheck = nil,
        Func = function()
            local result = StartFarmChest()
            if ShouldInterrupt("StartFarmChest") then
                return false
            end
            return result
        end
    },

    {
        Name = "AutoRaid",
        Prio = 6,
        LastResult = false,
        ConditionCheck = nil,
        Func = function()
            local result = AutoRaid()
            if ShouldInterrupt("AutoRaid") then
                return false
            end
            return result
        end
    },

    {
        Name = "TweenIsland",
        Prio = 7,
        LastResult = false,
        ConditionCheck = nil,
        Func = function()
            local result = IslandTP()
            if ShouldInterrupt("TweenIsland") then
                return false
            end
            return result
        end
    },

    {
        Name = "TweenToNpc",
        Prio = 8,
        LastResult = false,
        ConditionCheck = nil,
        Func = function()
            local result = TweenToNPc()
            if ShouldInterrupt("TweenToNpc") then
                return false
            end
            return result
        end
    }
}

local function Sort()
    table.sort(Queue, function(a, b)
        return a.Prio < b.Prio
    end)
end

function ShouldInterrupt(currentTaskName)
    local currentPrio = nil
    
    for _, Task in ipairs(Queue) do
        if Task.Name == currentTaskName then
            currentPrio = Task.Prio
            break
        end
    end
    
    if not currentPrio then return false end
    for _, Task in ipairs(Queue) do
        if getgenv()[Task.Name] and Task.Prio < currentPrio then
            if Task.ConditionCheck then
                local hasCondition, _ = Task.ConditionCheck()
                if hasCondition then
                    return true
                end
            else
                return true
            end
        end
    end
    
    return false
end

local function GetActiveHighestPriorityTask()
    Sort()
    
    for _, Task in ipairs(Queue) do
        if getgenv()[Task.Name] then
            if Task.ConditionCheck then
                local hasCondition, _ = Task.ConditionCheck()
                if hasCondition then
                    return Task
                end
            else
                return Task
            end
        end
    end
    
    return nil
end

local function Run()
    task.spawn(function()
        while task.wait() do
            local priorityTask = GetActiveHighestPriorityTask()
            
            if priorityTask then
                local success, result = pcall(priorityTask.Func)
                if success then
                    priorityTask.LastResult = result
                else
                    priorityTask.LastResult = false
                    warn("Error in task " .. priorityTask.Name .. ": " .. tostring(result))
                end
            end
        end
    end)
end

local function ResetTaskState(taskName)
    for _, Task in ipairs(Queue) do
        if Task.Name == taskName then
            Task.LastResult = false
            break
        end
    end
end

task.spawn(function()
    local lastStates = {}
    for _, Task in ipairs(Queue) do
        lastStates[Task.Name] = getgenv()[Task.Name]
    end
    
    while task.wait(0.1) do
        for _, Task in ipairs(Queue) do
            local currentState = getgenv()[Task.Name]
            local lastState = lastStates[Task.Name]
            if lastState == true and currentState == false then
                ResetTaskState(Task.Name)
            end
            
            lastStates[Task.Name] = currentState
        end
    end
end)

Run()

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
InterfaceManager:SetFolder("Romis Hub")
SaveManager:SetFolder("Romis Hub/Blox Fruits")
InterfaceManager:BuildInterfaceSection(Tabs.Setting)
SaveManager:BuildConfigSection(Tabs.Setting)

SaveManager:LoadAutoSaveConfig()

SaveManager:StartAutoSave()

SaveManager:LoadAutoloadConfig()
Window:SelectTab(1)
print("load old settings")
Fluent:Notify({
    Title = "Romis Hub",
    Content = "The script has been loaded.",
    Duration = 5
})
