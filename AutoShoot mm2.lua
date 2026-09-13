-- =============================================================
-- MATZZHUB MM2 — CORREGIDO + AUTO BOMB + AUTOSHOOT
-- Sin tocar nada extra, solo lo solicitado
-- =============================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local Stats = game:GetService("Stats")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local ConfigFileName = "MatzzHub_MM2_Config.json"
local CustomSoundId = "rbxassetid://4499400560"

local DefaultConfig = {
    SilentAim = false,
    GunSilentAim = false,
    KnifeSilentAim = false,
    LeadShot = false,
    WallCheck = false,
    
    HitboxExpand = false,
    HitboxSize = 4,
    HitboxVisible = false,
    
    KnifeHoming = false,     
    KnifeTriggerDist = 25,
    KnifeAura = false,
    KnifeAuraDist = 15,
    KnifeLegitMode = false,
    
    NotifyRoles = false,
    NotifyGunPickup = false,
    NotifyGunDrop = false,
    
    WalkSpeedEnabled = false,
    WalkSpeedValue = 24,
    JumpPowerEnabled = false,
    JumpPowerValue = 80,
    
    AntiFling = false,
    SecondLife = false,
    
    AutoGrabGun = false,
    ShowGrabBtn = false,
    GrabDistance = 15,

    ShowInvisBtn = false,
    
    DesyncEnabled = false,
    ShowDesyncBtn = false,
    
    AntiSilentAim = false,
    AntiSilentAimKey = "X",
    
    Murder_Fill = false, Murder_Outline = false, Murder_Tracer = false, Murder_Name = false, Murder_Dist = false,
    Sheriff_Fill = false, Sheriff_Outline = false, Sheriff_Tracer = false, Sheriff_Name = false, Sheriff_Dist = false,
    Hero_Fill = false, Hero_Outline = false, Hero_Tracer = false, Hero_Name = false, Hero_Dist = false,
    Innocent_Fill = false, Innocent_Outline = false, Innocent_Tracer = false, Innocent_Name = false, Innocent_Dist = false,
    Lobby_Fill = false, Lobby_Outline = false, Lobby_Tracer = false, Lobby_Name = false, Lobby_Dist = false,
    Gun_Fill = false, Gun_Outline = false, Gun_Name = false, Gun_Dist = false, Gun_Tracer = false,
    
    FillTransparency = 0.5,
    OutlineTransparency = 0,
    
    InstantRole = false,
    AntiLag = false,
    DisableFootstep = false,
    ShowRoundTimer = false,
    
    FlingSheriff = false,
    FlingMurderer = false,
    FlingHero = false,
    FlingAll = false,
    
    CoinsReach = false,
    AutoFarmCoins = false,
    
    CoinsRemove = false,
    OptimizerCoins = false,
    
    CustomTheme = "Original",
    
    GamepadEnabled = false,
    SilentAimKey = "ButtonR2",
    InvisibleKey = "ButtonY",
    GrabGunKey = "ButtonB",
    
    AutoPrankBomb = false,
    AutoShootGui = false,
    
    GuiPositions = {}
}

local function DeepCopy(orig)
    local copy = {}
    if type(orig) == 'table' then
        for orig_key, orig_value in next, orig, nil do
            copy[DeepCopy(orig_key)] = DeepCopy(orig_value)
        end
    else
        copy = orig
    end
    return copy
end

local Config = DeepCopy(DefaultConfig)

