    local targetPart = targetPlr.Character:FindFirstChild("HumanoidRootPart")
    local predictedPos = GetLeadShotPosition(targetPart)
    
    local originPos = Camera.CFrame.Position
    if gun:FindFirstChild("Handle") then
        originPos = gun.Handle.Position
    end

    local originCFrame = CFrame.new(originPos, predictedPos)
    local targetCFrame = CFrame.new(predictedPos)

    pcall(function() gun.Shoot:FireServer(originCFrame, targetCFrame) end)
    pcall(function() gun.KnifeLocal.CreateBeam.RemoteFunction:InvokeServer(1, predictedPos, "Nath2") end)
    
    return true
end

-- =============================================================
-- 🔄 GUARDAR Y CARGAR CONFIG
-- =============================================================
local function SaveConfig()
    local saveData = DeepCopy(Config)
    saveData.GuiPositions = {}
    if MainFrame then saveData.GuiPositions.Main = MainFrame.Position end
    if ShootGui then saveData.GuiPositions.Shoot = ShootGui.Position end
    if BombFrame then saveData.GuiPositions.Bomb = BombFrame.Position end
    if GrabFrame then saveData.GuiPositions.Grab = GrabFrame.Position end
    if InvisFrame then saveData.GuiPositions.Invis = InvisFrame.Position end
    if DesyncFrame then saveData.GuiPositions.Desync = DesyncFrame.Position end
    
    if writefile then
        pcall(function() writefile(ConfigFileName, HttpService:JSONEncode(saveData)) end)
    end
end

-- =============================================================
-- 🖥️ CREAR GUI PRINCIPAL
-- =============================================================
MainFrame = Instance.new("ScreenGui")
MainFrame.Name = "MatzzHubMain"
MainFrame.Parent = CoreGui
MainFrame.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainFrame.IgnoreGuiInset = true
MainFrame.ResetOnSpawn = false

local MainContainer = Instance.new("Frame")
MainContainer.Size = UDim2.new(0, 320, 0, 420)
MainContainer.Position = Config.GuiPositions.Main or UDim2.new(0.02, 0, 0.1, 0)
MainContainer.BackgroundColor3 = Theme.Background
MainContainer.BorderSizePixel = 0
MainContainer.Parent = MainFrame
AddCorner(MainContainer, 10)
local MainStroke = AddStroke(MainContainer, Theme.Accent, 1.5)

local Sidebar = Instance.new("Frame")
Sidebar.Size = UDim2.new(0, 90, 1, 0)
Sidebar.BackgroundColor3 = Theme.Sidebar
Sidebar.BorderSizePixel = 0
Sidebar.Parent = MainContainer

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -10, 0, 40)
TitleLabel.Position = UDim2.new(0, 5, 0, 5)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "MATZZ MM2"
TitleLabel.Font = Enum.Font.GothamBlack
TitleLabel.TextColor3 = Theme.Accent
TitleLabel.TextSize = 18
TitleLabel.Parent = Sidebar

local TabContainer = Instance.new("Frame")
TabContainer.Size = UDim2.new(1, -90, 1, 0)
TabContainer.Position = UDim2.new(0, 90, 0, 0)
TabContainer.BackgroundTransparency = 1
TabContainer.Parent = MainContainer

MakeDraggable(MainContainer)

-- Pestañas
local TabList = {
    {Name = "Auto", Func = function() end},
    {Name = "Visual", Func = function() end},
    {Name = "Mov", Func = function() end},
    {Name = "Extra", Func = function() end},
    {Name = "Tema", Func = function() end}
}

local function OpenTab(index)
    for i, tab in ipairs(tabs) do
        tab.Frame.Visible = (i == index)
        tab.Btn.BackgroundColor3 = (i == index) and Theme.AccentDark or Theme.Background
        tab.Btn.TextColor3 = (i == index) and Theme.Text or Theme.TextDim
    end
end