local Themes = {
    Original = {
        Background = Color3.fromRGB(15, 15, 20),
        Sidebar = Color3.fromRGB(20, 20, 25),
        Accent = Color3.fromRGB(0, 170, 255),
        AccentDark = Color3.fromRGB(0, 80, 150),
        Ghost = Color3.fromRGB(140, 50, 255),
        Text = Color3.fromRGB(255, 255, 255),
        TextDim = Color3.fromRGB(150, 150, 150),
        ItemBG = Color3.fromRGB(30, 30, 35),
        InputBG = Color3.fromRGB(10, 10, 15)
    },
    Red = {
        Background = Color3.fromRGB(20, 15, 15),
        Sidebar = Color3.fromRGB(25, 20, 20),
        Accent = Color3.fromRGB(255, 0, 0),
        AccentDark = Color3.fromRGB(150, 0, 0),
        Ghost = Color3.fromRGB(255, 50, 140),
        Text = Color3.fromRGB(255, 255, 255),
        TextDim = Color3.fromRGB(150, 150, 150),
        ItemBG = Color3.fromRGB(35, 30, 30),
        InputBG = Color3.fromRGB(15, 10, 10)
    },
    Blue = {
        Background = Color3.fromRGB(15, 15, 20),
        Sidebar = Color3.fromRGB(20, 20, 25),
        Accent = Color3.fromRGB(0, 100, 255),
        AccentDark = Color3.fromRGB(0, 50, 150),
        Ghost = Color3.fromRGB(50, 140, 255),
        Text = Color3.fromRGB(255, 255, 255),
        TextDim = Color3.fromRGB(150, 150, 150),
        ItemBG = Color3.fromRGB(30, 30, 35),
        InputBG = Color3.fromRGB(10, 10, 15)
    },
    Verde = {
        Background = Color3.fromRGB(15, 20, 15),
        Sidebar = Color3.fromRGB(20, 25, 20),
        Accent = Color3.fromRGB(0, 255, 0),
        AccentDark = Color3.fromRGB(0, 150, 0),
        Ghost = Color3.fromRGB(140, 255, 50),
        Text = Color3.fromRGB(255, 255, 255),
        TextDim = Color3.fromRGB(150, 150, 150),
        ItemBG = Color3.fromRGB(30, 35, 30),
        InputBG = Color3.fromRGB(10, 15, 10)
    },
    Purple = {
        Background = Color3.fromRGB(20, 15, 20),
        Sidebar = Color3.fromRGB(25, 20, 25),
        Accent = Color3.fromRGB(170, 0, 255),
        AccentDark = Color3.fromRGB(80, 0, 150),
        Ghost = Color3.fromRGB(200, 50, 255),
        Text = Color3.fromRGB(255, 255, 255),
        TextDim = Color3.fromRGB(150, 150, 150),
        ItemBG = Color3.fromRGB(35, 30, 35),
        InputBG = Color3.fromRGB(15, 10, 15)
    },
    Yellow = {
        Background = Color3.fromRGB(20, 20, 15),
        Sidebar = Color3.fromRGB(25, 25, 20),
        Accent = Color3.fromRGB(255, 255, 0),
        AccentDark = Color3.fromRGB(150, 150, 0),
        Ghost = Color3.fromRGB(255, 255, 50),
        Text = Color3.fromRGB(255, 255, 255),
        TextDim = Color3.fromRGB(150, 150, 150),
        ItemBG = Color3.fromRGB(35, 35, 30),
        InputBG = Color3.fromRGB(15, 15, 10)
    },
    Branco = {
        Background = Color3.fromRGB(240, 240, 240),
        Sidebar = Color3.fromRGB(220, 220, 220),
        Accent = Color3.fromRGB(0, 120, 255),
        AccentDark = Color3.fromRGB(0, 80, 200),
        Ghost = Color3.fromRGB(100, 100, 100),
        Text = Color3.fromRGB(0, 0, 0),
        TextDim = Color3.fromRGB(80, 80, 80),
        ItemBG = Color3.fromRGB(200, 200, 200),
        InputBG = Color3.fromRGB(180, 180, 180)
    },
    Preto = {
        Background = Color3.fromRGB(10, 10, 10),
        Sidebar = Color3.fromRGB(20, 20, 20),
        Accent = Color3.fromRGB(255, 255, 255),
        AccentDark = Color3.fromRGB(150, 150, 150),
        Ghost = Color3.fromRGB(100, 100, 100),
        Text = Color3.fromRGB(255, 255, 255),
        TextDim = Color3.fromRGB(150, 150, 150),
        ItemBG = Color3.fromRGB(30, 30, 30),
        InputBG = Color3.fromRGB(20, 20, 20)
    }
}

local function LoadConfigDataOnly()
    if isfile and isfile(ConfigFileName) then
        local content = readfile(ConfigFileName)
        local success, decoded = pcall(function() return HttpService:JSONDecode(content) end)
        if success and decoded then 
            for key, value in pairs(decoded) do 
                if key ~= "GuiPositions" then
                    if Config[key] ~= nil then 
                        Config[key] = value 
                    end
                else
                    Config.GuiPositions = value or {}
                end
            end
        end
    end
end

LoadConfigDataOnly()

local RoleColors = {
    Murderer = Color3.fromRGB(255, 0, 0),
    Sheriff = Color3.fromRGB(0, 0, 255),
    Hero = Color3.fromRGB(255, 255, 0),
    Innocent = Color3.fromRGB(0, 255, 0),
    Lobby = Color3.fromRGB(150, 150, 150),
    Gun = Color3.fromRGB(255, 255, 255)
}

local Theme
if Config.CustomTheme and Themes[Config.CustomTheme] then
    Theme = Themes[Config.CustomTheme]
else
    Config.CustomTheme = "Original"
    Theme = Themes.Original
end

local foundGunDrop = nil
local RoleCache = {} 
local tabs = {} 
local lastMyRole = "FORCE_RESET" 
local rolesNotified = false
local playerDataRemote = nil
local ShootGui, GrabFrame, InvisFrame, DesyncFrame, ToggleButton, MainFrame, ShootButton
local InvisActive = false
local FirstRow, SecondRow, ThirdRow

local desync_on = false
local ghostPart = nil
local desyncChair = nil
local desyncWeld = nil

local flingActive = false
local flingAllActive = false
local flingTargetPlayer = nil
local flingThread = nil
local flingInProgress = false

local closesthitpart = nil
local closestKnifePart = nil
local knifeEquipped = false
local murder = nil
local originalKnifeThrown = nil

local coinOrig = {}
local coinReachConn = nil
local autoFarmCoinsRunning = false
local autoFarmCoinsThread = nil

local coinsRemoveConn = nil
local optimizerCoinsConn = nil

local footstepConnection = nil
local roundTimerGui = nil
local roundTimerConnection = nil

local gamepadConnections = {}
local gamepadActive = false
local keyCodes = {
    ButtonR2 = Enum.KeyCode.ButtonR2,
    ButtonY = Enum.KeyCode.ButtonY,
    ButtonB = Enum.KeyCode.ButtonB,
    ButtonA = Enum.KeyCode.ButtonA,
    ButtonX = Enum.KeyCode.ButtonX,
    ButtonL2 = Enum.KeyCode.ButtonL2,
    ButtonR1 = Enum.KeyCode.ButtonR1,
    ButtonL1 = Enum.KeyCode.ButtonL1,
    DPadUp = Enum.KeyCode.DPadUp,
    DPadDown = Enum.KeyCode.DPadDown,
    DPadLeft = Enum.KeyCode.DPadLeft,
    DPadRight = Enum.KeyCode.DPadRight
}

local isRTPressed = false
local lastRTInputTime = 0
local rtHoldDuration = 0

local secondLifeConnection = nil

local notifyOrder = 0

local gunTracerLine = nil
local desyncTracerLine = nil

local prankBombConnection = nil
local AutoPrankBomb_Enabled = false
local BombGui, BombFrame, BombBtn, BombStroke

local antiSilentAimData = {
    savedCFrame = nil,
    savedVelocity = nil
}

-- =============================================================
-- 🔧 FUNCIÓN CORREGIDA — NO DA ERROR DE TECLA
-- =============================================================
local function GetKeyCodeFromString(keyString)
    if not keyString then return nil end
    if keyCodes[keyString] then return keyCodes[keyString] end
    local success, result = pcall(function() return Enum.KeyCode[keyString] end)
    if success and result then return result end
    return nil
end

-- =============================================================
-- ✅ AUTO PRANK BOMB — TAL CUAL LO DISTE
-- =============================================================
local function ApplyAutoPrankBomb(state)
    if state then
        if prankBombConnection then
            prankBombConnection:Disconnect()
        end
        prankBombConnection = Workspace.ChildAdded:Connect(function(obj)
            if obj.Name == "Handle" then
                task.spawn(function()
                    local creator = obj:WaitForChild("creator", 0.5)
                    if creator then
                        local donoDaBomba = false
                        if creator:IsA("ObjectValue") and creator.Value == LocalPlayer then
                            donoDaBomba = true
                        elseif creator:IsA("StringValue") and creator.Value == LocalPlayer.Name then
                            donoDaBomba = true
                        elseif creator.Value == LocalPlayer.Name then
                            donoDaBomba = true
                        end
                        if donoDaBomba then
                            local character = LocalPlayer.Character
                            if character then
                                local rootPart = character:FindFirstChild("HumanoidRootPart")
                                local humanoid = character:FindFirstChild("Humanoid")
                                if rootPart and humanoid and obj:IsA("BasePart") then
                                    obj.CFrame = rootPart.CFrame * CFrame.new(0, -3, 0)
                                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    else
        if prankBombConnection then
            prankBombConnection:Disconnect()
            prankBombConnection = nil
        end
    end
end

local function ToggleAutoBomb()
    PlayClickSound()
    AutoPrankBomb_Enabled = not AutoPrankBomb_Enabled
    Config.AutoPrankBomb = AutoPrankBomb_Enabled
    ApplyAutoPrankBomb(AutoPrankBomb_Enabled)
    
    if AutoPrankBomb_Enabled then
        BombBtn.Text = "ACTIVE"
        BombBtn.TextColor3 = Color3.fromRGB(0, 255, 150)
        BombStroke.Color = Color3.fromRGB(0, 255, 150)
    else
        BombBtn.Text = "AUTO BOMB"
        BombBtn.TextColor3 = Theme.Accent
        BombStroke.Color = Theme.Accent
    end
end

-- =============================================================
-- 🔫 AUTOSHOOT — TAL CUAL LO DISTE
-- =============================================================
local NathConfig = {
    AutoShoot = false,
    BulletSpeed = 3000,    
    ShootDelay = 0.001,
    PredMultiplier = 0.85,
    MaxTargetDist = 5000,
    ShowVisuals = true,
    ReplicationBuffer = -0.015,
    TargetPingEstimate = 0.03, 
    MaxLeadTime = 0.4,     
    LongRangeThreshold = 250,
    AirborneTrustReduction = 1.0,
    VelocityDecayFactor = 15,
    SolverIterations = 4,
    SolverEpsilon = 0.005,
    DynamicLeadCap = false,
    MinLeadTime = 0.0,
    TerminalVelocity = -150
}
getgenv().NathConfig = NathConfig

local currentPing = 0.05
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local rawPing = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
            currentPing = math.clamp(rawPing, 0.01, 0.15)
        end)
    end
end)