for i, tabData in ipairs(TabList) do
    local TabBtn = Instance.new("TextButton")
    TabBtn.Size = UDim2.new(1, -10, 0, 35)
    TabBtn.Position = UDim2.new(0, 5, 0, 50 + (i-1)*40)
    TabBtn.BackgroundColor3 = Theme.Background
    TabBtn.Text = tabData.Name
    TabBtn.Font = Enum.Font.GothamBold
    TabBtn.TextColor3 = Theme.TextDim
    TabBtn.TextSize = 13
    TabBtn.BorderSizePixel = 0
    TabBtn.Parent = Sidebar
    AddCorner(TabBtn, 6)
    
    local TabFrame = Instance.new("ScrollingFrame")
    TabFrame.Size = UDim2.new(1, -20, 1, -10)
    TabFrame.Position = UDim2.new(0, 10, 0, 5)
    TabFrame.BackgroundTransparency = 1
    TabFrame.ScrollBarThickness = 3
    TabFrame.ScrollBarColor3 = Theme.Accent
    TabFrame.Visible = (i == 1)
    TabFrame.Parent = TabContainer
    
    TabBtn.MouseButton1Click:Connect(function()
        PlayClickSound()
        OpenTab(i)
    end)
    
    tabs[i] = {Btn = TabBtn, Frame = TabFrame}
    tabData.Func(TabFrame)
end

-- =============================================================
-- 🎛️ BOTONES AUTO SHOOT & AUTO BOMB
-- =============================================================
-- Botón AutoShoot
ShootGui = Instance.new("ScreenGui")
ShootGui.Name = "ShootGui_Overlay_V19"
ShootGui.Parent = CoreGui
ShootGui.IgnoreGuiInset = true
ShootGui.ResetOnSpawn = false

ShootButton = Instance.new("TextButton")
ShootButton.Size = UDim2.new(0, 140, 0, 45)
ShootButton.Position = Config.GuiPositions.Shoot or UDim2.new(0.7, 0, 0.5, 0)
ShootButton.BackgroundColor3 = Theme.Background
ShootButton.Text = "AUTO SHOOT"
ShootButton.Font = Enum.Font.GothamBlack
ShootButton.TextColor3 = Theme.Accent
ShootButton.TextSize = 14
ShootButton.BorderSizePixel = 0
ShootButton.Visible = Config.AutoShootGui
ShootButton.Parent = ShootGui
AddCorner(ShootButton, 8)
local ShootStroke = AddStroke(ShootButton, Theme.Accent, 2)
local ShootGrad = Instance.new("UIGradient")
ShootGrad.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Theme.Accent),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255,255,255)),
    ColorSequenceKeypoint.new(1, Theme.Accent)
}
ShootGrad.Parent = ShootStroke

MakeDraggable(ShootButton)

ShootButton.MouseButton1Click:Connect(function()
    PlayClickSound()
    NathConfig.AutoShoot = not NathConfig.AutoShoot
    if NathConfig.AutoShoot then
        ShootButton.Text = "DISPARANDO"
        ShootButton.TextColor3 = Color3.fromRGB(0, 255, 150)
        ShootStroke.Color = Color3.fromRGB(0, 255, 150)
    else
        ShootButton.Text = "AUTO SHOOT"
        ShootButton.TextColor3 = Theme.Accent
        ShootStroke.Color = Theme.Accent
    end
end)

-- Botón AutoBomb
BombGui = Instance.new("ScreenGui")
BombGui.Name = "MatzzAutoBombBtn"
BombGui.Parent = CoreGui
BombGui.IgnoreGuiInset = true
BombGui.ResetOnSpawn = false

BombFrame = Instance.new("Frame")
BombFrame.Size = UDim2.new(0, 140, 0, 45)
BombFrame.Position = Config.GuiPositions.Bomb or UDim2.new(0.7, 0, 0.6, 0)
BombFrame.BackgroundColor3 = Theme.Background
BombFrame.BorderSizePixel = 0
BombFrame.Parent = BombGui
AddCorner(BombFrame, 8)
BombStroke = AddStroke(BombFrame, Theme.Accent, 2)

BombBtn = Instance.new("TextButton")
BombBtn.Size = UDim2.new(1, 0, 1, 0)
BombBtn.BackgroundTransparency = 1
BombBtn.Text = "AUTO BOMB"
BombBtn.Font = Enum.Font.GothamBlack
BombBtn.TextColor3 = Theme.Accent
BombBtn.TextSize = 14
BombBtn.Parent = BombFrame
BombBtn.MouseButton1Click:Connect(ToggleAutoBomb)

MakeDraggable(BombFrame)

-- =============================================================
-- 🔄 CIERRE FINAL & GUARDADO
-- =============================================================
task.spawn(function()
    while task.wait(3) do
        SaveConfig()
    end
end)

MatzzNotify("MatzzHub", "Cargado ✅ — AutoShoot & AutoBomb activos", 4)

-- FIN DEL SCRIPT