GetClosestTarget = function()
    local mejorObjetivo = nil
    local menorDistancia3D = NathConfig.MaxTargetDist
    local myChar = LocalPlayer.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
    if not myRoot then return nil end

    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
            local isMurderer = false
            for _, item in ipairs(p.Character:GetChildren()) do
                if item:IsA("Tool") and (item.Name == "Knife" or item:FindFirstChild("KnifeServer") or item:FindFirstChild("Throw")) then
                    isMurderer = true; break
                end
            end
            if not isMurderer and p:FindFirstChild("Backpack") then
                for _, item in ipairs(p.Backpack:GetChildren()) do
                    if item:IsA("Tool") and (item.Name == "Knife" or item:FindFirstChild("KnifeServer") or item:FindFirstChild("Throw")) then
                        isMurderer = true; break
                    end
                end
            end
            if isMurderer then
                local partesParaRevisar = {
                    "HumanoidRootPart", "Torso", "UpperTorso", "Head",
                    "Right Arm", "Left Arm", "Right Leg", "Left Leg",
                    "RightUpperArm", "LeftUpperArm", "RightLowerArm", "LeftLowerArm",
                    "RightUpperLeg", "LeftUpperLeg", "RightLowerLeg", "LeftLowerLeg"
                }
                for _, nombreParte in ipairs(partesParaRevisar) do
                    local parteTarget = p.Character:FindFirstChild(nombreParte)
                    if parteTarget then
                        local dist3D = (parteTarget.Position - myRoot.Position).Magnitude
                        if dist3D < menorDistancia3D then
                            mejorObjetivo = p.Character
                            menorDistancia3D = dist3D
                            break
                        end
                    end
                end
            end
        end
    end
    return mejorObjetivo
end

local function IsTrajectoryClear(origin, predictedPos, targetChar)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.IgnoreWater = true
    local ignoreList = {LocalPlayer.Character, Camera}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character ~= targetChar then
            table.insert(ignoreList, p.Character)
        end
    end
    params.FilterDescendantsInstances = ignoreList
    local dir = predictedPos - origin
    local distLeft = dir.Magnitude
    local curOrigin = origin
    for i = 1, 5 do
        local res = Workspace:Raycast(curOrigin, dir.Unit * distLeft, params)
        if not res or (res.Instance and res.Instance:IsDescendantOf(targetChar)) then return true end
        if res.Instance.Transparency >= 0.5 or not res.Instance.CanCollide then
            table.insert(ignoreList, res.Instance)
            params.FilterDescendantsInstances = ignoreList
            curOrigin = res.Position + (dir.Unit * 0.01)
            distLeft = (predictedPos - curOrigin).Magnitude
        else
            return false
        end
    end
    return false
end

local function GetPredictedPosition(targetChar)
    local myRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local tempRoot = targetChar:FindFirstChild("HumanoidRootPart")
    local humanoid = targetChar:FindFirstChild("Humanoid")
    if not myRoot or not tempRoot or not humanoid then return nil, nil end

    local bestPart = targetChar:FindFirstChild("UpperTorso") or targetChar:FindFirstChild("Torso") or tempRoot
    local origin = Camera.CFrame.Position
    local distance = (bestPart.Position - origin).Magnitude
    local velocity = tempRoot.AssemblyLinearVelocity
    
    if velocity.Magnitude < 3.5 then velocity = Vector3.zero end

    local mm2GunDelay = 0.12 
    local safePing = math.clamp(currentPing, 0.01, 0.10)
    local timeToHit = mm2GunDelay + safePing + (distance / 5000) 
    
    local intensityMult = 1.0
    if distance > 50 then
        intensityMult = math.clamp(1 - ((distance - 50) / 250), 0.65, 1.0)
    end
    timeToHit = timeToHit * intensityMult

    local predX = velocity.X * timeToHit
    local predZ = velocity.Z * timeToHit
    local predY = 0

    local isAirborne = humanoid:GetState() == Enum.HumanoidStateType.Freefall or humanoid:GetState() == Enum.HumanoidStateType.Jumping
    if isAirborne then
        local gravityDrop = 0.5 * Workspace.Gravity * (timeToHit ^ 2)
        predY = (velocity.Y * timeToHit) - gravityDrop
    else
        predY = velocity.Y * timeToHit
    end

    local predictionOffset = Vector3.new(predX, predY, predZ)
    local rawPred = bestPart.Position + predictionOffset

    if not IsTrajectoryClear(origin, rawPred, targetChar) then
        local headPart = targetChar:FindFirstChild("Head")
        if headPart then
            local headPred = headPart.Position + predictionOffset
            if IsTrajectoryClear(origin, headPred, targetChar) then
                return headPred, headPart
            end
        end
    end

    return rawPred, bestPart
end

GetSmartShotPosition = function(targetChar)
    local predictedPos, bestPart = GetPredictedPosition(targetChar)
    if not bestPart or not predictedPos then return nil end
    return predictedPos
end

getgenv().DispararEventoDirecto = function(estado)
    if not estado then return end
    local myChar = LocalPlayer.Character
    if not myChar then return end
    local gun = myChar:FindFirstChild("Gun") or (LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChild("Gun"))
    if not gun then return end
    
    local targetChar = GetClosestTarget()
    if not targetChar then return end
    
    local predictedPos = GetSmartShotPosition(targetChar)
    if not predictedPos then return end
    
    local originPos = Camera.CFrame.Position
    if gun:FindFirstChild("Handle") then
        originPos = gun.Handle.Position
    end
    
    local originCFrame = CFrame.new(originPos, predictedPos)
    local targetCFrame = CFrame.new(predictedPos)
    
    pcall(function() gun.Shoot:FireServer(originCFrame, targetCFrame) end)
    pcall(function() gun.KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(1, predictedPos, "Nath2") end)
end

local autoShootConnection = nil
local aiFloatingToggle = nil
local AutoShootGuiVisible = false

local function ToggleAutoShootGui()
    PlayClickSound()
    AutoShootGuiVisible = not AutoShootGuiVisible
    if aiFloatingToggle then
        aiFloatingToggle.Visible = AutoShootGuiVisible
    end
    Config.AutoShootGui = AutoShootGuiVisible
end

RunService.Heartbeat:Connect(function()
    if not NathConfig.AutoShoot then return end
    local char = LocalPlayer.Character
    local hasGun = char and char:FindFirstChild("Gun")
    if hasGun then 
        getgenv().DispararEventoDirecto(true) 
    end
end)

pcall(function()
    local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
        
        if not checkcaller() and method == "FireServer" and tostring(self) == "Shoot" then
            if not NathConfig.AutoShoot then
                return oldNamecall(self, ...)
            end
            local targetChar = GetClosestTarget()
            if targetChar then
                local predictedPos = GetSmartShotPosition(targetChar)
                if predictedPos then
                    local originPos = Camera.CFrame.Position
                    local gun = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Gun")
                    if gun and gun:FindFirstChild("Handle") then
                        originPos = gun.Handle.Position
                    end
                    args[1] = CFrame.new(originPos, predictedPos)
                    args[2] = CFrame.new(predictedPos)
                    return oldNamecall(self, unpack(args))
                end
            end
        end
        return oldNamecall(self, ...)
    end))
end)

-- =============================================================
-- FUNCIONES AUXILIARES ORIGINALES
-- =============================================================
if _G.MatzzHubLoaded then
    if CoreGui:FindFirstChild("MatzzHubMain") then CoreGui.MatzzHubMain:Destroy() end
    if CoreGui:FindFirstChild("ShootGui_Overlay_V19") then CoreGui.ShootGui_Overlay_V19:Destroy() end
    if CoreGui:FindFirstChild("MatzzRoleAlert") then CoreGui.MatzzRoleAlert:Destroy() end
    if CoreGui:FindFirstChild("MatzzTracersGui") then CoreGui.MatzzTracersGui:Destroy() end
    if CoreGui:FindFirstChild("MatzzNotifyContainer") then CoreGui.MatzzNotifyContainer:Destroy() end
    if CoreGui:FindFirstChild("MatzzGrabGunBtn") then CoreGui.MatzzGrabGunBtn:Destroy() end
    if CoreGui:FindFirstChild("MatzzInvisBtn") then CoreGui.MatzzInvisBtn:Destroy() end
    if CoreGui:FindFirstChild("MatzzDesyncBtn") then CoreGui.MatzzDesyncBtn:Destroy() end
    if CoreGui:FindFirstChild("MatzzRoundTimer") then CoreGui.MatzzRoundTimer:Destroy() end
    if CoreGui:FindFirstChild("MatzzAutoBombBtn") then CoreGui.MatzzAutoBombBtn:Destroy() end
    if CoreGui:FindFirstChild("AstraHubMM2_Overlays") then CoreGui.AstraHubMM2_Overlays:Destroy() end
end
_G.MatzzHubLoaded = true

local function AddCorner(instance, radius) 
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = instance
    return corner 
end

local function AddStroke(instance, color, thickness) 
    local stroke = Instance.new("UIStroke")
    stroke.Color = color
    stroke.Thickness = thickness
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Parent = instance
    return stroke 
end

local function PlayClickSound()
    task.spawn(function()
        local s = Instance.new("Sound")
        s.Name = "MatzzClickSound"
        s.SoundId = CustomSoundId
        s.Volume = 1
        s.Parent = CoreGui
        s:Play()
        s.Ended:Connect(function()
            s:Destroy()
        end)
    end)
end

local function MakeDraggableCornersOnly(frame)
    local dragging, dragInput, dragStart, startPos
    local cornerSize = 20
    
    local function createCornerDetector(position, size)
        local detector = Instance.new("Frame")
        detector.Name = "DragCorner_" .. position
        detector.Size = UDim2.new(0, size, 0, size)
        detector.BackgroundTransparency = 1
        detector.ZIndex = frame.ZIndex + 1
        detector.Parent = frame
        
        if position == "TopLeft" then
            detector.Position = UDim2.new(0, 0, 0, 0)
        elseif position == "TopRight" then
            detector.Position = UDim2.new(1, -size, 0, 0)
        elseif position == "BottomLeft" then
            detector.Position = UDim2.new(0, 0, 1, -size)
        elseif position == "BottomRight" then
            detector.Position = UDim2.new(1, -size, 1, -size)
        end
        
        return detector
    end
    
    local topLeftDetector = createCornerDetector("TopLeft", cornerSize)
    local topRightDetector = createCornerDetector("TopRight", cornerSize)
    local bottomLeftDetector = createCornerDetector("BottomLeft", cornerSize)
    local bottomRightDetector = createCornerDetector("BottomRight", cornerSize)
    
    local function startDragging(input)
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
    
    local detectors = {topLeftDetector, topRightDetector, bottomLeftDetector, bottomRightDetector}
    
    for _, detector in ipairs(detectors) do
        detector.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                PlayClickSound()
                startDragging(input)
            end
        end)
    end
    
    for _, detector in ipairs(detectors) do
        detector.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
    end
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
end

local function MakeDraggable(frame, trigger)
    trigger = trigger or frame
    local dragging, dragInput, dragStart, startPos
    trigger.InputBegan:Connect(function(input) 
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function() 
                if input.UserInputState == Enum.UserInputState.End then 
                    dragging = false 
                end 
            end) 
        end 
    end)
    trigger.InputChanged:Connect(function(input) 
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then 
            dragInput = input 
        end 
    end)
    UserInputService.InputChanged:Connect(function(input) 
        if dragging and input == dragInput then 
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end 
    end)
end

local function ApplyThemeToGUI()
    if MainFrame then
        MainFrame.BackgroundColor3 = Theme.Background
        local mainStroke = MainFrame:FindFirstChildOfClass("UIStroke")
        if mainStroke then
            mainStroke.Color = Theme.Accent
        end
    end
    
    if Sidebar then
        Sidebar.BackgroundColor3 = Theme.Sidebar
    end
    
    if TitleLabel then
        TitleLabel.TextColor3 = Theme.Accent
    end
    
    for _, tab in ipairs(tabs) do
        if tab.Btn then
            tab.Btn.BackgroundColor3 = Theme.Background
            tab.Btn.TextColor3 = Theme.TextDim
            if tab.Frame and tab.Frame.Visible then
                tab.Btn.BackgroundColor3 = Theme.AccentDark
                tab.Btn.TextColor3 = Theme.Text
            end
        end
    end
    
    if ShootButton then
        ShootButton.BackgroundColor3 = Theme.Background
        ShootButton.TextColor3 = Theme.Accent
        local shootStroke = ShootButton:FindFirstChildOfClass("UIStroke")
        if shootStroke then
            shootStroke.Color = Theme.Accent
            local gradient = shootStroke:FindFirstChildOfClass("UIGradient")
            if gradient then
                gradient.Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0.00, Theme.Accent),
                    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)),
                    ColorSequenceKeypoint.new(1.00, Theme.Accent)
                }
            end
        end
    end
    
    if GrabFrame then
        GrabFrame.BackgroundColor3 = Theme.Background
        local grabStroke = GrabFrame:FindFirstChildOfClass("UIStroke")
        if grabStroke then
            grabStroke.Color = Theme.Accent
        end
    end
    
    if GrabBtn then
        GrabBtn.TextColor3 = Theme.Accent
    end
    
    if InvisFrame then
        InvisFrame.BackgroundColor3 = Theme.Background
        local invisStroke = InvisFrame:FindFirstChildOfClass("UIStroke")
        if invisStroke then
            invisStroke.Color = Theme.Ghost
        end
    end
    
    if InvisBtn then
        InvisBtn.TextColor3 = Theme.Ghost
    end
    
    if DesyncFrame then
        DesyncFrame.BackgroundColor3 = Theme.Background
        local desyncStroke = DesyncFrame:FindFirstChildOfClass("UIStroke")
        if desyncStroke then
            if desync_on then
                desyncStroke.Color = Color3.fromRGB(0, 255, 150)
            else
                desyncStroke.Color = Theme.Ghost
            end
        end
    end
    
    if DesyncBtn then
        if desync_on then
            DesyncBtn.TextColor3 = Color3.fromRGB(0, 255, 150)
        else
            DesyncBtn.TextColor3 = Theme.Ghost
        end
    end
    
    if BombFrame then
        BombFrame.BackgroundColor3 = Theme.Background
    end
    
    if NotifyContainer then
        for _, notify in ipairs(NotifyContainer:GetDescendants()) do
            if notify:IsA("TextLabel") and notify.Text == "MATZZ MM2" then
                notify.TextColor3 = Theme.Accent
            elseif notify:IsA("Frame") and notify:FindFirstChildOfClass("UIStroke") then
                notify.BackgroundColor3 = Theme.Sidebar
                local stroke = notify:FindFirstChildOfClass("UIStroke")
                if stroke then
                    stroke.Color = Theme.Accent
                end
            end
        end
    end
    
    if FirstRow then
        for _, child in ipairs(FirstRow:GetChildren()) do
            if child:IsA("TextButton") then
                child.BackgroundColor3 = Theme.ItemBG
                child.TextColor3 = Config.CustomTheme == child.Text and Theme.Accent or Theme.TextDim
            end
        end
    end
    
    if SecondRow then
        for _, child in ipairs(SecondRow:GetChildren()) do
            if child:IsA("TextButton") then
                child.BackgroundColor3 = Theme.ItemBG
                child.TextColor3 = Config.CustomTheme == child.Text and Theme.Accent or Theme.TextDim
            end
        end
    end
    
    if ThirdRow then
        for _, child in ipairs(ThirdRow:GetChildren()) do
            if child:IsA("TextButton") then
                child.BackgroundColor3 = Theme.ItemBG
                child.TextColor3 = Config.CustomTheme == child.Text and Theme.Accent or Theme.TextDim
            end
        end
    end
    
    if ghostPart then
        local ghostColor = Theme.Ghost
        ghostPart.Color = ghostColor
        local highlight = ghostPart:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight.FillColor = ghostColor
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        end
    end
end

local function SetTheme(themeName)
    if Themes[themeName] then
        Theme = Themes[themeName]
        Config.CustomTheme = themeName
        ApplyThemeToGUI()
        return true
    end
    return false
end

local function ApplySecondLife(state)
    if state then
        local function setupGodmode(character)
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                if secondLifeConnection then
                    secondLifeConnection:Disconnect()
                end
                secondLifeConnection = humanoid.HealthChanged:Connect(function()
                    if humanoid.Health < humanoid.MaxHealth then
                        humanoid.Health = humanoid.MaxHealth
                    end
                end)
            end
        end

        if LocalPlayer.Character then
            setupGodmode(LocalPlayer.Character)
        end

        LocalPlayer.CharacterAdded:Connect(function(character)
            task.wait(0.5)
            setupGodmode(character)
        end)
    else
        if secondLifeConnection then
            secondLifeConnection:Disconnect()
            secondLifeConnection = nil
        end
    end
end

local function ApplyDisableFootstep(state)
    if state then
        local function removeFootsteps()
            for _, obj in ipairs(Workspace:GetDescendants()) do
                if obj.Name == "Footsteps" then
                    obj:Destroy()
                end
            end
        end

        removeFootsteps()

        footstepConnection = Workspace.DescendantAdded:Connect(function(obj)
            if obj.Name == "Footsteps" then
                task.wait(0.1)
                if obj and obj.Parent then
                    obj:Destroy()
                end
            end
        end)
    else
        if footstepConnection then
            footstepConnection:Disconnect()
            footstepConnection = nil
        end
    end
end

local function ApplyShowRoundTimer(state)
    if state then
        roundTimerGui = Instance.new("ScreenGui")
        roundTimerGui.Name = "MatzzRoundTimer"
        roundTimerGui.Parent = CoreGui
        roundTimerGui.IgnoreGuiInset = true
        roundTimerGui.ResetOnSpawn = false
        roundTimerGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        local timerFrame = Instance.new("Frame")
        timerFrame.Size = UDim2.new(0, 150, 0, 40)
        timerFrame.Position = UDim2.new(0.5, -75, 0, 20)
        timerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        timerFrame.BackgroundTransparency = 0.5
        timerFrame.BorderSizePixel = 0
        timerFrame.Parent = roundTimerGui
        AddCorner(timerFrame, 6)
        AddStroke(timerFrame, Theme.Accent, 1)

        local timerLabel = Instance.new("TextLabel")
        timerLabel.Size = UDim2.new(1, 0, 1, 0)
        timerLabel.BackgroundTransparency = 1
        timerLabel.Text = "00:00"
        timerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        timerLabel.Font = Enum.Font.GothamBlack
        timerLabel.TextSize = 20
        timerLabel.TextStrokeTransparency = 0.5
        timerLabel.Parent = timerFrame

        local function updateTimer()
            local timerPart = Workspace:FindFirstChild("RoundTimerPart")
            if timerPart and timerPart:FindFirstChild("SurfaceGui") then
                local surfaceGui = timerPart.SurfaceGui
                local timerObj = surfaceGui:FindFirstChild("Timer")
                if timerObj and timerObj:IsA("TextLabel") then
                    timerLabel.Text = timerObj.Text
                else
                    timerLabel.Text = "00:00"
                end
            else
                timerLabel.Text = "00:00"
            end
        end

        updateTimer()
        roundTimerConnection = RunService.Heartbeat:Connect(updateTimer)
    else
        if roundTimerConnection then
            roundTimerConnection:Disconnect()
            roundTimerConnection = nil
        end
        if roundTimerGui then
            roundTimerGui:Destroy()
            roundTimerGui = nil
        end
    end
end

local NotifyContainer = Instance.new("ScreenGui")
NotifyContainer.Name = "MatzzNotifyContainer"
NotifyContainer.Parent = CoreGui
NotifyContainer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
NotifyContainer.IgnoreGuiInset = true

local NotifyList = Instance.new("Frame")
NotifyList.Size = UDim2.new(0, 300, 1, 0)
NotifyList.AnchorPoint = Vector2.new(0, 0)
NotifyList.Position = UDim2.new(0, 20, 0.8, 0)
NotifyList.BackgroundTransparency = 1
NotifyList.Parent = NotifyContainer

local NotifyLayout = Instance.new("UIListLayout")
NotifyLayout.Parent = NotifyList
NotifyLayout.SortOrder = Enum.SortOrder.LayoutOrder
NotifyLayout.VerticalAlignment = Enum.VerticalAlignment.Top
NotifyLayout.Padding = UDim.new(0, 8)

local function MatzzNotify(title, text, duration)
    notifyOrder = notifyOrder - 1

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 60)
    Frame.BackgroundColor3 = Theme.Sidebar
    Frame.BackgroundTransparency = 0.1
    Frame.BorderSizePixel = 0
    Frame.LayoutOrder = notifyOrder
    Frame.Parent = NotifyList
    
    local Stroke = Instance.new("UIStroke")
    Stroke.Parent = Frame
    Stroke.Color = Theme.Accent
    Stroke.Thickness = 1.5
    Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 6)
    Corner.Parent = Frame
    
    local TitleLbl = Instance.new("TextLabel")
    TitleLbl.Parent = Frame
    TitleLbl.Size = UDim2.new(1, -10, 0, 20)
    TitleLbl.Position = UDim2.new(0, 10, 0, 5)
    TitleLbl.BackgroundTransparency = 1
    TitleLbl.Text = title
    TitleLbl.Font = Enum.Font.GothamBlack
    TitleLbl.TextColor3 = Theme.Accent
    TitleLbl.TextSize = 14
    TitleLbl.TextXAlignment = Enum.TextXAlignment.Left
    
    local MsgLbl = Instance.new("TextLabel")
    MsgLbl.Parent = Frame
    MsgLbl.Size = UDim2.new(1, -10, 0, 30)
    MsgLbl.Position = UDim2.new(0, 10, 0, 25)
    MsgLbl.BackgroundTransparency = 1
    MsgLbl.Text = text
    MsgLbl.Font = Enum.Font.GothamSemibold
    MsgLbl.TextColor3 = Theme.Text
    MsgLbl.TextSize = 12
    MsgLbl.TextXAlignment = Enum.TextXAlignment.Left
    MsgLbl.TextWrapped = true
    
    Frame.BackgroundTransparency = 1
    TitleLbl.TextTransparency = 1
    MsgLbl.TextTransparency = 1
    Stroke.Transparency = 1
    
    TweenService:Create(Frame, TweenInfo.new(0.3), {BackgroundTransparency = 0.1}):Play()
    TweenService:Create(TitleLbl, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    TweenService:Create(MsgLbl, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    TweenService:Create(Stroke, TweenInfo.new(0.3), {Transparency = 0}):Play()
    
    task.delay(duration or 3, function()
        if Frame then
            TweenService:Create(Frame, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
            TweenService:Create(TitleLbl, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
            TweenService:Create(MsgLbl, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
            TweenService:Create(Stroke, TweenInfo.new(0.3), {Transparency = 1}):Play()
            task.wait(0.3)
            Frame:Destroy()
        end
    end)
end

local function GetLeadShotPosition(targetRootPart)
    local currentPos = targetRootPart.Position
    if Config.LeadShot then 
        local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
        currentPos = currentPos + (targetRootPart.Velocity * ping * 1.3) 
    end
    return currentPos
end

local function PerformSilentAimDirectly()
    if not Config.SilentAim then
        return false
    end
    
    local gun = nil
    
    for _, i in ipairs(LocalPlayer.Character:GetChildren()) do
        if i:IsA("Tool") and (string.find(string.lower(i.Name), "gun") or i.Name == "Revolver") then
            gun = i
            break
        end
    end
    
    if not gun then
        for _, i in ipairs(LocalPlayer.Backpack:GetChildren()) do
            if i:IsA("Tool") and (string.find(string.lower(i.Name), "gun") or i.Name == "Revolver") then
                gun = i
                break
            end
        end
    end
    
    if not gun then
        return false
    end
    
    local targetPlr = nil
    for plrName, role in pairs(RoleCache) do
        if role == "Murderer" then
            targetPlr = Players:FindFirstChild(plrName)
            if targetPlr and targetPlr.Character and targetPlr.Character:FindFirstChild("HumanoidRootPart") then
                break
            else
                targetPlr = nil
            end
        end
    end
    
    if not targetPlr or not targetPlr.Character or not targetPlr.Character:FindFirstChild("HumanoidRootPart") then
        return false
    end
    
    if Config.WallCheck then
        local origin = Camera.CFrame.Position
        local targetPosRaw = targetPlr.Character.HumanoidRootPart.Position
        local direction = (targetPosRaw - origin).Unit * (targetPosRaw - origin).Magnitude
        
        local rayParams = RaycastParams.new()
        rayParams.FilterDescendantsInstances = {LocalPlayer.Character, targetPlr.Character, workspace:FindFirstChild("GunDrop")}
        rayParams.FilterType = Enum.RaycastFilterType.Exclude
        
        if workspace:Raycast(origin, direction, rayParams) then
            return false
        end
    end
