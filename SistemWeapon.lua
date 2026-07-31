-- Script Path: game:GetService("StarterPack").Crossbow.WeaponsSystem.WeaponsSystem
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.731.944)

local v_u_1 = game:GetService("CollectionService")
local v2 = game:GetService("RunService")
local v_u_3 = game:GetService("Players")
local v_u_4 = v2:IsServer()
local v_u_5 = script.Parent:WaitForChild("WeaponData")
local v_u_6 = script.Parent
local v7 = v_u_6:WaitForChild("WeaponTypes")
local v8 = v_u_6:WaitForChild("Libraries")
local v_u_9 = require(v8:WaitForChild("ShoulderCamera"))
local v_u_10 = require(v8:WaitForChild("WeaponsGui"))
local v11 = require(v8:WaitForChild("SpringService"))
local v_u_12 = require(v8:WaitForChild("ancestorHasTag"))
v_u_9.SpringService = v11
local v13 = v_u_6:WaitForChild("Configuration")
local v_u_14 = {
    ["SprintEnabled"] = v13:WaitForChild("SprintEnabled"),
    ["SlowZoomWalkEnabled"] = v13:WaitForChild("SlowZoomWalkEnabled")
}
local v_u_15 = {}
local function v23(p_u_16) -- name: onNewWeaponType
    -- upvalues: (copy) v_u_15
    if p_u_16:IsA("ModuleScript") then
        local v_u_17 = p_u_16.Name
        xpcall(function()
            -- upvalues: (copy) p_u_16, (ref) v_u_15, (copy) v_u_17
            coroutine.wrap(function()
                -- upvalues: (ref) p_u_16, (ref) v_u_15, (ref) v_u_17
                local v18 = require(p_u_16)
                local v19 = typeof(v18) == "table"
                local v20 = string.format
                local v21 = p_u_16
                assert(v19, v20("WeaponType \"%s\" did not return a valid table", v21:GetFullName()))
                v_u_15[v_u_17] = v18
            end)()
        end, function(p22)
            -- upvalues: (copy) p_u_16
            warn(string.format("Error while loading %s: %s", p_u_16:GetFullName(), p22))
            warn(debug.traceback())
        end)
    end
end
local v_u_24 = {
    "WeaponFired",
    "WeaponHit",
    "WeaponReloadRequest",
    "WeaponReloaded",
    "WeaponReloadCanceled",
    "WeaponActivated"
}
local v_u_25 = {}
for _, v26 in pairs(v7:GetChildren()) do
    v23(v26)
end
v7.ChildAdded:Connect(v23)
local v_u_27 = {
    ["didSetup"] = false,
    ["knownWeapons"] = {},
    ["connections"] = {},
    ["networkFolder"] = nil,
    ["remoteEvents"] = {},
    ["remoteFunctions"] = {},
    ["currentWeapon"] = nil,
    ["aimRayCallback"] = nil,
    ["CurrentWeaponChanged"] = Instance.new("BindableEvent")
}
local v_u_28 = require(v_u_6:WaitForChild("NetworkingCallbacks"))
v_u_28.WeaponsSystem = v_u_27
local v_u_29 = nil
local v_u_30 = nil
function v_u_27.setDamageCallback(p31) -- name: setDamageCallback
    -- upvalues: (ref) v_u_29
    v_u_29 = p31
end
function v_u_27.setGetTeamCallback(p32) -- name: setGetTeamCallback
    -- upvalues: (ref) v_u_30
    v_u_30 = p32
end
function v_u_27.setup() -- name: setup
    -- upvalues: (copy) v_u_27, (copy) v_u_4, (copy) v_u_24, (copy) v_u_28, (copy) v_u_25, (copy) v_u_6, (copy) v_u_9, (copy) v_u_10, (copy) v_u_14, (copy) v_u_3, (copy) v_u_1
    if v_u_27.didSetup then
        warn("Warning: trying to run WeaponsSystem setup twice on the same module.")
    else
        print(script.Parent:GetFullName(), "is now active.")
        v_u_27.doingSetup = true
        if v_u_4 then
            local v33 = Instance.new("Folder")
            v33.Name = "Network"
            for _, v34 in pairs(v_u_24) do
                local v35 = Instance.new("RemoteEvent")
                v35.Name = v34
                v35.Parent = v33
                local v_u_36 = v_u_28[v34]
                if not v_u_36 then
                    warn("There is no server callback implemented for the WeaponsSystem RemoteEvent \"%s\"!")
                    warn("A default no-op function will be implemented so that the queue cannot be abused.")
                    v_u_36 = function() end
                end
                v_u_27.connections[v34 .. "Remote"] = v35.OnServerEvent:Connect(function(...)
                    -- upvalues: (ref) v_u_36
                    v_u_36(...)
                end)
                v_u_27.remoteEvents[v34] = v35
            end
            for _, v37 in pairs(v_u_25) do
                local v38 = Instance.new("RemoteEvent")
                v38.Name = v37
                v38.Parent = v33
                local v_u_39 = v_u_28[v37]
                if not v_u_39 then
                    warn("There is no server callback implemented for the WeaponsSystem RemoteFunction \"%s\"!")
                    warn("A default no-op function will be implemented so that the queue cannot be abused.")
                    v_u_39 = function() end
                end
                function v38.OnServerInvoke(...)
                    -- upvalues: (ref) v_u_39
                    return v_u_39(...)
                end
                v_u_27.remoteFunctions[v37] = v38
            end
            v33.Parent = v_u_6
            v_u_27.networkFolder = v33
        else
            v_u_27.StarterGui = game:GetService("StarterGui")
            v_u_27.camera = v_u_9.new(v_u_27)
            v_u_27.gui = v_u_10.new(v_u_27)
            if v_u_14.SprintEnabled.Value then
                v_u_27.camera:setSprintEnabled(v_u_14.SprintEnabled.Value)
            end
            if v_u_14.SlowZoomWalkEnabled.Value then
                v_u_27.camera:setSlowZoomWalkEnabled(v_u_14.SlowZoomWalkEnabled.Value)
            end
            local v_u_40 = v_u_6:WaitForChild("Network", (1 / 0))
            for _, v_u_41 in pairs(v_u_24) do
                coroutine.wrap(function()
                    -- upvalues: (copy) v_u_40, (copy) v_u_41, (ref) v_u_28, (ref) v_u_27
                    local v42 = v_u_40:WaitForChild(v_u_41, (1 / 0))
                    local v_u_43 = v_u_28[v_u_41]
                    if v_u_43 then
                        v_u_27.connections[v_u_41 .. "Remote"] = v42.OnClientEvent:Connect(function(...)
                            -- upvalues: (copy) v_u_43
                            v_u_43(...)
                        end)
                    end
                    v_u_27.remoteEvents[v_u_41] = v42
                end)()
            end
            for _, v_u_44 in pairs(v_u_25) do
                coroutine.wrap(function()
                    -- upvalues: (copy) v_u_40, (copy) v_u_44, (ref) v_u_28, (ref) v_u_27
                    local v45 = v_u_40:WaitForChild(v_u_44, (1 / 0))
                    local v_u_46 = v_u_28[v_u_44]
                    if v_u_46 then
                        function v45.OnClientInvoke(...)
                            -- upvalues: (copy) v_u_46
                            return v_u_46(...)
                        end
                    end
                    v_u_27.remoteFunctions[v_u_44] = v45
                end)()
            end
            v_u_3.LocalPlayer.CharacterAdded:Connect(v_u_27.onCharacterAdded)
            if v_u_3.LocalPlayer.Character then
                v_u_27.onCharacterAdded(v_u_3.LocalPlayer.Character)
            end
            v_u_27.networkFolder = v_u_40
        end
        v_u_27.connections.weaponAdded = v_u_1:GetInstanceAddedSignal("WeaponsSystemWeapon"):Connect(v_u_27.onWeaponAdded)
        v_u_27.connections.weaponRemoved = v_u_1:GetInstanceRemovedSignal("WeaponsSystemWeapon"):Connect(v_u_27.onWeaponRemoved)
        for _, v47 in pairs(v_u_1:GetTagged("WeaponsSystemWeapon")) do
            v_u_27.onWeaponAdded(v47)
        end
        v_u_27.doingSetup = false
        v_u_27.didSetup = true
    end
end
function v_u_27.onCharacterAdded(p_u_48) -- name: onCharacterAdded
    -- upvalues: (copy) v_u_27
    if v_u_27.connections.seated then
        v_u_27.connections.seated:Disconnect()
    end
    if v_u_27.connections.characterRemoving then
        v_u_27.connections.characterRemoving:Disconnect()
    end
    if v_u_27.connections.humanoidDied then
        v_u_27.connections.humanoidDied:Disconnect()
    end
    if v_u_27.camera then
        v_u_27.camera:setEnabled(false)
        v_u_27.camera:setZoomedFromInput(false)
        v_u_27.camera:setForceZoomed(false)
    end
    if v_u_27.gui then
        v_u_27.gui:setEnabled(false)
        v_u_27.gui:setZoomed(false)
    end
    v_u_27.currentWeapon = nil
    local v49 = workspace.CurrentCamera
    if v49 then
        v49.CameraType = Enum.CameraType.Custom
        v49.FieldOfView = 70
        local v50 = game:GetService("UserInputService")
        v50.MouseBehavior = Enum.MouseBehavior.Default
        v50.MouseIconEnabled = true
        v49.CameraSubject = p_u_48:WaitForChild("Humanoid")
    end
    local v51 = p_u_48:WaitForChild("Humanoid")
    local function v_u_55() -- name: resetAllStates
        -- upvalues: (ref) v_u_27
        v_u_27.currentWeapon = nil
        if v_u_27.camera then
            local v52 = game:GetService("ContextActionService")
            v52:UnbindAction("ShoulderCameraZoom")
            local function v53(...)
                -- upvalues: (ref) v_u_27
                return v_u_27.camera:onZoomAction(...)
            end
            local v54 = v_u_27.camera.zoomInputs
            v52:BindAction("ShoulderCameraZoom", v53, false, unpack(v54))
            v_u_27.camera:setZoomedFromInput(false)
            v_u_27.camera:setForceZoomed(false)
        end
        if v_u_27.gui then
            v_u_27.gui:setZoomed(false)
            v_u_27.gui:setEnabled(false)
        end
        if v_u_27.camera then
            v_u_27.camera:setEnabled(false)
        end
        v_u_27.seatedWeapon = nil
    end
    v_u_27.connections.humanoidDied = v51.Died:Connect(function()
        -- upvalues: (copy) v_u_55
        v_u_55()
    end)
    v_u_27.connections.characterRemoving = p_u_48.AncestryChanged:Connect(function()
        -- upvalues: (copy) p_u_48, (copy) v_u_55
        if not p_u_48.Parent then
            v_u_55()
        end
    end)
end
function v_u_27.shutdown() -- name: shutdown
    -- upvalues: (copy) v_u_27, (copy) v_u_4
    if v_u_27.didSetup then
        for _, v56 in pairs(v_u_27.knownWeapons) do
            v56:onDestroyed()
        end
        v_u_27.knownWeapons = {}
        if v_u_4 and v_u_27.networkFolder then
            v_u_27.networkFolder:Destroy()
        end
        v_u_27.networkFolder = nil
        v_u_27.remoteEvents = {}
        v_u_27.remoteFunctions = {}
        for _, v57 in pairs(v_u_27.connections) do
            if typeof(v57) == "RBXScriptConnection" then
                v57:Disconnect()
            end
        end
        v_u_27.connections = {}
    end
end
function v_u_27.getWeaponTypeFromTags(p58) -- name: getWeaponTypeFromTags
    -- upvalues: (copy) v_u_1, (copy) v_u_15
    for _, v59 in pairs(v_u_1:GetTags(p58)) do
        local v60 = v_u_15[v59]
        if v60 then
            return v60
        end
    end
    return nil
end
function v_u_27.createWeaponForInstance(p_u_61) -- name: createWeaponForInstance
    -- upvalues: (copy) v_u_27, (copy) v_u_15
    coroutine.wrap(function()
        -- upvalues: (ref) v_u_27, (copy) p_u_61, (ref) v_u_15
        local v62 = v_u_27.getWeaponTypeFromTags(p_u_61)
        if not v62 then
            local v63 = p_u_61:WaitForChild("WeaponType")
            if not (v63 and v63:IsA("StringValue")) then
                warn("Could not find a WeaponType tag or StringValue for the instance ", p_u_61:GetFullName())
                return
            end
            local v64 = v63.Value
            v62 = v_u_15[v64]
            if not v62 then
                warn(string.format("Cannot find the weapon type \"%s\" for the instance %s!", v64, p_u_61:GetFullName()))
                return
            end
        end
        if v_u_27.getWeaponForInstance(p_u_61) then
            warn("Already got ", p_u_61:GetFullName())
            warn(debug.traceback())
        else
            assert(v62, "Got invalid weaponType")
            local v65 = v62.new(v_u_27, p_u_61)
            v_u_27.knownWeapons[p_u_61] = v65
        end
    end)()
end
function v_u_27.getWeaponForInstance(p66) -- name: getWeaponForInstance
    -- upvalues: (copy) v_u_27
    if typeof(p66) == "Instance" then
        return v_u_27.knownWeapons[p66]
    end
    warn("WeaponsSystem.getWeaponForInstance(weaponInstance): \'weaponInstance\' was not an instance.")
    return nil
end
function v_u_27.onWeaponAdded(p67) -- name: onWeaponAdded
    -- upvalues: (copy) v_u_27
    if not v_u_27.getWeaponForInstance(p67) then
        v_u_27.createWeaponForInstance(p67)
    end
end
function v_u_27.onWeaponRemoved(p68) -- name: onWeaponRemoved
    -- upvalues: (copy) v_u_27
    local v69 = v_u_27.getWeaponForInstance(p68)
    if v69 then
        v69:onDestroyed()
    end
    v_u_27.knownWeapons[p68] = nil
end
function v_u_27.getRemoteEvent(p70) -- name: getRemoteEvent
    -- upvalues: (copy) v_u_27, (copy) v_u_4
    if v_u_27.networkFolder then
        local v71 = v_u_27.remoteEvents[p70]
        if not v_u_4 then
            return v71 or v_u_27.networkFolder:WaitForChild(p70, (1 / 0))
        end
        if v71 then
            return v71
        end
        warn("No RemoteEvent named ", p70)
        return nil
    end
end
function v_u_27.getRemoteFunction(p72) -- name: getRemoteFunction
    -- upvalues: (copy) v_u_27, (copy) v_u_4
    if v_u_27.networkFolder then
        local v73 = v_u_27.remoteFunctions[p72]
        if not v_u_4 then
            return v73 or v_u_27.networkFolder:WaitForChild(p72, (1 / 0))
        end
        if v73 then
            return v73
        end
        warn("No RemoteFunction named ", p72)
        return nil
    end
end
function v_u_27.setWeaponEquipped(p74, p75) -- name: setWeaponEquipped
    -- upvalues: (copy) v_u_4, (copy) v_u_27
    local v76 = not v_u_4
    assert(v76, "WeaponsSystem.setWeaponEquipped should only be called on the client.")
    if p74 then
        local v77 = v_u_27.currentWeapon
        local v78 = false
        local v79 = false
        if v77 == p74 then
            if p75 then
                v79 = false
            else
                v_u_27.currentWeapon = nil
                v78 = false
                v79 = true
            end
        elseif p75 then
            v_u_27.currentWeapon = p74
            v78 = true
            v79 = true
        end
        if v_u_27.camera then
            v_u_27.camera:setEnabled(v78)
            if not v78 then
                v_u_27.camera:setZoomedFromInput(false)
            end
            v_u_27.camera:resetZoomFactor()
            v_u_27.camera:setHasScope(false)
            if v_u_27.currentWeapon then
                v_u_27.camera:setZoomFactor(v_u_27.currentWeapon:getConfigValue("ZoomFactor", 1.1))
                v_u_27.camera:setHasScope(v_u_27.currentWeapon:getConfigValue("HasScope", false))
            end
        end
        if v_u_27.gui then
            v_u_27.gui:setEnabled(v78)
            if not v78 then
                v_u_27.gui:setZoomed(false)
            end
            if v_u_27.currentWeapon then
                v_u_27.gui:setCrosshairWeaponScale(v_u_27.currentWeapon:getConfigValue("CrosshairScale", 1))
            else
                v_u_27.gui:setCrosshairWeaponScale(1)
            end
        end
        if v79 then
            local v80 = v_u_27.CurrentWeaponChanged
            local v81 = p74.instance
            if v77 then
                v77 = v77.instance
            end
            v80:Fire(v81, v77)
        end
    end
end
function v_u_27.getHumanoid(p82) -- name: getHumanoid
    while p82 and p82 ~= workspace do
        if p82:IsA("Model") and (p82.PrimaryPart and p82.PrimaryPart.Name == "HumanoidRootPart") then
            return p82:FindFirstChildOfClass("Humanoid")
        end
        p82 = p82.Parent
    end
end
function v_u_27.getPlayerFromHumanoid(p83) -- name: getPlayerFromHumanoid
    -- upvalues: (copy) v_u_3
    for _, v84 in ipairs(v_u_3:GetPlayers()) do
        if v84.Character and p83:IsDescendantOf(v84.Character) then
            return v84
        end
    end
end
local function v_u_87(_, p85, p86, _, _, _, _) -- name: _defaultDamageCallback
    if p85:IsA("Humanoid") then
        p85:TakeDamage(p86)
    end
end
function v_u_27.doDamage(p88, p89, p90, p91, p92, p93) -- name: doDamage
    -- upvalues: (copy) v_u_12, (copy) v_u_4, (copy) v_u_3, (copy) v_u_5, (ref) v_u_29, (copy) v_u_87, (copy) v_u_27
    if p88 and not v_u_12(p88, "WeaponsSystemIgnore") then
        if v_u_4 then
            if p88:IsA("Humanoid") and (p91:IsA("Player") and p91.Character) then
                local v94 = p91.Character:FindFirstChildOfClass("Humanoid")
                local v95 = v_u_3:GetPlayerFromCharacter(p88.Parent)
                if v94 and (p88 ~= v94 and v95) then
                    v_u_5:FireClient(v95, "HitByOtherPlayer", p91.Character.HumanoidRootPart.CFrame.Position)
                end
            end
            (v_u_29 or v_u_87)(v_u_27, p88, p89, p90, p91, p92, p93)
        end
    end
end
local function v_u_96(_) -- name: _defaultGetTeamCallback
    return 0
end
function v_u_27.getTeam(p97) -- name: getTeam
    -- upvalues: (ref) v_u_30, (copy) v_u_96
    return (v_u_30 or v_u_96)(p97)
end
function v_u_27.playersOnDifferentTeams(p98, p99) -- name: playersOnDifferentTeams
    -- upvalues: (copy) v_u_27
    if p98 == p99 or (p98 == nil or p99 == nil) then
        return true
    end
    local v100 = v_u_27.getTeam(p98)
    local v101 = v_u_27.getTeam(p99)
    return v100 == 0 and true or v100 ~= v101
end
return v_u_27

game:GetService("StarterPack").Crossbow.WeaponsSystem.WeaponData
-- Script Path: game:GetService("StarterPack").Crossbow.WeaponsSystem.ClientWeaponsScript
-- Took 0s to decompile.
-- Executor: Delta (1.1.731.944)

local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = game:GetService("UserInputService")
local v_u_3 = game:GetService("RunService")
local v_u_4 = game:GetService("Players")
local v_u_5 = nil
local v_u_6 = nil
local v_u_7 = nil
local v_u_8 = nil
local function v_u_20() -- name: setupWeaponsSystem
    -- upvalues: (ref) v_u_8, (copy) v_u_3, (copy) v_u_2, (copy) v_u_4
    local v_u_9 = require(v_u_8.WeaponsSystem)
    if not (v_u_9.doingSetup or v_u_9.didSetup) then
        v_u_9.setup()
        v_u_3.Heartbeat:Wait()
        local v10 = workspace.CurrentCamera
        if v10 then
            v10.CameraType = Enum.CameraType.Custom
            v10.FieldOfView = 70
            v_u_2.MouseBehavior = Enum.MouseBehavior.Default
            v_u_2.MouseIconEnabled = true
            local v11 = v_u_4.LocalPlayer
            local v12 = v11.Character and v11.Character:FindFirstChildOfClass("Humanoid")
            if v12 then
                v10.CameraSubject = v12
            end
        end
        if v_u_9.camera then
            v_u_9.camera.mouseLocked = false
            v_u_9.camera:setEnabled(false)
            v_u_9.camera:setZoomedFromInput(false)
            v_u_9.camera:setForceZoomed(false)
        end
        if v_u_9.gui then
            v_u_9.gui:setEnabled(false)
            v_u_9.gui:setZoomed(false)
        end
        v_u_9.CurrentWeaponChanged.Event:Connect(function(p13, _)
            -- upvalues: (copy) v_u_9, (ref) v_u_2, (ref) v_u_4
            if v_u_9.camera then
                if p13 then
                    v_u_9.camera.mouseLocked = true
                    return
                end
                v_u_9.camera.mouseLocked = false
                local v14 = workspace.CurrentCamera
                if v14 then
                    v14.CameraType = Enum.CameraType.Custom
                    v14.FieldOfView = 70
                    v_u_2.MouseBehavior = Enum.MouseBehavior.Default
                    v_u_2.MouseIconEnabled = true
                    local v15 = v_u_4.LocalPlayer
                    local v16 = v15.Character and v15.Character:FindFirstChildOfClass("Humanoid")
                    if v16 then
                        v14.CameraSubject = v16
                    end
                end
            end
        end)
        v_u_4.LocalPlayer.CharacterAdded:Connect(function(_)
            -- upvalues: (ref) v_u_2, (ref) v_u_4, (copy) v_u_9
            wait(0.1)
            local v17 = workspace.CurrentCamera
            if v17 then
                v17.CameraType = Enum.CameraType.Custom
                v17.FieldOfView = 70
                v_u_2.MouseBehavior = Enum.MouseBehavior.Default
                v_u_2.MouseIconEnabled = true
                local v18 = v_u_4.LocalPlayer
                local v19 = v18.Character and v18.Character:FindFirstChildOfClass("Humanoid")
                if v19 then
                    v17.CameraSubject = v19
                end
            end
            if v_u_9.camera then
                v_u_9.camera:setEnabled(false)
                v_u_9.camera.mouseLocked = false
            end
        end)
    end
end
local function v22(p21) -- name: onReplicatedStorageChildAdded
    -- upvalues: (ref) v_u_8, (copy) v_u_20, (ref) v_u_6
    if p21.Name == "WeaponsSystem" then
        v_u_8 = p21
        v_u_20()
        v_u_6:Disconnect()
    end
end
local function v24(p23) -- name: onPlayerChildAdded
    -- upvalues: (ref) v_u_7, (ref) v_u_5
    if p23.Name == "PlayerScripts" then
        v_u_7.Parent = p23
        v_u_5:Disconnect()
    end
end
if script.Parent.Name == "PlayerScripts" then
    v_u_8 = v1:FindFirstChild("WeaponsSystem")
    if v_u_8 == nil then
        v_u_6 = v1.ChildAdded:Connect(v22)
    else
        v_u_20()
    end
else
    v_u_7 = script:Clone()
    local v25 = script.Parent.Parent:FindFirstChild("PlayerScripts")
    if v25 == nil then
        v_u_5 = script.Parent.Parent.ChildAdded:Connect(v24)
    else
        v_u_7.Parent = v25
    end
end

-- Script Path: game:GetService("StarterPack").Crossbow.WeaponsSystem.WeaponTypes.BulletWeapon
-- Took 0.04s to decompile.
-- Executor: Delta (1.1.731.944)

local v_u_1 = game:GetService("TweenService")
local v_u_2 = game:GetService("RunService")
local v_u_3 = game:GetService("Players")
local v_u_4 = game:GetService("Debris")
local v_u_5 = game:GetService("ContextActionService")
local v_u_6 = game:GetService("CollectionService")
local v_u_7 = game:GetService("ContentProvider")
local v_u_8 = v_u_2:IsServer()
local v9 = script.Parent.Parent
local v10 = v9:WaitForChild("Libraries")
local v_u_11 = require(v10:WaitForChild("BaseWeapon"))
local v_u_12 = require(v10:WaitForChild("Parabola"))
local v_u_13 = require(v10:WaitForChild("Roblox"))
local v14 = v9:WaitForChild("Assets"):WaitForChild("Effects")
local v_u_15 = v14:WaitForChild("Shots")
local v_u_16 = v14:WaitForChild("HitMarks")
local v_u_17 = v14:WaitForChild("Casings")
local v_u_18 = Random.new()
local v_u_19 = not v_u_8
if v_u_19 then
    v_u_19 = v_u_3.LocalPlayer
end
local v_u_20 = {}
v_u_20.__index = v_u_20
setmetatable(v_u_20, v_u_11)
v_u_20.CanAimDownSights = true
v_u_20.CanBeFired = true
v_u_20.CanBeReloaded = true
v_u_20.CanHit = true
function v_u_20.new(p21, p22) -- name: new
    -- upvalues: (copy) v_u_11, (copy) v_u_20, (copy) v_u_16, (copy) v_u_17
    local v_u_23 = v_u_11.new(p21, p22)
    local v24 = v_u_20
    setmetatable(v_u_23, v24)
    v_u_23.usesCharging = false
    v_u_23.charge = 0
    v_u_23.chargeSoundPitchMin = 0.5
    v_u_23.chargeSoundPitchMax = 1
    v_u_23.triggerDisconnected = false
    v_u_23.startupFinished = false
    v_u_23.burstFiring = false
    v_u_23.burstIdx = 0
    v_u_23.nextFireTime = 0
    v_u_23.recoilIntensity = 0
    v_u_23.aimPoint = Vector3.new()
    v_u_23:addOptionalDescendant("tipAttach", "TipAttachment")
    v_u_23:addOptionalDescendant("boltMotor", "BoltMotor")
    v_u_23:addOptionalDescendant("boltMotorStart", "BoltMotorStart")
    v_u_23:addOptionalDescendant("boltMotorTarget", "BoltMotorTarget")
    v_u_23:addOptionalDescendant("chargeGlowPart", "ChargeGlow")
    v_u_23:addOptionalDescendant("chargeCompleteParticles", "ChargeCompleteParticles")
    v_u_23:addOptionalDescendant("dischargeCompleteParticles", "DischargeCompleteParticles")
    v_u_23:addOptionalDescendant("muzzleFlash0", "MuzzleFlash0")
    v_u_23:addOptionalDescendant("muzzleFlash1", "MuzzleFlash1")
    v_u_23:addOptionalDescendant("muzzleFlashBeam", "MuzzleFlash")
    v_u_23.hitMarkTemplate = v_u_16:FindFirstChild(v_u_23:getConfigValue("HitMarkEffect", "BulletHole"))
    v_u_23.casingTemplate = v_u_17:FindFirstChild(v_u_23:getConfigValue("CasingEffect", ""))
    v_u_23:addOptionalDescendant("casingEjectPoint", "CasingEjectPoint")
    v_u_23.ignoreList = {}
    v_u_23.ignoreListRefreshTime = 0
    v_u_23:addOptionalDescendant("handAttach", "LeftHandAttachment")
    v_u_23.handAlignPos = nil
    v_u_23.handAlignRot = nil
    v_u_23.chargingParticles = {}
    v_u_23.instance.DescendantAdded:Connect(function(p25)
        -- upvalues: (copy) v_u_23
        if p25.Name == "ChargingParticles" and p25:IsA("ParticleEmitter") then
            local v26 = v_u_23.chargingParticles
            table.insert(v26, p25)
        end
    end)
    for _, v27 in pairs(v_u_23.instance:GetDescendants()) do
        if v27.Name == "ChargingParticles" and v27:IsA("ParticleEmitter") then
            local v28 = v_u_23.chargingParticles
            table.insert(v28, v27)
        end
    end
    v_u_23:doInitialSetup()
    return v_u_23
end
function v_u_20.onEquippedChanged(p_u_29) -- name: onEquippedChanged
    -- upvalues: (copy) v_u_11, (copy) v_u_8, (copy) v_u_5
    v_u_11.onEquippedChanged(p_u_29)
    if not v_u_8 then
        if p_u_29.weaponsSystem.camera and p_u_29.equipped then
            p_u_29.startupFinished = false
        end
        if p_u_29.equipped then
            v_u_5:BindAction("ReloadWeapon", function(...)
                -- upvalues: (copy) p_u_29
                p_u_29:onReloadAction(...)
            end, false, Enum.KeyCode.R, Enum.KeyCode.ButtonX)
        else
            v_u_5:UnbindAction("ReloadWeapon")
            local v30 = p_u_29:getSound("Charging")
            local v31 = p_u_29:getSound("Discharging")
            if v30 and v30.Playing then
                v30:Stop()
            end
            if v31 and v31.Playing then
                v31:Stop()
            end
        end
        p_u_29.triggerDisconnected = false
    end
end
function v_u_20.onReloadAction(p32, _, p33, _) -- name: onReloadAction
    if p33 == Enum.UserInputState.Begin and not p32.reloading then
        p32:reload()
    end
end
function v_u_20.animateBoltAction(p34, p35) -- name: animateBoltAction
    -- upvalues: (copy) v_u_1
    if p34.boltMotor and (p34.boltMotorStart and p34.boltMotorTarget) then
        if p35 then
            p34:tryPlaySound("BoltOpenSound")
        else
            p34:tryPlaySound("BoltCloseSound")
        end
        local v36 = p35 and p34:getConfigValue("ActionOpenTime", 0.025) or p34:getConfigValue("ActionCloseTime", 0.075)
        local v37 = p35 and p34.boltMotorTarget.CFrame or p34.boltMotorStart.CFrame
        local v38 = v_u_1:Create(p34.boltMotor, TweenInfo.new(v36, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            ["C0"] = v37
        })
        v38:Play()
        v38.Completed:Wait()
    end
end
function v_u_20.getRandomSeedForId(_, p39) -- name: getRandomSeedForId
    return p39
end
function v_u_20.simulateFire(p_u_40, p41, p42) -- name: simulateFire
    -- upvalues: (copy) v_u_11, (copy) v_u_18, (copy) v_u_6, (copy) v_u_4, (copy) v_u_3, (copy) v_u_2
    v_u_11.simulateFire(p_u_40, p42)
    if p_u_40.lastFireSound then
        p_u_40.lastFireSound:Stop()
    end
    p_u_40.lastFireSound = p_u_40:tryPlaySound("Fired", p_u_40:getConfigValue("FiredPlaybackSpeedRange", 0.1))
    local v43 = p_u_40:getConfigValue("NumProjectiles", 1)
    local v_u_44 = Random.new(p_u_40:getRandomSeedForId(p42.id))
    for v45 = 1, v43 do
        p_u_40:simulateProjectile(p41, p42, v45, v_u_44)
    end
    local v_u_46 = p_u_40:getConfigValue("ActionOpenTime", 0.025)
    if p_u_40.boltMotor then
        coroutine.wrap(function()
            -- upvalues: (copy) p_u_40, (copy) v_u_46
            p_u_40:animateBoltAction(true)
            wait(v_u_46)
            p_u_40:animateBoltAction(false)
        end)()
    end
    if p_u_40.casingTemplate and p_u_40.casingEjectPoint then
        local v47 = p_u_40.casingTemplate:Clone()
        v47.Anchored = false
        v47.Archivable = false
        v47.CFrame = p_u_40.casingEjectPoint.WorldCFrame
        v47.Velocity = p_u_40.casingEjectPoint.Parent.Velocity + p_u_40.casingEjectPoint.WorldAxis * v_u_18:NextNumber(p_u_40:getConfigValue("CasingEjectSpeedMin", 15), p_u_40:getConfigValue("CasingEjectSpeedMax", 18))
        v47.Parent = workspace.CurrentCamera
        v_u_6:AddTag(v47, "WeaponsSystemIgnore")
        local v_u_48 = v47:FindFirstChild("CasingHitSound")
        if v_u_48 then
            local v_u_49 = nil
            v_u_49 = v47.Touched:Connect(function(p50)
                -- upvalues: (copy) p_u_40, (copy) v_u_48, (ref) v_u_49
                if not p50:IsDescendantOf(p_u_40.instance) then
                    v_u_48:Play()
                    v_u_49:Disconnect()
                    v_u_49 = nil
                end
            end)
        end
        v_u_4:AddItem(v47, 2)
    end
    if p_u_40.player == v_u_3.LocalPlayer then
        coroutine.wrap(function()
            -- upvalues: (copy) p_u_40, (ref) v_u_2, (copy) v_u_44
            local v51 = tick()
            local v52 = p_u_40:getConfigValue("RecoilDelayTime", 0.07)
            while tick() < v51 + v52 do
                v_u_2.RenderStepped:Wait()
            end
            v_u_2.RenderStepped:Wait()
            local v53 = v_u_44:NextNumber(p_u_40:getConfigValue("RecoilMin", 0.05), (p_u_40:getConfigValue("RecoilMax", 0.5)))
            local v54 = tick() * 2
            local v55 = math.sin(v54) * v53 * 0.0008726646259971648
            local v56 = v53 * 0.025
            p_u_40.weaponsSystem.camera:addRecoil(Vector2.new(v55, v56))
            if not (p_u_40.weaponsSystem.camera:isZoomed() and p_u_40:getConfigValue("HasScope", false)) then
                local v57 = p_u_40
                local v58 = p_u_40.recoilIntensity * 1 + v53 / 10
                v57.recoilIntensity = math.clamp(v58, 0.005, 1)
            end
            local v59 = p_u_40.weaponsSystem.gui
            if v59 then
                v59:setCrosshairScale(1 + v53)
            end
        end)()
    end
end
function v_u_20.getIgnoreList(p60, p61) -- name: getIgnoreList
    -- upvalues: (copy) v_u_2, (copy) v_u_3
    local v62 = tick()
    local v63 = p60.ignoreList
    if not v63 or v62 - p60.ignoreListRefreshTime > 5 then
        v63 = { p60.instanceIsTool and p60.instance.Parent or p60.instance, workspace.CurrentCamera }
        if not v_u_2:IsServer() and (p61 and (v_u_3.LocalPlayer and v_u_3.LocalPlayer.Character)) then
            local v64 = v_u_3.LocalPlayer.Character
            table.insert(v63, v64)
        end
        p60.ignoreList = v63
    end
    return v63
end
function v_u_20.simulateProjectile(p_u_65, _, p66, p67, p68) -- name: simulateProjectile
    -- upvalues: (copy) v_u_3, (copy) v_u_13, (copy) v_u_6, (copy) v_u_18, (copy) v_u_12, (copy) v_u_2, (copy) v_u_1, (copy) v_u_4, (copy) v_u_8
    local v_u_69 = p_u_65.player == v_u_3.LocalPlayer
    local v_u_70 = p_u_65:getConfigValue("BulletSpeed", 1000)
    local v71 = p_u_65:getConfigValue("MaxDistance", 2000)
    local v_u_72 = p_u_65:getConfigValue("TrailLength", nil)
    local v_u_73 = p_u_65:getConfigValue("TrailLengthFactor", 1)
    local v_u_74 = p_u_65:getConfigValue("ShowEntireTrailUntilHit", false)
    local v75 = p_u_65:getConfigValue("GravityFactor", 0)
    local v76 = p_u_65:getConfigValue("MinSpread", 0)
    local v77 = p_u_65:getConfigValue("MaxSpread", 0)
    local v_u_78 = p_u_65:getConfigValue("ShouldMovePart", false)
    local v_u_79 = p_u_65:getConfigValue("ExplodeOnImpact", false)
    local v_u_80 = p_u_65:getConfigValue("BlastRadius", 8)
    if p_u_65.tipAttach ~= nil then
        local v81 = p_u_65.tipAttach.WorldCFrame
        local v82 = v81.Position
        local v83 = v81.LookVector
        local v84 = p_u_65.instance:FindFirstChild("Handle")
        if v84 then
            local v85 = (v84.Position - v82):Dot(v83)
            local v86 = math.abs(v85) + 1
            local v87 = Ray.new(v82 - v83.Unit * v86, v83.Unit * v86)
            local v88, v89 = v_u_13.penetrateCast(v87, p_u_65:getIgnoreList(v_u_69))
            if v88 then
                local v90 = (v82 - v89).Magnitude
                if math.abs(v90) > 0 then
                    p66.origin = v89 - v83.Unit * 0.1
                    p66.dir = v83.Unit
                end
            end
        end
    end
    local v_u_91 = p66.origin
    local v92 = p66.dir
    local v93 = v_u_13.applySpread(v92, p68, math.rad(v76), (math.rad(v77)))
    local v_u_94 = p_u_65.bulletEffectTemplate:Clone()
    v_u_94.CFrame = CFrame.new(v_u_91, v_u_91 + v93)
    v_u_94.Parent = workspace.CurrentCamera
    v_u_6:AddTag(v_u_94, "WeaponsSystemIgnore")
    local v_u_95 = v_u_94:FindFirstChild("LeadingParticles", true)
    local v96 = v_u_94:FindFirstChild("Attachment0")
    local v_u_97
    if v96 then
        v_u_97 = v96:FindFirstChild("TrailParticles")
    else
        v_u_97 = nil
    end
    local v_u_98 = v_u_94:FindFirstChild("HitEffect")
    local v_u_99 = v_u_94:FindFirstChild("HitParticles", true)
    local v_u_100 = p_u_65:getConfigValue("NumHitParticles", 3)
    local v_u_101 = v_u_94:FindFirstChild("HitSound", true)
    local v_u_102 = v_u_94:FindFirstChild("Flying", true)
    local v_u_103 = p_u_65:getConfigValue("MuzzleFlashTime", 0.03)
    local v_u_104 = false
    local v_u_105 = p_u_65:getConfigValue("BeamWidth0", 1.5)
    local v_u_106 = p_u_65:getConfigValue("BeamWidth1", 1.8)
    local v_u_107 = p_u_65:getConfigValue("BeamFadeTime", nil)
    local v_u_108 = v_u_94:FindFirstChild("Beam0")
    if v_u_108 then
        v_u_108.Enabled = true
    end
    local v_u_109 = v_u_94:FindFirstChild("Beam1")
    if v_u_109 then
        v_u_109.Enabled = true
    end
    local v110 = v_u_94:FindFirstChild("MuzzleParticles", true)
    local v111 = p_u_65:getConfigValue("NumMuzzleParticles", 50)
    if v110 then
        v110.Parent.CFrame = CFrame.new(v_u_91, v_u_91 + v93)
        for _ = 1, 5 do
            local v112 = v110.Parent
            local v113 = v_u_18:NextNumber(-10, 10)
            local v114 = v_u_18:NextNumber(-10, 10)
            local v115 = v_u_18
            v112.Velocity = Vector3.new(v113, v114, v115:NextNumber(-10, 10))
            v110:Emit(v111 / 5)
        end
    end
    if p_u_65.tipAttach and (p_u_65.muzzleFlash0 and (p_u_65.muzzleFlash1 and (p_u_65.muzzleFlashBeam and p67 == 1))) then
        local v116 = p_u_65:getConfigValue("MuzzleFlashRotation0", -3.141592653589793)
        local v117 = p_u_65:getConfigValue("MuzzleFlashRotation1", 3.141592653589793)
        local v118 = p_u_65:getConfigValue("MuzzleFlashSize0", 1)
        local v119 = p_u_65:getConfigValue("MuzzleFlashSize1", 1)
        local v120 = v_u_18:NextNumber(v116, v117)
        local v121 = v_u_18:NextNumber(v118, v119)
        local v122 = p_u_65.tipAttach.CFrame * CFrame.Angles(0, 0, v120)
        p_u_65.muzzleFlash0.CFrame = v122 * CFrame.new(v121 * -0.5, 0, 0) * CFrame.Angles(0, 3.141592653589793, 0)
        p_u_65.muzzleFlash1.CFrame = v122 * CFrame.new(v121 * 0.5, 0, 0) * CFrame.Angles(0, 3.141592653589793, 0)
        p_u_65.muzzleFlashBeam.Enabled = true
        p_u_65.muzzleFlashBeam.Width0 = v121
        p_u_65.muzzleFlashBeam.Width1 = v121
        v_u_104 = true
    end
    if v_u_102 then
        v_u_102:Play()
    end
    if v_u_97 then
        v_u_97.Enabled = true
    end
    local v_u_123 = v_u_12.new()
    v_u_123:setPhysicsLaunch(v_u_91, v93 * v_u_70, nil, 35 * -v75)
    if v75 > 0.66 then
        v_u_123:setNumSamples(3)
    elseif v75 > 0.33 then
        v_u_123:setNumSamples(2)
    else
        v_u_123:setNumSamples(1)
    end
    local v_u_124 = nil
    local v_u_125 = 0
    local v_u_126 = tick()
    local v_u_127 = false
    local v_u_128 = false
    local v_u_129 = 0
    local v_u_130 = 0
    local v_u_131 = false
    local v_u_132 = (1 / 0)
    local v_u_133 = v_u_107 or 0
    local v_u_134 = {
        ["sid"] = nil,
        ["pid"] = nil,
        ["maxDist"] = nil,
        ["part"] = nil,
        ["p"] = nil,
        ["n"] = nil,
        ["m"] = nil,
        ["d"] = 1000000000,
        ["sid"] = p66.id,
        ["pid"] = p67,
        ["maxDist"] = v71,
        ["m"] = Enum.Material.Air
    }
    local function v194(p135)
        -- upvalues: (ref) v_u_130, (copy) v_u_126, (copy) v_u_70, (ref) v_u_72, (copy) v_u_73, (ref) v_u_125, (copy) v_u_134, (copy) v_u_74, (ref) v_u_127, (copy) v_u_123, (copy) p_u_65, (copy) v_u_91, (copy) v_u_69, (ref) v_u_97, (copy) v_u_102, (ref) v_u_94, (copy) v_u_95, (ref) v_u_133, (copy) v_u_79, (copy) v_u_80, (copy) v_u_98, (copy) v_u_108, (copy) v_u_99, (copy) v_u_100, (copy) v_u_101, (ref) v_u_6, (ref) v_u_2, (ref) v_u_1, (ref) v_u_4, (ref) v_u_131, (ref) v_u_132, (ref) v_u_128, (ref) v_u_129, (copy) v_u_78, (copy) v_u_105, (copy) v_u_106, (copy) v_u_107, (copy) v_u_109, (ref) v_u_104, (copy) v_u_103, (ref) v_u_124
        local v136 = tick()
        v_u_130 = v136 - v_u_126
        local v137 = v_u_70 * p135
        v_u_72 = v_u_72 or v137 * v_u_73
        local v138 = v_u_125 - v_u_72
        local v139 = v_u_125
        local v140 = v_u_134.maxDist or 0
        local v141 = v_u_74 and 0 or v138
        local v142 = math.min(v141, v140)
        local v143 = math.max(0, v142)
        local v144 = math.min(v139, v140)
        local v145 = math.max(0, v144)
        if not v_u_127 then
            local v146 = v145 + v137
            v_u_123:setDomain(v145, v146)
            local v147, v148, v149, v150, v151 = v_u_123:findPart(p_u_65.ignoreList)
            if v147 then
                v_u_127 = true
                v145 = v145 + v151 * (v146 - v145)
                v_u_123:setDomain(v143, v145)
                v_u_134.part = v147
                v_u_134.p = v148
                v_u_134.n = v149
                v_u_134.m = v150
                v_u_134.d = (v148 - v_u_91).Magnitude
                v_u_134.t = v151
                v_u_134.maxDist = v145
                p_u_65:onHit(v_u_134)
                if v_u_69 then
                    local v152 = {}
                    for v153, v154 in pairs(v_u_134) do
                        v152[v153] = v154
                    end
                    p_u_65.weaponsSystem.getRemoteEvent("WeaponHit"):FireServer(p_u_65.instance, v152)
                end
                if v_u_97 then
                    v_u_97.Enabled = false
                end
                if v_u_102 and v_u_102.IsPlaying then
                    v_u_102:Stop()
                end
                if v_u_94 then
                    v_u_94.Transparency = 1
                end
                if v_u_95 then
                    v_u_95.Rate = 0
                    local v155 = v_u_133
                    local v156 = v_u_95.Lifetime.Max
                    v_u_133 = math.max(v155, v156)
                end
                if v_u_79 then
                    local v157 = Instance.new("Explosion")
                    v157.Position = v148 + v149 * 0.5
                    v157.BlastRadius = v_u_80
                    v157.BlastPressure = 0
                    v157.ExplosionType = Enum.ExplosionType.NoCraters
                    v157.DestroyJointRadiusPercent = 0
                    v157.Visible = true
                    if v_u_69 then
                        v157.Hit:Connect(function(p158, _)
                            -- upvalues: (ref) p_u_65, (ref) v_u_134
                            local v159 = p_u_65.weaponsSystem.getHumanoid(p158)
                            if v159 and (p158.Name == "UpperTorso" and (v159:GetState() ~= Enum.HumanoidStateType.Dead and (p_u_65.weaponsSystem.gui and (p158.Parent ~= p_u_65.player.Character and p_u_65.weaponsSystem.playersOnDifferentTeams(p_u_65.weaponsSystem.getPlayerFromHumanoid(v159), p_u_65.player))))) then
                                p_u_65.weaponsSystem.gui:OnHitOtherPlayer(p_u_65:calculateDamage(v_u_134.d), v159)
                            end
                        end)
                    end
                    v157.Parent = workspace
                end
                if v_u_98 and (v_u_108 and v_u_108.Attachment1) then
                    v_u_123:renderToBeam(v_u_108)
                    v_u_98.CFrame = v_u_108.Attachment1.CFrame * CFrame.Angles(0, 1.5707963267948966, 0)
                end
                local v160 = v147 and v147.Color or Color3.fromRGB(255, 255, 255)
                if v147 and v147:IsA("Terrain") then
                    v160 = workspace.Terrain:GetMaterialColor(v150 or Enum.Material.Sand)
                end
                if v_u_134.h and (v_u_134.h:IsA("Humanoid") and (v_u_99 and (v_u_100 > 0 and v147))) then
                    v_u_99.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
                    v_u_99:Emit(v_u_100)
                    local v161 = v_u_133
                    local v162 = v_u_99.Lifetime.Max
                    v_u_133 = math.max(v161, v162)
                elseif not (v_u_134.h and v_u_134.h:IsA("Humanoid")) and (v_u_99 and v_u_100 > 0) then
                    if v147 and p_u_65:getConfigValue("HitParticlesUsePartColor", true) then
                        local v163 = v_u_99.Color
                        local v164 = {}
                        for v165, v166 in pairs(v163.Keypoints) do
                            local v167 = v166.Value
                            if v167 == Color3.fromRGB(255, 0, 255) then
                                v167 = v160
                            end
                            v164[v165] = ColorSequenceKeypoint.new(v166.Time, v167)
                        end
                        v_u_99.Color = ColorSequence.new(v164)
                    end
                    v_u_99:Emit(v_u_100)
                    local v168 = v_u_133
                    local v169 = v_u_99.Lifetime.Max
                    v_u_133 = math.max(v168, v169)
                end
                if v_u_101 then
                    v_u_101:Play()
                    local v170 = v_u_133
                    local v171 = v_u_101.TimeLength
                    v_u_133 = math.max(v170, v171)
                end
                local v172 = v147.CFrame:pointToObjectSpace(v148)
                local v173 = v147.CFrame:vectorToObjectSpace(v149)
                if v147 and not v147.Parent or not v147.Parent:FindFirstChildOfClass("Humanoid") and (v172 and (v173 and p_u_65.hitMarkTemplate)) then
                    local v174 = p_u_65.hitMarkTemplate:Clone()
                    v174.Parent = v147
                    v_u_6:AddTag(v174, "WeaponsSystemIgnore")
                    local v175 = v_u_123:sampleVelocity(1).Unit
                    if p_u_65:getConfigValue("AlignHitMarkToNormal", true) then
                        local v176 = -v173:Cross(v175).Unit
                        local v177 = v173:Cross(v176)
                        local v178 = CFrame.fromMatrix(v172 + v173 * 0.05, v176, v177, -v173)
                        v174.CFrame = v147.CFrame:toWorldSpace(v178)
                    else
                        v174.CFrame = v147.CFrame * CFrame.new(v172, v172 + v147.CFrame:vectorToObjectSpace(v175))
                    end
                    local v179 = Instance.new("WeldConstraint")
                    v179.Part0 = v174
                    v179.Part1 = v147
                    v179.Parent = v174
                    local v_u_180 = v174:FindFirstChild("Glow")
                    if v_u_180 then
                        coroutine.wrap(function()
                            -- upvalues: (ref) v_u_2, (copy) v_u_180
                            local v181 = v_u_2.Heartbeat
                            for v182 = 0, 1, 0.016666666666666666 do
                                v181:Wait()
                                v_u_180.Transparency = v182 ^ 2
                            end
                        end)()
                    end
                    local v183 = v174:FindFirstChild("BulletHole")
                    if v183 then
                        v183.Color3 = v160
                        v_u_1:Create(v183, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 4), {
                            ["Transparency"] = 1
                        }):Play()
                    end
                    local v184 = v174:FindFirstChild("ImpactBillboard")
                    if v184 then
                        local v_u_185 = v184:FindFirstChild("Impact")
                        local v186 = v_u_1:Create(v_u_185, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
                            ["Size"] = UDim2.new(1, 0, 1, 0)
                        })
                        v186.Completed:Connect(function()
                            -- upvalues: (ref) v_u_1, (copy) v_u_185
                            v_u_1:Create(v_u_185, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
                                ["Size"] = nil,
                                ["ImageTransparency"] = 1,
                                ["Size"] = UDim2.new(0.5, 0, 0.5, 0)
                            }):Play()
                        end)
                        v186:Play()
                    end
                    v_u_4:AddItem(v174, 5)
                end
                v_u_131 = true
                v_u_132 = v136 + v_u_133
            end
        end
        if v140 <= v145 then
            if not v_u_128 then
                v_u_128 = true
                v_u_129 = v136
            end
            if v140 <= v143 and not v_u_131 then
                v_u_131 = true
                v_u_132 = v136 + v_u_133
            end
        end
        v_u_123:setDomain(v143, v145)
        if v143 < v140 then
            local v187 = v_u_130 * v_u_70
            v_u_125 = math.max(0, v187)
        end
        if v_u_78 then
            local v188 = v_u_123:samplePoint(1)
            local v189 = v_u_123:sampleVelocity(1)
            v_u_94.CFrame = CFrame.new(v188, v188 + v189)
            v_u_94.Velocity = v189.Unit * v_u_70
        end
        local v190 = v_u_105
        local v191 = v_u_106
        if v_u_107 then
            local v192 = (v_u_128 and (v136 - v_u_129 or 0) or 0) / v_u_107
            local v193 = math.clamp(v192, 0, 1)
            v190 = v190 * (1 - v193)
            v191 = v191 * (1 - v193)
        end
        if v_u_108 then
            v_u_108.Width0 = v190
            v_u_108.Width1 = v191
            v_u_123:renderToBeam(v_u_108)
        end
        if v_u_109 then
            v_u_109.Width0 = v190
            v_u_109.Width1 = v191
            v_u_123:renderToBeam(v_u_109)
        end
        if v_u_104 and (v_u_103 < v_u_130 and p_u_65.muzzleFlashBeam) then
            p_u_65.muzzleFlashBeam.Enabled = false
            v_u_104 = false
        end
        if v_u_131 and v136 - v_u_132 > 0 or v_u_130 > 10 then
            if v_u_94 then
                v_u_94:Destroy()
                v_u_94 = nil
            end
            v_u_124:Disconnect()
        end
    end
    local _ = v_u_2.Heartbeat:Connect(v194)
    if not v_u_8 and p_u_65.usesCharging then
        local v195 = p_u_65.charge - p_u_65:getConfigValue("FireDischarge", 1)
        p_u_65.charge = math.clamp(v195, 0, 1)
    end
end
function v_u_20.calculateDamage(p196, p197) -- name: calculateDamage
    local v198 = p196:getConfigValue("ZeroDamageDistance", 10000)
    local v199 = p196:getConfigValue("FullDamageDistance", 1000)
    local v200 = v198 - v199
    local v201 = p197 - v199
    local v202 = 1 - math.max(0, v201) / math.max(1, v200)
    local v203 = math.clamp(v202, 0, 1)
    local v204 = p196:getConfigValue("HitDamage", 10) * v203
    return math.max(v204, 0)
end
function v_u_20.applyDamage(p205, p206) -- name: applyDamage
    local v207 = p205:calculateDamage(p206.d)
    if v207 > 0 then
        p205.weaponsSystem.doDamage(p206.h, v207, nil, p205.player)
    end
end
function v_u_20.onHit(p_u_208, p209) -- name: onHit
    -- upvalues: (copy) v_u_8, (copy) v_u_3, (copy) v_u_6
    local v210 = p209.p
    local v211 = p209.n
    local v212 = p209.part
    if v212 and v212.Parent then
        p209.h = p_u_208.weaponsSystem.getHumanoid(v212) or v212
        if v_u_8 and (not p209.h:IsA("Humanoid") or p_u_208.weaponsSystem.playersOnDifferentTeams(p_u_208.weaponsSystem.getPlayerFromHumanoid(p209.h), p_u_208.player)) then
            p_u_208:applyDamage(p209)
        elseif p209.h:IsA("Humanoid") and (p209.h:GetState() ~= Enum.HumanoidStateType.Dead and (p_u_208.weaponsSystem.gui and (p_u_208.player == v_u_3.LocalPlayer and p_u_208.weaponsSystem.playersOnDifferentTeams(p_u_208.weaponsSystem.getPlayerFromHumanoid(p209.h), p_u_208.player)))) then
            p_u_208.weaponsSystem.gui:OnHitOtherPlayer(p_u_208:calculateDamage(p209.d), p209.h)
        end
    end
    if v_u_8 and p_u_208:getConfigValue("ExplodeOnImpact", false) then
        local v_u_213 = p_u_208:getConfigValue("BlastRadius", 8)
        local v214 = p_u_208:getConfigValue("BlastPressure", 10000)
        local v_u_215 = p_u_208:getConfigValue("BlastDamage", 100)
        local v216 = Instance.new("Explosion")
        v216.Position = v210 + v211 * 0.5
        v216.BlastRadius = v_u_213
        v216.BlastPressure = v214
        v216.ExplosionType = Enum.ExplosionType.NoCraters
        v216.DestroyJointRadiusPercent = 0
        v216.Visible = false
        v216.Hit:Connect(function(p217, p218)
            -- upvalues: (copy) v_u_213, (copy) v_u_215, (copy) p_u_208, (ref) v_u_6
            local v219 = p218 / v_u_213
            local v220 = v_u_215 * (1 - math.clamp(v219, 0, 1))
            local v221 = p_u_208.weaponsSystem.getHumanoid(p217)
            if v221 then
                if p217.Name == "UpperTorso" and (v221:GetState() ~= Enum.HumanoidStateType.Dead and p_u_208.weaponsSystem.playersOnDifferentTeams(p_u_208.weaponsSystem.getPlayerFromHumanoid(v221), p_u_208.player)) then
                    p_u_208.weaponsSystem.doDamage(v221, v220, nil, p_u_208.player)
                    return
                end
            elseif not v_u_6:HasTag(p217, "WeaponsSystemIgnore") then
                p_u_208.weaponsSystem.doDamage(p217, v220, nil, p_u_208.player)
            end
        end)
        v216.Parent = workspace
    end
end
function v_u_20.fire(p222, p223, p224, p225) -- name: fire
    -- upvalues: (copy) v_u_11
    if p222:isCharged() then
        v_u_11.fire(p222, p223, p224, p225)
    end
end
function v_u_20.onFired(p226, p227, p228, p229) -- name: onFired
    -- upvalues: (copy) v_u_8, (copy) v_u_3, (copy) v_u_11
    if v_u_8 or (p227 ~= v_u_3.LocalPlayer or not p229) then
        local v230 = p226:getConfigValue("ShotCooldown", 0.1)
        local v231 = p226:getConfigValue("FireMode", "Semiautomatic")
        local v232 = v231 == "Semiautomatic"
        if v231 == "Burst" and not p226.burstFiring then
            p226.burstIdx = 0
            p226.burstFiring = true
        elseif v232 then
            p226.triggerDisconnected = true
        end
        if p226.burstFiring then
            p226.burstIdx = p226.burstIdx + 1
            if p226.burstIdx >= p226:getConfigValue("NumBurstShots", 3) then
                p226.burstFiring = false
                p226.triggerDisconnected = true
            else
                v230 = p226:getConfigValue("BurstShotCooldown", nil) or v230
            end
        end
        p226.nextFireTime = tick() + v230
        v_u_11.onFired(p226, p227, p228, p229)
    end
end
function v_u_20.onConfigValueChanged(p233, p234, p235, p236) -- name: onConfigValueChanged
    -- upvalues: (copy) v_u_11, (copy) v_u_15, (copy) v_u_7, (copy) v_u_16, (copy) v_u_17
    v_u_11.onConfigValueChanged(p233, p234, p235, p236)
    if p234 == "ShotEffect" then
        p233.bulletEffectTemplate = v_u_15:FindFirstChild(p233:getConfigValue("ShotEffect", "Bullet"))
        if p233.bulletEffectTemplate then
            local v237 = p233.bulletEffectTemplate:FindFirstChildOfClass("Configuration")
            if v237 then
                p233:importConfiguration(v237)
            end
            local v_u_238 = p233.bulletEffectTemplate:FindFirstChild("Beam0")
            if v_u_238 then
                coroutine.wrap(function()
                    -- upvalues: (ref) v_u_7, (copy) v_u_238
                    v_u_7:PreloadAsync({ v_u_238 })
                end)()
                return
            end
        end
    elseif p234 == "HitMarkEffect" then
        p233.hitMarkTemplate = v_u_16:FindFirstChild(p233:getConfigValue("HitMarkEffect", "BulletHole"))
        local v239 = p233.hitMarkTemplate and p233.hitMarkTemplate:FindFirstChildOfClass("Configuration")
        if v239 then
            p233:importConfiguration(v239)
            return
        end
    elseif p234 == "CasingEffect" then
        p233.casingTemplate = v_u_17:FindFirstChild(p233:getConfigValue("CasingEffect", ""))
        local v240 = p233.casingTemplate and p233.casingTemplate:FindFirstChildOfClass("Configuration")
        if v240 then
            p233:importConfiguration(v240)
            return
        end
    elseif p234 == "ChargeRate" then
        p233.usesCharging = p235 ~= nil
    end
end
function v_u_20.onActivatedChanged(p241) -- name: onActivatedChanged
    -- upvalues: (copy) v_u_11, (copy) v_u_8, (copy) v_u_19
    v_u_11.onActivatedChanged(p241)
    if not v_u_8 then
        if p241.equipped and p241:getAmmoInWeapon() <= 0 then
            p241:reload()
            return
        end
        if p241.activated and (p241.player == v_u_19 and (p241:canFire() and tick() > p241.nextFireTime)) then
            p241:doLocalFire()
        end
        if not p241.activated and (p241.triggerDisconnected and not p241.burstFiring) then
            p241.triggerDisconnected = false
        end
    end
end
function v_u_20.onRenderStepped(p_u_242, p243) -- name: onRenderStepped
    -- upvalues: (copy) v_u_11, (copy) v_u_3, (copy) v_u_13, (copy) v_u_2
    v_u_11.onRenderStepped(p_u_242, p243)
    if p_u_242.tipAttach then
        if p_u_242.equipped then
            local v244 = p_u_242.tipAttach.WorldCFrame
            if p_u_242.player == v_u_3.LocalPlayer then
                local v245 = p_u_242:getAnimTrack(p_u_242:getConfigValue("AimTrack", "RifleAim"))
                local v246 = p_u_242:getAnimTrack(p_u_242:getConfigValue("AimZoomTrack", "RifleAimDownSights"))
                if v245 then
                    local v247 = v244.LookVector
                    local v248 = Ray.new(v244.p, v247 * 500)
                    local _, v249 = v_u_13.penetrateCast(v248, p_u_242.ignoreList)
                    if p_u_242.weaponsSystem.aimRayCallback then
                        local _, v250 = v_u_13.penetrateCast(p_u_242.weaponsSystem.aimRayCallback(), p_u_242.ignoreList)
                        p_u_242.aimPoint = v250
                    else
                        p_u_242.aimPoint = v249
                    end
                    if not (v245.IsPlaying or p_u_242.reloading) then
                        v245:Play(0.15)
                        spawn(function()
                            -- upvalues: (copy) p_u_242, (ref) v_u_2
                            local v251 = p_u_242:getConfigValue("StartupTime", 0.2)
                            local v252 = tick() + v251
                            while tick() < v252 do
                                v_u_2.Heartbeat:Wait()
                            end
                            p_u_242.startupFinished = true
                        end)
                    end
                    if v246 and not p_u_242.reloading then
                        if not v246.IsPlaying then
                            v246:Play(0.15)
                        end
                        v246:AdjustSpeed(0.001)
                        if p_u_242.weaponsSystem.camera:isZoomed() then
                            if v245.WeightTarget ~= 0 then
                                v246:AdjustWeight(1)
                                v245:AdjustWeight(0)
                            end
                        elseif v245.WeightTarget ~= 1 then
                            v246:AdjustWeight(0)
                            v245:AdjustWeight(1)
                        end
                    end
                    local v253 = p_u_242.recoilIntensity
                    local v254 = math.deg(v253)
                    if p_u_242.weaponsSystem.camera.enabled then
                        local v255 = p_u_242.weaponsSystem.camera:getRelativePitch() + p_u_242.weaponsSystem.camera.currentRecoil.Y + p_u_242.recoilIntensity
                        v254 = math.deg(v255)
                    end
                    local v256 = (v254 - -80) / 160 * 2 or 1
                    v245:AdjustSpeed(0.001)
                    v245.TimePosition = math.clamp(v256, 0.001, 1.97)
                    if v246 then
                        v246.TimePosition = math.clamp(v256, 0.001, 1.97)
                    end
                    local v257 = p_u_242:getConfigValue("RecoilDecay", 0.825)
                    local v258 = p_u_242.recoilIntensity * v257
                    p_u_242.recoilIntensity = math.clamp(v258, 0, (1 / 0))
                    return
                end
                warn("no aimTrack")
            end
        end
    else
        return
    end
end
function v_u_20.setChargingParticles(p259, p260) -- name: setChargingParticles
    local v261 = p259:getConfigValue("ChargingParticlesRatePerCharge", 20) * p260
    for _, v262 in pairs(p259.chargingParticles) do
        v262.Rate = v261
    end
end
function v_u_20.onStepped(p263, p264) -- name: onStepped
    -- upvalues: (copy) v_u_11
    if p263.tipAttach then
        if p263.equipped then
            v_u_11.onStepped(p263, p264)
            local v265 = tick()
            local v266 = p263:getSound("Charging")
            local v267 = p263:getSound("Discharging")
            if p263.usesCharging then
                local v268 = p263.charge
                p263:handleCharging(p264)
                local v269 = p263.charge - v268
                if v269 > 0 then
                    p263:setChargingParticles(p263.charge)
                else
                    p263:setChargingParticles(0)
                end
                if v266 then
                    if v266.Looped then
                        if v269 < 0 then
                            v266:Stop()
                        else
                            if not v266.Playing and (p263.charge < 1 and v269 > 0) then
                                v266:Play()
                            end
                            v266.PlaybackSpeed = p263.chargeSoundPitchMin + p263.charge * (p263.chargeSoundPitchMax - p263.chargeSoundPitchMin)
                        end
                    elseif v269 > 0 and (p263.charge <= 1 and not v266.Playing) then
                        v266.TimePosition = v266.TimeLength * p263.charge
                        v266:Play()
                    elseif v269 <= 0 and v266.Playing then
                        v266:Stop()
                    end
                end
                if v267 then
                    if v267.Looped then
                        if v269 > 0 then
                            v267:Stop()
                        else
                            if not v267.Playing and p263.charge > 0 then
                                v267:Play()
                            end
                            v267.PlaybackSpeed = p263.chargeSoundPitchMin + p263.charge * (p263.chargeSoundPitchMax - p263.chargeSoundPitchMin)
                        end
                    elseif v269 < 0 and (p263.charge >= 0 and not v267.Playing) then
                        v267.TimePosition = v267.TimeLength * p263.charge
                        v267:Play()
                    elseif v269 >= 0 and v267.Playing then
                        v267:Stop()
                    end
                end
                if v268 < 1 and p263.charge >= 1 then
                    local v270 = p263:getSound("ChargeComplete")
                    if v270 then
                        v270:Play()
                    end
                    if v266 and v266.Playing then
                        v266:Stop()
                    end
                    if p263.chargeCompleteParticles then
                        p263.chargeCompleteParticles:Emit(p263:getConfigValue("NumChargeCompleteParticles", 25))
                    end
                end
                if v268 > 0 and p263.charge <= 0 then
                    local v271 = p263:getSound("DischargeComplete")
                    if v271 then
                        v271:Play()
                    end
                    if v267 and v267.Playing then
                        v267:Stop()
                    end
                    if p263.dischargeCompleteParticles then
                        p263.dischargeCompleteParticles:Emit(p263:getConfigValue("NumDischargeCompleteParticles", 25))
                    end
                end
                p263:renderCharge()
            else
                if v266 then
                    v266:Stop()
                end
                if v267 then
                    v267:Stop()
                end
            end
            if p263.usesCharging and p263.chargeGlowPart then
                p263.chargeGlowPart.Transparency = 1 - p263.charge
            end
            if p263:canFire() and p263.nextFireTime < v265 then
                p263:doLocalFire()
            end
        end
    else
        return
    end
end
function v_u_20.handleCharging(p272, p273) -- name: handleCharging
    local v274 = p272.activated or (p272.burstFiring or p272:getConfigValue("ChargePassively", false))
    if p272.reloading or p272.triggerDisconnected then
        v274 = false
    end
    local v275
    if v274 then
        v275 = p272:getConfigValue("ChargeRate", 0) * p273
    else
        v275 = p272:getConfigValue("DischargeRate", 0) * -p273
    end
    local v276 = p272.charge + v275
    p272.charge = math.clamp(v276, 0, 1)
end
function v_u_20.isCharged(p277) -- name: isCharged
    return not p277.usesCharging or p277.charge >= 1
end
function v_u_20.canFire(p278) -- name: canFire
    -- upvalues: (copy) v_u_3
    local v279 = p278.player == v_u_3.LocalPlayer and (p278.burstFiring or p278.activated) and (not p278.triggerDisconnected and (not p278.reloading and p278:isCharged()))
    if v279 then
        v279 = p278.startupFinished
    end
    return v279
end
function v_u_20.doLocalFire(p280) -- name: doLocalFire
    if p280.tipAttach then
        local v281 = p280.tipAttach.WorldCFrame.Position
        p280:fire(v281, (p280.aimPoint - v281).Unit, p280.charge)
    end
end
return v_u_20

-- Script Path: game:GetService("StarterPack").Crossbow.WeaponsSystem.WeaponTypes.BowWeapon
-- Took 0s to decompile.
-- Executor: Delta (1.1.731.944)

local v_u_1 = game:GetService("RunService"):IsServer()
local v2 = script.Parent.Parent:WaitForChild("WeaponTypes")
local v_u_3 = require(v2:WaitForChild("BulletWeapon"))
local v_u_4 = {}
v_u_4.__index = v_u_4
setmetatable(v_u_4, v_u_3)
v_u_4.CanAimDownSights = true
v_u_4.CanBeFired = true
v_u_4.CanBeReloaded = true
v_u_4.CanHit = true
function v_u_4.new(p5, p6) -- name: new
    -- upvalues: (copy) v_u_3, (copy) v_u_4
    local v7 = v_u_3.new(p5, p6)
    local v8 = v_u_4
    setmetatable(v7, v8)
    v7.hasArrow = true
    v7.arrowPart = v7.instance:FindFirstChild("Arrow", true)
    v7.armsPart = v7.instance:FindFirstChild("Arms", true)
    if v7.armsPart then
        v7.armsMesh = v7.armsPart:FindFirstChildOfClass("SpecialMesh")
        v7.tightOffsetValue = v7.armsPart:FindFirstChild("TightOffset")
        v7.tightScaleValue = v7.armsPart:FindFirstChild("TightScale")
        v7.looseOffsetValue = v7.armsPart:FindFirstChild("LooseOffset")
        v7.looseScaleValue = v7.armsPart:FindFirstChild("LooseScale")
        v7.leftLooseAttach = v7.armsPart:FindFirstChild("LeftLoose")
        v7.rightLooseAttach = v7.armsPart:FindFirstChild("RightLoose")
        v7.leftTightAttach = v7.armsPart:FindFirstChild("LeftTight")
        v7.rightTightAttach = v7.armsPart:FindFirstChild("RightTight")
        v7.leftString0 = v7.armsPart:FindFirstChild("LeftString0")
        v7.rightString0 = v7.armsPart:FindFirstChild("RightString0")
    end
    v7.string1 = v7.instance:FindFirstChild("String1", true)
    v7.stringLooseAttach = v7.instance:FindFirstChild("StringLoose", true)
    v7.stringTightAttach = v7.instance:FindFirstChild("StringTight", true)
    v7:setHasArrow(false)
    return v7
end
function v_u_4.renderCharge(p9) -- name: renderCharge
    if p9.armsMesh and (p9.looseOffsetValue and (p9.looseScaleValue and (p9.tightOffsetValue and p9.tightScaleValue))) then
        local v10 = p9.looseOffsetValue.Value
        local v11 = p9.tightOffsetValue.Value
        local v12 = p9.looseScaleValue.Value
        local v13 = p9.tightScaleValue.Value
        p9.armsMesh.Offset = v10:Lerp(v11, p9.charge)
        p9.armsMesh.Scale = v12:Lerp(v13, p9.charge)
    end
    if p9.leftString0 and (p9.leftLooseAttach and p9.leftTightAttach) then
        p9.leftString0.CFrame = p9.leftLooseAttach.CFrame:lerp(p9.leftTightAttach.CFrame, p9.charge)
    end
    if p9.rightString0 and (p9.rightLooseAttach and p9.rightTightAttach) then
        p9.rightString0.CFrame = p9.rightLooseAttach.CFrame:lerp(p9.rightTightAttach.CFrame, p9.charge)
    end
    if p9.string1 and (p9.stringLooseAttach and p9.stringTightAttach) then
        p9.string1.CFrame = p9.stringLooseAttach.CFrame:lerp(p9.stringTightAttach.CFrame, p9.charge)
    end
end
function v_u_4.handleCharging(p14, p15) -- name: handleCharging
    -- upvalues: (copy) v_u_3
    if not p14.hasArrow then
        v_u_3.handleCharging(p14, p15)
        if p14.charge >= 1 then
            p14:setHasArrow(true)
        end
    end
end
function v_u_4.onActivatedChanged(p16) -- name: onActivatedChanged
    -- upvalues: (copy) v_u_1, (copy) v_u_3
    if not v_u_1 and (not p16.activated and p16.didFire) then
        p16.didFire = false
    end
    v_u_3.onActivatedChanged(p16)
end
function v_u_4.isCharged(p17) -- name: isCharged
    local v18 = p17.hasArrow
    if v18 then
        v18 = p17.charge >= 1
    end
    return v18
end
function v_u_4.doLocalFire(p19) -- name: doLocalFire
    -- upvalues: (copy) v_u_3
    v_u_3.doLocalFire(p19)
    p19:setHasArrow(false)
    p19.didFire = true
end
function v_u_4.setHasArrow(p20, p21) -- name: setHasArrow
    if p20.hasArrow ~= p21 then
        p20.hasArrow = p21
        if p20.arrowPart then
            p20.arrowPart.Transparency = p20.hasArrow and 0 or 1
        end
    end
end
return v_u_4

-- Script Path: game:GetService("StarterPack").Crossbow.WeaponsSystem.Libraries.WeaponsGui
-- Took 0.02s to decompile.
-- Executor: Delta (1.1.731.944)

local v1 = game:GetService("Players")
local v_u_2 = game:GetService("RunService")
local v_u_3 = game:GetService("UserInputService")
local v_u_4 = game:GetService("ContentProvider")
local v_u_5 = game:GetService("TweenService")
local v_u_6 = v1.LocalPlayer
local v7 = script.Parent.Parent
local v_u_8 = v7:WaitForChild("WeaponData")
local v9 = v7:WaitForChild("Libraries")
local v_u_10 = require(v9:WaitForChild("SpringService"))
local v_u_11 = require(v9:WaitForChild("DirectionalIndicatorGuiManager"))
local v_u_12 = require(v9:WaitForChild("DamageBillboardHandler"))
local v_u_13 = v7:WaitForChild("Assets"):WaitForChild("WeaponsSystemGui")
local v_u_14 = {}
v_u_14.__index = v_u_14
function v_u_14.new(p15) -- name: new
    -- upvalues: (copy) v_u_14, (copy) v_u_13, (copy) v_u_11, (copy) v_u_6, (copy) v_u_8, (copy) v_u_4
    local v16 = v_u_14
    local v_u_17 = setmetatable({}, v16)
    v_u_17.weaponsSystem = p15
    v_u_17.connections = {}
    v_u_17.enabled = false
    v_u_17.referenceViewportSize = Vector2.new(1000, 1000)
    v_u_17.scaleWeight = 0.75
    v_u_17.originalScaleAmounts = {}
    v_u_17.crosshairDampingRatio = 0.9
    v_u_17.crosshairFrequency = 3
    v_u_17.crosshairScaleTarget = 1
    v_u_17.crosshairScale = 1
    v_u_17.crosshairWeaponScale = 1
    v_u_17.crosshairEnabled = true
    v_u_17.scopeEnabled = false
    v_u_17.isZoomed = false
    v_u_17.gui = v_u_13:Clone()
    v_u_17.gui.Enabled = false
    coroutine.wrap(function()
        -- upvalues: (copy) v_u_17, (ref) v_u_11, (ref) v_u_6, (ref) v_u_8, (ref) v_u_4
        v_u_17.scalingElementsFolder = v_u_17.gui:WaitForChild("ScalingElements")
        v_u_17.DirectionalIndicatorGuiManager = v_u_11.new(v_u_17)
        v_u_17.crosshairFrame = v_u_17.scalingElementsFolder:WaitForChild("Crosshair")
        v_u_17.crosshairBottom = v_u_17.crosshairFrame:WaitForChild("Bottom")
        v_u_17.crosshairLeft = v_u_17.crosshairFrame:WaitForChild("Left")
        v_u_17.crosshairRight = v_u_17.crosshairFrame:WaitForChild("Right")
        v_u_17.crosshairTop = v_u_17.crosshairFrame:WaitForChild("Top")
        v_u_17.origCrosshairScales = {}
        v_u_17.origCrosshairScales[v_u_17.crosshairBottom] = Vector2.new(v_u_17.crosshairBottom.Size.X.Scale, v_u_17.crosshairBottom.Size.Y.Scale)
        v_u_17.origCrosshairScales[v_u_17.crosshairLeft] = Vector2.new(v_u_17.crosshairLeft.Size.X.Scale, v_u_17.crosshairLeft.Size.Y.Scale)
        v_u_17.origCrosshairScales[v_u_17.crosshairRight] = Vector2.new(v_u_17.crosshairRight.Size.X.Scale, v_u_17.crosshairRight.Size.Y.Scale)
        v_u_17.origCrosshairScales[v_u_17.crosshairTop] = Vector2.new(v_u_17.crosshairTop.Size.X.Scale, v_u_17.crosshairTop.Size.Y.Scale)
        v_u_17.crosshairNormalSize = v_u_17.crosshairFrame.AbsoluteSize
        v_u_17.hitMarker = v_u_17.scalingElementsFolder:WaitForChild("HitMarker"):WaitForChild("HitMarkerImage")
        v_u_17.scopeFrame = v_u_17.gui:WaitForChild("Scope")
        local v18 = v_u_17.scopeFrame:WaitForChild("ScopeImage")
        v_u_17.smallTouchscreen = v_u_17.gui:WaitForChild("SmallTouchscreen")
        v_u_17.largeTouchscreen = v_u_17.gui:WaitForChild("LargeTouchscreen")
        v_u_17.smallAimButton = v_u_17.smallTouchscreen:WaitForChild("AimButton")
        v_u_17.smallAimButton.Activated:Connect(function()
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchAimButtonActivated()
        end)
        v_u_17.largeAimButton = v_u_17.largeTouchscreen:WaitForChild("AimButton")
        v_u_17.largeAimButton.Activated:Connect(function()
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchAimButtonActivated()
        end)
        v_u_17.smallFireButton = v_u_17.smallTouchscreen:WaitForChild("FireButton")
        v_u_17.smallFireButton.InputBegan:Connect(function(p19)
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchFireButton(p19, Enum.UserInputState.Begin)
        end)
        v_u_17.smallFireButton.InputEnded:Connect(function(p20)
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchFireButton(p20, Enum.UserInputState.End)
        end)
        v_u_17.largeFireButton = v_u_17.largeTouchscreen:WaitForChild("FireButton")
        v_u_17.largeFireButton.InputBegan:Connect(function(p21)
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchFireButton(p21, Enum.UserInputState.Begin)
        end)
        v_u_17.largeFireButton.InputEnded:Connect(function(p22)
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchFireButton(p22, Enum.UserInputState.End)
        end)
        v_u_17.smallFireButton.Visible = false
        v_u_17.largeFireButton.Visible = false
        v_u_17.gui.Parent = v_u_6:WaitForChild("PlayerGui")
        v_u_17.gui:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
            -- upvalues: (ref) v_u_17
            v_u_17:onScreenSizeChanged()
        end)
        v_u_17:onScreenSizeChanged()
        v_u_8.OnClientEvent:Connect(function(p23, p24)
            -- upvalues: (ref) v_u_17
            if p23 == "HitByOtherPlayer" then
                v_u_17.DirectionalIndicatorGuiManager:ActivateDirectionalIndicator("DamageIndicator", p24)
            end
        end)
        v_u_4:PreloadAsync({
            v_u_17.crosshairBottom,
            v_u_17.crosshairLeft,
            v_u_17.crosshairRight,
            v_u_17.crosshairTop,
            v18,
            v_u_17.smallAimButton,
            v_u_17.largeAimButton,
            v_u_17.smallFireButton,
            v_u_17.largeFireButton
        })
    end)()
    return v_u_17
end
function v_u_14.onScreenSizeChanged(p25) -- name: onScreenSizeChanged
    -- upvalues: (copy) v_u_3, (copy) v_u_6
    if p25.smallTouchscreen and p25.largeTouchscreen then
        if v_u_3.TouchEnabled then
            local v26
            if v_u_3.TouchEnabled then
                v26 = v_u_6.PlayerGui:WaitForChild("TouchGui").TouchControlFrame:FindFirstChild("JumpButton")
            else
                v26 = nil
            end
            local v27
            if v26 then
                v27 = v26.Size.X.Offset <= 70
            else
                v27 = p25.gui.AbsoluteSize.Y < 600
            end
            p25.smallTouchscreen.Visible = v27
            p25.largeTouchscreen.Visible = not v27
        else
            p25.smallTouchscreen.Visible = false
            p25.largeTouchscreen.Visible = false
        end
    end
    local v28 = workspace.CurrentCamera.ViewportSize
    for _, v29 in pairs(p25.scalingElementsFolder:GetChildren()) do
        p25:updateScale(v29, v28)
    end
    p25.crosshairNormalSize = p25.crosshairFrame.AbsoluteSize
    p25.crosshairBottom.Size = UDim2.new(0, p25.origCrosshairScales[p25.crosshairBottom].X * p25.crosshairNormalSize.X, 0, p25.origCrosshairScales[p25.crosshairBottom].Y * p25.crosshairNormalSize.Y)
    p25.crosshairLeft.Size = UDim2.new(0, p25.origCrosshairScales[p25.crosshairLeft].X * p25.crosshairNormalSize.X, 0, p25.origCrosshairScales[p25.crosshairLeft].Y * p25.crosshairNormalSize.Y)
    p25.crosshairRight.Size = UDim2.new(0, p25.origCrosshairScales[p25.crosshairRight].X * p25.crosshairNormalSize.X, 0, p25.origCrosshairScales[p25.crosshairRight].Y * p25.crosshairNormalSize.Y)
    p25.crosshairTop.Size = UDim2.new(0, p25.origCrosshairScales[p25.crosshairTop].X * p25.crosshairNormalSize.X, 0, p25.origCrosshairScales[p25.crosshairTop].Y * p25.crosshairNormalSize.Y)
end
function v_u_14.getWeightedScaleAmount(p30, p31, p32, p33) -- name: getWeightedScaleAmount
    return (1 - p30.scaleWeight) * p31 * p33 / p32 + p30.scaleWeight * p31
end
function v_u_14.updateScale(p34, p35, p36) -- name: updateScale
    if p35:IsA("GuiObject") then
        local v37 = p35.Size.X.Scale
        local v38 = p35.Size.Y.Scale
        if v37 ~= 0 or (v38 ~= 0 or p34.originalScaleAmounts[p35] ~= nil) then
            if p34.originalScaleAmounts[p35] == nil then
                p34.originalScaleAmounts[p35] = Vector2.new(v37, v38)
            end
            local v39 = p34:getWeightedScaleAmount(p34.originalScaleAmounts[p35].X, p36.X, p34.referenceViewportSize.X)
            local v40 = p34:getWeightedScaleAmount(p34.originalScaleAmounts[p35].Y, p36.Y, p34.referenceViewportSize.Y)
            p35.Size = UDim2.new(v39, 0, v40, 0)
        end
    else
        for _, v41 in ipairs(p35:GetChildren()) do
            p34:updateScale(v41, p36)
        end
    end
end
function v_u_14.setEnabled(p_u_42, p43) -- name: setEnabled
    -- upvalues: (copy) v_u_2
    if p_u_42.enabled ~= p43 then
        p_u_42.enabled = p43
        if p_u_42.enabled then
            p_u_42.connections.renderStepped = v_u_2.RenderStepped:Connect(function(p44)
                -- upvalues: (copy) p_u_42
                p_u_42:onRenderStepped(p44)
            end)
        else
            p_u_42:setZoomed(false)
            for _, v45 in pairs(p_u_42.connections) do
                v45:Disconnect()
            end
            p_u_42.connections = {}
        end
        if p_u_42.gui then
            p_u_42.gui.Enabled = p_u_42.enabled
        end
    end
end
function v_u_14.setCrosshairEnabled(p46, p47) -- name: setCrosshairEnabled
    if p46.crosshairEnabled ~= p47 then
        p46.crosshairEnabled = p47
        if p46.crosshairFrame then
            p46.crosshairFrame.Visible = p46.crosshairEnabled
        end
        if p46.hitMarker then
            p46.hitMarker.ImageTransparency = 1
            p46.hitMarker.Visible = p46.crosshairEnabled
        end
    end
end
function v_u_14.setScopeEnabled(p48, p49) -- name: setScopeEnabled
    -- upvalues: (copy) v_u_3, (copy) v_u_6
    if p48.scopeEnabled ~= p49 then
        p48.scopeEnabled = p49
        if p48.scopeFrame then
            p48.scopeFrame.Visible = p48.scopeEnabled
        end
        local v50
        if v_u_3.TouchEnabled then
            v50 = v_u_6.PlayerGui:WaitForChild("TouchGui").TouchControlFrame:FindFirstChild("JumpButton")
        else
            v50 = nil
        end
        if p48.scopeEnabled then
            p48.smallFireButton.Visible = true
            p48.largeFireButton.Visible = true
            if v50 then
                v50.Visible = false
                return
            end
        else
            p48.smallFireButton.Visible = false
            p48.largeFireButton.Visible = false
            if v50 then
                v50.Visible = true
            end
        end
    end
end
function v_u_14.setCrosshairWeaponScale(p51, p52) -- name: setCrosshairWeaponScale
    if p51.crosshairWeaponScale ~= p52 then
        p51.crosshairWeaponScale = p52
    end
end
function v_u_14.setCrosshairScaleTarget(p53, p54, p55, p56) -- name: setCrosshairScaleTarget
    -- upvalues: (copy) v_u_10
    if typeof(p55) == "number" then
        p53.crosshairDampingRatio = p55
    end
    if typeof(p56) == "number" then
        p53.crosshairFrequency = p56
    end
    if p53.crosshairScaleTarget ~= p54 then
        p53.crosshairScaleTarget = p54
        v_u_10:Target(p53, p53.crosshairDampingRatio, p53.crosshairFrequency, {
            ["crosshairScale"] = p53.crosshairScaleTarget
        })
    end
end
function v_u_14.setCrosshairScale(p57, p58) -- name: setCrosshairScale
    -- upvalues: (copy) v_u_10
    if p57.crosshairScale ~= p58 then
        p57.crosshairScale = p58
        v_u_10:Target(p57, p57.crosshairDampingRatio, p57.crosshairFrequency, {
            ["crosshairScale"] = p57.crosshairScaleTarget
        })
    end
end
function v_u_14.OnHitOtherPlayer(p59, p60, p61) -- name: OnHitOtherPlayer
    -- upvalues: (copy) v_u_5, (copy) v_u_12
    p59.hitMarker.ImageTransparency = 0
    local v62 = TweenInfo.new(0.8)
    v_u_5:Create(p59.hitMarker, v62, {
        ["ImageTransparency"] = 1
    }):Play()
    v_u_12:ShowDamageBillboard(p60, p61.Parent:FindFirstChild("Head"))
end
function v_u_14.onRenderStepped(p63, _) -- name: onRenderStepped
    if p63.enabled then
        if p63.gui then
            if p63.crosshairFrame and p63.crosshairEnabled then
                local v64 = p63.crosshairNormalSize * p63.crosshairScale * p63.crosshairWeaponScale
                p63.crosshairFrame.Size = UDim2.new(0, v64.X, 0, v64.Y)
            end
        end
    else
        return
    end
end
function v_u_14.setZoomed(p65, p66) -- name: setZoomed
    if p66 ~= p65.isZoomed then
        p65.isZoomed = p66
        local v67 = p65.isZoomed and "rbxassetid://2804597178" or "rbxassetid://2804583948"
        local v68 = p65.isZoomed and "rbxassetid://2804599869" or "rbxassetid://2804598866"
        if p65.smallAimButton then
            p65.smallAimButton.Image = v67
            p65.smallAimButton.PressedImage = v68
        end
        if p65.largeAimButton then
            p65.largeAimButton.Image = v67
            p65.largeAimButton.PressedImage = v68
        end
        if p65.weaponsSystem.camera then
            p65.weaponsSystem.camera:setForceZoomed(p65.isZoomed)
        end
    end
end
function v_u_14.onTouchAimButtonActivated(p69) -- name: onTouchAimButtonActivated
    p69:setZoomed(not p69.isZoomed)
end
function v_u_14.onTouchFireButton(p_u_70, p_u_71, _) -- name: onTouchFireButton
    local v_u_72 = p_u_70.weaponsSystem.currentWeapon
    if v_u_72 and (v_u_72.instance and (v_u_72.instance:IsA("Tool") and p_u_71.UserInputState == Enum.UserInputState.Begin)) then
        v_u_72.instance:Activate()
        if p_u_70.smallFireButton then
            p_u_70.smallFireButton.Image = "rbxassetid://2804818076"
        end
        if p_u_70.largeFireButton then
            p_u_70.largeFireButton.Image = "rbxassetid://2804818076"
        end
        p_u_71:GetPropertyChangedSignal("UserInputState"):Connect(function()
            -- upvalues: (copy) p_u_71, (copy) v_u_72, (copy) p_u_70
            if p_u_71.UserInputState == Enum.UserInputState.End then
                v_u_72.instance:Deactivate()
                if p_u_70.smallFireButton then
                    p_u_70.smallFireButton.Image = "rbxassetid://2804818047"
                end
                if p_u_70.largeFireButton then
                    p_u_70.largeFireButton.Image = "rbxassetid://2804818047"
                end
            end
        end)
    end
end
return v_u_14

-- Script Path: game:GetService("StarterPack").Crossbow.WeaponsSystem.Libraries.BaseWeapon
-- Took 0.02s to decompile.
-- Executor: Delta (1.1.731.944)

local v_u_1 = game:GetService("RunService")
local v_u_2 = game:GetService("Players")
local v_u_3 = v_u_1:IsServer()
local v_u_4 = script.Parent.Parent:WaitForChild("Assets"):WaitForChild("Animations")
local v_u_5 = Random.new()
local v_u_6 = {}
v_u_6.__index = v_u_6
v_u_6.CanAimDownSights = false
v_u_6.CanBeReloaded = false
v_u_6.CanBeFired = false
v_u_6.CanHit = false
function v_u_6.new(p7, p8) -- name: new
    -- upvalues: (copy) v_u_6
    assert(p8, "BaseWeapon.new() requires a valid Instance to be attached to.")
    local v9 = v_u_6
    local v_u_10 = setmetatable({}, v9)
    v_u_10.connections = {}
    v_u_10.descendants = {}
    v_u_10.descendantsRegistered = false
    v_u_10.optionalDescendantNames = {}
    v_u_10.weaponsSystem = p7
    v_u_10.instance = p8
    v_u_10.animController = nil
    v_u_10.player = nil
    v_u_10.enabled = false
    v_u_10.equipped = false
    v_u_10.activated = false
    v_u_10.nextShotId = 1
    v_u_10.activeRenderStepName = nil
    v_u_10.curReloadSound = nil
    v_u_10.animTracks = {}
    v_u_10.sounds = {}
    v_u_10.configValues = {}
    v_u_10.trackedConfigurations = {}
    v_u_10.ammoInWeaponValue = nil
    v_u_10.reloading = false
    v_u_10.canReload = true
    v_u_10:registerDescendants()
    v_u_10.connections.descendantAdded = v_u_10.instance.DescendantAdded:Connect(function(p11)
        -- upvalues: (copy) v_u_10
        v_u_10:onDescendantAdded(p11)
    end)
    return v_u_10
end
function v_u_6.doInitialSetup(p_u_12) -- name: doInitialSetup
    -- upvalues: (copy) v_u_3, (copy) v_u_2
    local v13 = getmetatable(p_u_12)
    p_u_12.instanceIsTool = p_u_12.instance:IsA("Tool")
    p_u_12.connections.childAdded = p_u_12.instance.ChildAdded:Connect(function(p14)
        -- upvalues: (copy) p_u_12
        p_u_12:onChildAdded(p14)
    end)
    p_u_12.connections.childRemoved = p_u_12.instance.ChildRemoved:Connect(function(p15)
        -- upvalues: (copy) p_u_12
        p_u_12:onChildRemoved(p15)
    end)
    for _, v16 in pairs(p_u_12.instance:GetChildren()) do
        p_u_12:onChildAdded(v16)
    end
    if v13.CanBeReloaded then
        if v_u_3 then
            p_u_12.ammoInWeaponValue = p_u_12.instance:FindFirstChild("CurrentAmmo")
            if not p_u_12.ammoInWeaponValue then
                p_u_12.ammoInWeaponValue = Instance.new("IntValue")
                p_u_12.ammoInWeaponValue.Name = "CurrentAmmo"
                p_u_12.ammoInWeaponValue.Value = 0
                p_u_12.ammoInWeaponValue.Parent = p_u_12.instance
            end
            p_u_12.ammoInWeaponValue.Value = p_u_12:getConfigValue("AmmoCapacity", 30)
        else
            p_u_12.ammoInWeaponValue = p_u_12.instance:WaitForChild("CurrentAmmo")
        end
    end
    p_u_12.connections.ancestryChanged = p_u_12.instance.AncestryChanged:Connect(function()
        -- upvalues: (copy) p_u_12
        p_u_12:onAncestryChanged()
    end)
    p_u_12:onAncestryChanged()
    if p_u_12.instanceIsTool then
        p_u_12.connections.equipped = p_u_12.instance.Equipped:Connect(function()
            -- upvalues: (ref) v_u_3, (ref) v_u_2, (copy) p_u_12
            if v_u_3 or v_u_2.LocalPlayer and (p_u_12.instance:IsDescendantOf(v_u_2.LocalPlayer.Backpack) or p_u_12.instance:IsDescendantOf(v_u_2.LocalPlayer.Character)) then
                p_u_12:setEquipped(true)
                if p_u_12:getAmmoInWeapon() <= 0 then
                    coroutine.wrap(function()
                        -- upvalues: (ref) p_u_12
                        wait()
                        p_u_12:reload()
                    end)()
                end
            end
        end)
        p_u_12.connections.unequipped = p_u_12.instance.Unequipped:Connect(function()
            -- upvalues: (ref) v_u_3, (ref) v_u_2, (copy) p_u_12
            if v_u_3 or v_u_2.LocalPlayer and (p_u_12.instance:IsDescendantOf(v_u_2.LocalPlayer.Backpack) or p_u_12.instance:IsDescendantOf(v_u_2.LocalPlayer.Character)) then
                p_u_12:setEquipped(false)
                if p_u_12.reloading then
                    p_u_12:cancelReload()
                end
            end
        end)
        if p_u_12.instance:IsDescendantOf(workspace) and p_u_12.player then
            p_u_12:setEquipped(true)
        end
        p_u_12.connections.activated = p_u_12.instance.Activated:Connect(function()
            -- upvalues: (copy) p_u_12
            p_u_12:setActivated(true)
        end)
        p_u_12.connections.deactivated = p_u_12.instance.Deactivated:Connect(function()
            -- upvalues: (copy) p_u_12
            p_u_12:setActivated(false)
        end)
        if v_u_3 then
            p_u_12.handle = p_u_12.instance:FindFirstChild("Handle")
            local v17 = p_u_12.instance:FindFirstChildOfClass("Model")
            local v18 = v17:FindFirstChild("HandleAttachment", true)
            if p_u_12.handle and v18 then
                local v19 = v17.PrimaryPart.CFrame:toObjectSpace(v18.WorldCFrame)
                local v20 = Instance.new("Weld")
                v20.Name = "HandleWeld"
                v20.Part0 = p_u_12.handle
                v20.Part1 = v17.PrimaryPart
                v20.C0 = CFrame.new()
                v20.C1 = v19
                v20.Parent = p_u_12.handle
                p_u_12.handle.Anchored = false
                v17.PrimaryPart.Anchored = false
            end
        end
    end
end
function v_u_6.registerDescendants(p21) -- name: registerDescendants
    if not p21.instance then
        error("No instance set yet!")
    end
    if p21.descendantsRegistered then
        warn("Descendants already registered!")
    else
        for _, v22 in ipairs(p21.instance:GetDescendants()) do
            if p21.descendants[v22.Name] == nil then
                p21.descendants[v22.Name] = v22
            else
                p21.descendants[v22.Name] = "Multiple"
            end
        end
        p21.descendantsRegistered = true
    end
end
function v_u_6.addOptionalDescendant(p23, p24, p25) -- name: addOptionalDescendant
    if p23.instance == nil then
        error("No instance set yet!")
    end
    if not p23.descendantsRegistered then
        error("Descendants not registered!")
    end
    if p23.descendants[p25] == "Multiple" then
        error("Weapon \"" .. p23.instance.Name .. "\" has multiple descendants named \"" .. p25 .. "\", so you cannot addOptionalDescendant with that descendant name.")
    end
    local v26 = p23.descendants[p25]
    if v26 then
        p23[p24] = v26
    else
        p23.optionalDescendantNames[p25] = p24
    end
end
function v_u_6.onDescendantAdded(p27, p28) -- name: onDescendantAdded
    if p27.descendants[p28.Name] == nil then
        p27.descendants[p28.Name] = p28
    else
        p27.descendants[p28.Name] = "Multiple"
    end
    local v29 = p27.optionalDescendantNames[p28.Name]
    if v29 then
        if p27.descendants[p28.Name] == "Multiple" then
            error("Weapon \"" .. p27.instance.Name .. "\" has multiple descendants named \"" .. p28.Name .. "\", so you cannot addOptionalDependency with that descendant name.")
        end
        p27[v29] = p28
        p27.optionalDescendantNames[p28.Name] = nil
    end
end
function v_u_6.cleanupConnection(p30, ...) -- name: cleanupConnection
    for _, v31 in pairs({ ... }) do
        if typeof(v31) == "string" and p30.connections[v31] then
            p30.connections[v31]:Disconnect()
            p30.connections[v31] = nil
        end
    end
end
function v_u_6.onAncestryChanged(p32) -- name: onAncestryChanged
    -- upvalues: (copy) v_u_2
    if p32.instanceIsTool then
        local v33 = nil
        local v34
        if p32.instance:IsDescendantOf(v_u_2) then
            v34 = p32.instance.Parent.Parent
            if v34 then
                if not v34:IsA("Player") then
                    v34 = v33
                end
            else
                v34 = v33
            end
        elseif p32.instance:IsDescendantOf(workspace) then
            v34 = v_u_2:GetPlayerFromCharacter(p32.instance.Parent)
            if v34 then
                if not v34:IsA("Player") then
                    v34 = v33
                end
            else
                v34 = v33
            end
        else
            v34 = v33
        end
        p32:setPlayer(v34)
    end
end
function v_u_6.setPlayer(p35, p36) -- name: setPlayer
    if p35.player ~= p36 then
        p35.player = p36
    end
end
function v_u_6.setEquipped(p37, p38) -- name: setEquipped
    if p37.equipped ~= p38 then
        p37.equipped = p38
        p37:onEquippedChanged()
        if not p37.equipped then
            p37:stopAnimations()
        end
    end
end
function v_u_6.onEquippedChanged(p_u_39) -- name: onEquippedChanged
    -- upvalues: (copy) v_u_1, (copy) v_u_3, (copy) v_u_2
    if p_u_39.activeRenderStepName then
        v_u_1:UnbindFromRenderStep(p_u_39.activeRenderStepName)
        p_u_39.activeRenderStepName = nil
    end
    p_u_39:cleanupConnection("localStepped")
    if not v_u_3 and p_u_39.weaponsSystem then
        p_u_39.weaponsSystem.setWeaponEquipped(p_u_39, p_u_39.equipped)
        if p_u_39.equipped then
            if p_u_39.player == v_u_2.LocalPlayer then
                v_u_1:BindToRenderStep(p_u_39.instance:GetFullName(), Enum.RenderPriority.Input.Value, function(p40)
                    -- upvalues: (copy) p_u_39
                    p_u_39:onRenderStepped(p40)
                end)
                p_u_39.activeRenderStepName = p_u_39.instance:GetFullName()
            end
            p_u_39.connections.localStepped = v_u_1.Heartbeat:Connect(function(p41)
                -- upvalues: (copy) p_u_39
                p_u_39:onStepped(p41)
            end)
        end
    end
    if p_u_39.instanceIsTool then
        for _, v42 in pairs(p_u_39.instance:GetDescendants()) do
            if v42:IsA("BasePart") then
                local v43
                if v42 == p_u_39.handle then
                    v43 = false
                else
                    v43 = not p_u_39.equipped
                end
                v42.CanCollide = v43
            end
        end
    end
    p_u_39:setActivated(false)
end
function v_u_6.setActivated(p44, p45, p46) -- name: setActivated
    -- upvalues: (copy) v_u_3, (copy) v_u_2
    if v_u_3 or (not p46 or p44.player ~= v_u_2.LocalPlayer) then
        if p44.activated ~= p45 then
            p44.activated = p45
            if v_u_3 and not p46 then
                p44.weaponsSystem.getRemoteEvent("WeaponActivated"):FireAllClients(p44.player, p44.instance, p44.activated)
            end
            p44:onActivatedChanged()
        end
    else
        return
    end
end
function v_u_6.onActivatedChanged(_) -- name: onActivatedChanged end
function v_u_6.renderFire(_, _) -- name: renderFire end
function v_u_6.simulateFire(_, _) -- name: simulateFire end
function v_u_6.isOwnerAlive(p47) -- name: isOwnerAlive
    local v48 = p47.instance:IsA("Tool") and p47.instance.Parent:FindFirstChildOfClass("Humanoid")
    return not v48 and true or v48:GetState() ~= Enum.HumanoidStateType.Dead
end
function v_u_6.fire(p49, p50, p51, p52) -- name: fire
    -- upvalues: (copy) v_u_3
    if p49:isOwnerAlive() and not p49.reloading then
        if p49:useAmmo(1) <= 0 then
            p49:reload()
            return
        else
            local v53 = {
                ["origin"] = p50,
                ["dir"] = p51,
                ["charge"] = math.clamp(p52 or 1, 0, 1),
                ["id"] = p49.nextShotId
            }
            p49.nextShotId = p49.nextShotId + 1
            if v_u_3 then
                p49:onFired(p49.player, v53, false)
            else
                p49:onFired(p49.player, v53, false)
                p49.weaponsSystem.getRemoteEvent("WeaponFired"):FireServer(p49.instance, v53)
            end
        end
    else
        return
    end
end
function v_u_6.onFired(p54, p55, p56, p57) -- name: onFired
    -- upvalues: (copy) v_u_3, (copy) v_u_2
    if v_u_3 then
        if p54:useAmmo(1) > 0 then
            p54.weaponsSystem.getRemoteEvent("WeaponFired"):FireAllClients(p55, p54.instance, p56)
        end
    elseif p55 == v_u_2.LocalPlayer and p57 then
        return
    elseif p55 and (p55.character and (p55.character.Humanoid and p55.character:FindFirstChild("HumanoidRootPart"))) then
        p54:simulateFire(p55, p56)
    end
end
function v_u_6.getConfigValue(p58, p59, p60) -- name: getConfigValue
    if p58.configValues[p59] == nil then
        return p60
    else
        return p58.configValues[p59]
    end
end
function v_u_6.tryPlaySound(p61, p62, p63) -- name: tryPlaySound
    -- upvalues: (copy) v_u_5
    local v64 = p63 or 0
    local v65 = p61.sounds[p62]
    if not v65 then
        v65 = p61.instance:FindFirstChild(p62, true)
        p61.sounds[p62] = v65
    end
    if v65 then
        local v_u_66 = v65:Clone()
        v_u_66.PlaybackSpeed = v_u_66.PlaybackSpeed + v_u_5:NextNumber(-v64 * 0.5, v64 * 0.5)
        v_u_66.Parent = v65.Parent
        v_u_66:Play()
        coroutine.wrap(function()
            -- upvalues: (copy) v_u_66
            wait(v_u_66.TimeLength / v_u_66.PlaybackSpeed)
            v_u_66:Destroy()
        end)()
        return v_u_66
    end
end
function v_u_6.getSound(p67, p68) -- name: getSound
    local v69 = p67.sounds[p68]
    if not v69 then
        v69 = p67.instance:FindFirstChild(p68, true)
        p67.sounds[p68] = v69
    end
    return v69
end
function v_u_6.onDestroyed(_) -- name: onDestroyed end
function v_u_6.onConfigValueAdded(p_u_70, p_u_71) -- name: onConfigValueAdded
    local v_u_72 = p_u_71.Name
    local v73 = p_u_71.Value
    p_u_70.configValues[v_u_72] = v73
    p_u_70:onConfigValueChanged(v_u_72, v73, nil)
    p_u_70.connections["valueChanged:" .. v_u_72] = p_u_71.Changed:Connect(function(p74)
        -- upvalues: (copy) p_u_70, (copy) v_u_72
        local v75 = p_u_70.configValues[v_u_72]
        p_u_70.configValues[v_u_72] = p74
        p_u_70:onConfigValueChanged(v_u_72, p74, v75)
    end)
    p_u_70.connections["valueRenamed:" .. v_u_72] = p_u_71:GetPropertyChangedSignal("Name"):Connect(function()
        -- upvalues: (copy) p_u_70, (copy) v_u_72, (copy) p_u_71
        p_u_70.configValues[v_u_72] = nil
        p_u_70:cleanupConnection("valueChanged:" .. v_u_72)
        p_u_70:cleanupConnection("valueRenamed:" .. v_u_72)
        p_u_70:onConfigValueAdded(p_u_71)
    end)
end
function v_u_6.onConfigValueRemoved(p76, p77) -- name: onConfigValueRemoved
    local v78 = p77.Name
    p76.configValues[v78] = nil
    p76:cleanupConnection("valueChanged:" .. v78)
    p76:cleanupConnection("valueRenamed:" .. v78)
end
function v_u_6.importConfiguration(p79, p80) -- name: importConfiguration
    if not (p80 and p80:IsA("Configuration")) then
        for _, v81 in pairs(p80:GetChildren()) do
            if v81:IsA("ValueBase") then
                local v82 = v81.Name
                local v83 = v81.Value
                local v84 = p79.configValues[v82]
                p79.configValues[v82] = v83
                p79:onConfigValueChanged(v82, v83, v84)
            end
        end
    end
end
function v_u_6.setConfiguration(p_u_85, p86) -- name: setConfiguration
    p_u_85:cleanupConnection("configChildAdded", "configChildRemoved")
    if p86 and p86:IsA("Configuration") then
        for _, v87 in pairs(p86:GetChildren()) do
            if v87:IsA("ValueBase") then
                p_u_85:onConfigValueAdded(v87)
            end
        end
        p_u_85.connections.configChildAdded = p86.ChildAdded:Connect(function(p88)
            -- upvalues: (copy) p_u_85
            if p88:IsA("ValueBase") then
                p_u_85:onConfigValueAdded(p88)
            end
        end)
        p_u_85.connections.configChildRemoved = p86.ChildRemoved:Connect(function(p89)
            -- upvalues: (copy) p_u_85
            if p89:IsA("ValueBase") then
                p_u_85:onConfigValueRemoved(p89)
            end
        end)
    end
end
function v_u_6.onChildAdded(p90, p91) -- name: onChildAdded
    if p91:IsA("Configuration") then
        p90:setConfiguration(p91)
    end
end
function v_u_6.onChildRemoved(p92, p93) -- name: onChildRemoved
    if p93:IsA("Configuration") then
        p92:setConfiguration(nil)
    end
end
function v_u_6.onConfigValueChanged(_, _, _, _) -- name: onConfigValueChanged end
function v_u_6.onRenderStepped(_, _) -- name: onRenderStepped end
function v_u_6.onStepped(_, _) -- name: onStepped end
function v_u_6.getAnimationController(p94) -- name: getAnimationController
    -- upvalues: (copy) v_u_3
    if p94.animController and (not p94.instanceIsTool or p94.animController.Parent and p94.animController.Parent:IsAncestorOf(p94.instance)) then
        return p94.animController
    end
    p94:setAnimationController(nil)
    if p94.instanceIsTool then
        local v95 = v_u_3 and p94.instance.Parent:FindFirstChildOfClass("Humanoid") or p94.instance.Parent:WaitForChild("Humanoid", (1 / 0))
        local v96
        if v95 then
            v96 = nil
        else
            v96 = p94.instance.Parent:FindFirstChildOfClass("AnimationController")
        end
        p94:setAnimationController(v95 or v96)
        return p94.animController
    end
end
function v_u_6.setAnimationController(p97, p98) -- name: setAnimationController
    if p98 ~= p97.animController then
        p97:stopAnimations()
        p97.animController = p98
    end
end
function v_u_6.stopAnimations(p99) -- name: stopAnimations
    for _, v100 in pairs(p99.animTracks) do
        if v100.IsPlaying then
            v100:Stop()
        end
    end
    p99.animTracks = {}
end
function v_u_6.getAnimTrack(p101, p102) -- name: getAnimTrack
    -- upvalues: (copy) v_u_4
    local v103 = p101.animTracks[p102]
    if not v103 then
        local v104 = p101:getAnimationController()
        if not v104 then
            warn("No animation controller when trying to play ", p102)
            return nil
        end
        local v105 = v_u_4:FindFirstChild(p102)
        if not v105 then
            error(string.format("No such animation \"%s\" ", (tostring(p102))))
        end
        v103 = v104:LoadAnimation(v105)
        p101.animTracks[p102] = v103
    end
    return v103
end
function v_u_6.reload(p106, p107, p108) -- name: reload
    -- upvalues: (copy) v_u_3, (copy) v_u_2
    if p106.equipped and (not p106.reloading and (p106.canReload and p106:getAmmoInWeapon() ~= p106:getConfigValue("AmmoCapacity", 30))) then
        if v_u_3 then
            p106:onReloaded(p107, p108)
            p106.weaponsSystem.getRemoteEvent("WeaponReloaded"):FireAllClients(p107, p106.instance)
            return
        elseif p106.player == nil or p106.player == v_u_2.LocalPlayer then
            p106.weaponsSystem.getRemoteEvent("WeaponReloadRequest"):FireServer(p106.instance)
            p106:onReloaded(p106.player)
        end
    else
        return false
    end
end
function v_u_6.onReloaded(p_u_109, p110, p111) -- name: onReloaded
    -- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_1
    if p111 and p110 == v_u_2.LocalPlayer then
        return
    else
        p_u_109.reloading = true
        p_u_109.canReload = false
        if not v_u_3 then
            local v112 = p_u_109:getConfigValue("ReloadAnimation", "RifleReload")
            if v112 then
                p_u_109.reloadTrack = p_u_109:getAnimTrack(v112)
                if p_u_109.reloadTrack then
                    p_u_109.reloadTrack:Play()
                end
            end
            p_u_109.curReloadSound = p_u_109:tryPlaySound("Reload", nil)
            if p_u_109.curReloadSound then
                p_u_109.curReloadSound.Ended:Connect(function()
                    -- upvalues: (copy) p_u_109
                    p_u_109.curReloadSound = nil
                end)
            end
        end
        local v_u_113 = p_u_109:getConfigValue("ReloadTime", 2)
        local v_u_114 = tick()
        if p_u_109.connections.reload == nil then
            p_u_109.connections.reload = v_u_1.Heartbeat:Connect(function()
                -- upvalues: (copy) p_u_109, (copy) v_u_114, (copy) v_u_113
                if not p_u_109.reloading and p_u_109.connections.reload then
                    p_u_109.connections.reload:Disconnect()
                    p_u_109.connections.reload = nil
                end
                if tick() >= v_u_114 + v_u_113 then
                    if p_u_109.ammoInWeaponValue then
                        p_u_109.ammoInWeaponValue.Value = p_u_109:getConfigValue("AmmoCapacity", 30)
                    end
                    if p_u_109.connections.reload then
                        p_u_109.connections.reload:Disconnect()
                        p_u_109.connections.reload = nil
                    end
                    p_u_109.reloading = false
                    p_u_109.canReload = false
                end
            end)
        end
    end
end
function v_u_6.cancelReload(p115, p116, p117) -- name: cancelReload
    -- upvalues: (copy) v_u_2, (copy) v_u_3
    if p115.reloading then
        if not p117 or p116 ~= v_u_2.LocalPlayer then
            if v_u_3 or (p117 or p116 ~= v_u_2.LocalPlayer) then
                if v_u_3 and p117 then
                    p115.weaponsSystem.getRemoteEvent("WeaponReloadCanceled"):FireAllClients(p116, p115.instance)
                end
            else
                p115.weaponsSystem.getRemoteEvent("WeaponReloadCanceled"):FireServer(p115.instance)
            end
            p115.reloading = false
            p115.canReload = true
            if not v_u_3 and (p115.reloadTrack and p115.reloadTrack.IsPlaying) then
                warn("Stopping reloadTrack")
                p115.reloadTrack:Stop()
            end
            if p115.curReloadSound then
                p115.curReloadSound:Stop()
                p115.curReloadSound:Destroy()
                p115.curReloadSound = nil
            end
        end
    else
        return
    end
end
function v_u_6.getAmmoInWeapon(p118) -- name: getAmmoInWeapon
    return not p118.ammoInWeaponValue and 0 or p118.ammoInWeaponValue.Value
end
function v_u_6.useAmmo(p119, p120) -- name: useAmmo
    if not p119.ammoInWeaponValue then
        return 0
    end
    local v121 = p119.ammoInWeaponValue.Value
    local v122 = math.min(p120, v121)
    p119.ammoInWeaponValue.Value = p119.ammoInWeaponValue.Value - v122
    p119.canReload = true
    return v122
end
function v_u_6.renderCharge(_) -- name: renderCharge end
return v_u_6

-- Script Path: game:GetService("ReplicatedStorage").WeaponsSystem.WeaponsSystem
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.731.944)

local v_u_1 = game:GetService("CollectionService")
local v2 = game:GetService("RunService")
local v_u_3 = game:GetService("Players")
local v_u_4 = v2:IsServer()
local v_u_5 = script.Parent:WaitForChild("WeaponData")
local v_u_6 = script.Parent
local v7 = v_u_6:WaitForChild("WeaponTypes")
local v8 = v_u_6:WaitForChild("Libraries")
local v_u_9 = require(v8:WaitForChild("ShoulderCamera"))
local v_u_10 = require(v8:WaitForChild("WeaponsGui"))
local v11 = require(v8:WaitForChild("SpringService"))
local v_u_12 = require(v8:WaitForChild("ancestorHasTag"))
v_u_9.SpringService = v11
local v13 = v_u_6:WaitForChild("Configuration")
local v_u_14 = {
    ["SprintEnabled"] = v13:WaitForChild("SprintEnabled"),
    ["SlowZoomWalkEnabled"] = v13:WaitForChild("SlowZoomWalkEnabled")
}
local v_u_15 = {}
local function v23(p_u_16) -- name: onNewWeaponType
    -- upvalues: (copy) v_u_15
    if p_u_16:IsA("ModuleScript") then
        local v_u_17 = p_u_16.Name
        xpcall(function()
            -- upvalues: (copy) p_u_16, (ref) v_u_15, (copy) v_u_17
            coroutine.wrap(function()
                -- upvalues: (ref) p_u_16, (ref) v_u_15, (ref) v_u_17
                local v18 = require(p_u_16)
                local v19 = typeof(v18) == "table"
                local v20 = string.format
                local v21 = p_u_16
                assert(v19, v20("WeaponType \"%s\" did not return a valid table", v21:GetFullName()))
                v_u_15[v_u_17] = v18
            end)()
        end, function(p22)
            -- upvalues: (copy) p_u_16
            warn(string.format("Error while loading %s: %s", p_u_16:GetFullName(), p22))
            warn(debug.traceback())
        end)
    end
end
local v_u_24 = {
    "WeaponFired",
    "WeaponHit",
    "WeaponReloadRequest",
    "WeaponReloaded",
    "WeaponReloadCanceled",
    "WeaponActivated"
}
local v_u_25 = {}
for _, v26 in pairs(v7:GetChildren()) do
    v23(v26)
end
v7.ChildAdded:Connect(v23)
local v_u_27 = {
    ["didSetup"] = false,
    ["knownWeapons"] = {},
    ["connections"] = {},
    ["networkFolder"] = nil,
    ["remoteEvents"] = {},
    ["remoteFunctions"] = {},
    ["currentWeapon"] = nil,
    ["aimRayCallback"] = nil,
    ["CurrentWeaponChanged"] = Instance.new("BindableEvent")
}
local v_u_28 = require(v_u_6:WaitForChild("NetworkingCallbacks"))
v_u_28.WeaponsSystem = v_u_27
local v_u_29 = nil
local v_u_30 = nil
function v_u_27.setDamageCallback(p31) -- name: setDamageCallback
    -- upvalues: (ref) v_u_29
    v_u_29 = p31
end
function v_u_27.setGetTeamCallback(p32) -- name: setGetTeamCallback
    -- upvalues: (ref) v_u_30
    v_u_30 = p32
end
function v_u_27.setup() -- name: setup
    -- upvalues: (copy) v_u_27, (copy) v_u_4, (copy) v_u_24, (copy) v_u_28, (copy) v_u_25, (copy) v_u_6, (copy) v_u_9, (copy) v_u_10, (copy) v_u_14, (copy) v_u_3, (copy) v_u_1
    if v_u_27.didSetup then
        warn("Warning: trying to run WeaponsSystem setup twice on the same module.")
    else
        print(script.Parent:GetFullName(), "is now active.")
        v_u_27.doingSetup = true
        if v_u_4 then
            local v33 = Instance.new("Folder")
            v33.Name = "Network"
            for _, v34 in pairs(v_u_24) do
                local v35 = Instance.new("RemoteEvent")
                v35.Name = v34
                v35.Parent = v33
                local v_u_36 = v_u_28[v34]
                if not v_u_36 then
                    warn("There is no server callback implemented for the WeaponsSystem RemoteEvent \"%s\"!")
                    warn("A default no-op function will be implemented so that the queue cannot be abused.")
                    v_u_36 = function() end
                end
                v_u_27.connections[v34 .. "Remote"] = v35.OnServerEvent:Connect(function(...)
                    -- upvalues: (ref) v_u_36
                    v_u_36(...)
                end)
                v_u_27.remoteEvents[v34] = v35
            end
            for _, v37 in pairs(v_u_25) do
                local v38 = Instance.new("RemoteEvent")
                v38.Name = v37
                v38.Parent = v33
                local v_u_39 = v_u_28[v37]
                if not v_u_39 then
                    warn("There is no server callback implemented for the WeaponsSystem RemoteFunction \"%s\"!")
                    warn("A default no-op function will be implemented so that the queue cannot be abused.")
                    v_u_39 = function() end
                end
                function v38.OnServerInvoke(...)
                    -- upvalues: (ref) v_u_39
                    return v_u_39(...)
                end
                v_u_27.remoteFunctions[v37] = v38
            end
            v33.Parent = v_u_6
            v_u_27.networkFolder = v33
        else
            v_u_27.StarterGui = game:GetService("StarterGui")
            v_u_27.camera = v_u_9.new(v_u_27)
            v_u_27.gui = v_u_10.new(v_u_27)
            if v_u_14.SprintEnabled.Value then
                v_u_27.camera:setSprintEnabled(v_u_14.SprintEnabled.Value)
            end
            if v_u_14.SlowZoomWalkEnabled.Value then
                v_u_27.camera:setSlowZoomWalkEnabled(v_u_14.SlowZoomWalkEnabled.Value)
            end
            local v_u_40 = v_u_6:WaitForChild("Network", (1 / 0))
            for _, v_u_41 in pairs(v_u_24) do
                coroutine.wrap(function()
                    -- upvalues: (copy) v_u_40, (copy) v_u_41, (ref) v_u_28, (ref) v_u_27
                    local v42 = v_u_40:WaitForChild(v_u_41, (1 / 0))
                    local v_u_43 = v_u_28[v_u_41]
                    if v_u_43 then
                        v_u_27.connections[v_u_41 .. "Remote"] = v42.OnClientEvent:Connect(function(...)
                            -- upvalues: (copy) v_u_43
                            v_u_43(...)
                        end)
                    end
                    v_u_27.remoteEvents[v_u_41] = v42
                end)()
            end
            for _, v_u_44 in pairs(v_u_25) do
                coroutine.wrap(function()
                    -- upvalues: (copy) v_u_40, (copy) v_u_44, (ref) v_u_28, (ref) v_u_27
                    local v45 = v_u_40:WaitForChild(v_u_44, (1 / 0))
                    local v_u_46 = v_u_28[v_u_44]
                    if v_u_46 then
                        function v45.OnClientInvoke(...)
                            -- upvalues: (copy) v_u_46
                            return v_u_46(...)
                        end
                    end
                    v_u_27.remoteFunctions[v_u_44] = v45
                end)()
            end
            v_u_3.LocalPlayer.CharacterAdded:Connect(v_u_27.onCharacterAdded)
            if v_u_3.LocalPlayer.Character then
                v_u_27.onCharacterAdded(v_u_3.LocalPlayer.Character)
            end
            v_u_27.networkFolder = v_u_40
        end
        v_u_27.connections.weaponAdded = v_u_1:GetInstanceAddedSignal("WeaponsSystemWeapon"):Connect(v_u_27.onWeaponAdded)
        v_u_27.connections.weaponRemoved = v_u_1:GetInstanceRemovedSignal("WeaponsSystemWeapon"):Connect(v_u_27.onWeaponRemoved)
        for _, v47 in pairs(v_u_1:GetTagged("WeaponsSystemWeapon")) do
            v_u_27.onWeaponAdded(v47)
        end
        v_u_27.doingSetup = false
        v_u_27.didSetup = true
    end
end
function v_u_27.onCharacterAdded(p_u_48) -- name: onCharacterAdded
    -- upvalues: (copy) v_u_27
    if v_u_27.connections.seated then
        v_u_27.connections.seated:Disconnect()
    end
    if v_u_27.connections.characterRemoving then
        v_u_27.connections.characterRemoving:Disconnect()
    end
    if v_u_27.connections.humanoidDied then
        v_u_27.connections.humanoidDied:Disconnect()
    end
    if v_u_27.camera then
        v_u_27.camera:setEnabled(false)
        v_u_27.camera:setZoomedFromInput(false)
        v_u_27.camera:setForceZoomed(false)
    end
    if v_u_27.gui then
        v_u_27.gui:setEnabled(false)
        v_u_27.gui:setZoomed(false)
    end
    v_u_27.currentWeapon = nil
    local v49 = workspace.CurrentCamera
    if v49 then
        v49.CameraType = Enum.CameraType.Custom
        v49.FieldOfView = 70
        local v50 = game:GetService("UserInputService")
        v50.MouseBehavior = Enum.MouseBehavior.Default
        v50.MouseIconEnabled = true
        v49.CameraSubject = p_u_48:WaitForChild("Humanoid")
    end
    local v51 = p_u_48:WaitForChild("Humanoid")
    local function v_u_55() -- name: resetAllStates
        -- upvalues: (ref) v_u_27
        v_u_27.currentWeapon = nil
        if v_u_27.camera then
            local v52 = game:GetService("ContextActionService")
            v52:UnbindAction("ShoulderCameraZoom")
            local function v53(...)
                -- upvalues: (ref) v_u_27
                return v_u_27.camera:onZoomAction(...)
            end
            local v54 = v_u_27.camera.zoomInputs
            v52:BindAction("ShoulderCameraZoom", v53, false, unpack(v54))
            v_u_27.camera:setZoomedFromInput(false)
            v_u_27.camera:setForceZoomed(false)
        end
        if v_u_27.gui then
            v_u_27.gui:setZoomed(false)
            v_u_27.gui:setEnabled(false)
        end
        if v_u_27.camera then
            v_u_27.camera:setEnabled(false)
        end
        v_u_27.seatedWeapon = nil
    end
    v_u_27.connections.humanoidDied = v51.Died:Connect(function()
        -- upvalues: (copy) v_u_55
        v_u_55()
    end)
    v_u_27.connections.characterRemoving = p_u_48.AncestryChanged:Connect(function()
        -- upvalues: (copy) p_u_48, (copy) v_u_55
        if not p_u_48.Parent then
            v_u_55()
        end
    end)
end
function v_u_27.shutdown() -- name: shutdown
    -- upvalues: (copy) v_u_27, (copy) v_u_4
    if v_u_27.didSetup then
        for _, v56 in pairs(v_u_27.knownWeapons) do
            v56:onDestroyed()
        end
        v_u_27.knownWeapons = {}
        if v_u_4 and v_u_27.networkFolder then
            v_u_27.networkFolder:Destroy()
        end
        v_u_27.networkFolder = nil
        v_u_27.remoteEvents = {}
        v_u_27.remoteFunctions = {}
        for _, v57 in pairs(v_u_27.connections) do
            if typeof(v57) == "RBXScriptConnection" then
                v57:Disconnect()
            end
        end
        v_u_27.connections = {}
    end
end
function v_u_27.getWeaponTypeFromTags(p58) -- name: getWeaponTypeFromTags
    -- upvalues: (copy) v_u_1, (copy) v_u_15
    for _, v59 in pairs(v_u_1:GetTags(p58)) do
        local v60 = v_u_15[v59]
        if v60 then
            return v60
        end
    end
    return nil
end
function v_u_27.createWeaponForInstance(p_u_61) -- name: createWeaponForInstance
    -- upvalues: (copy) v_u_27, (copy) v_u_15
    coroutine.wrap(function()
        -- upvalues: (ref) v_u_27, (copy) p_u_61, (ref) v_u_15
        local v62 = v_u_27.getWeaponTypeFromTags(p_u_61)
        if not v62 then
            local v63 = p_u_61:WaitForChild("WeaponType")
            if not (v63 and v63:IsA("StringValue")) then
                warn("Could not find a WeaponType tag or StringValue for the instance ", p_u_61:GetFullName())
                return
            end
            local v64 = v63.Value
            v62 = v_u_15[v64]
            if not v62 then
                warn(string.format("Cannot find the weapon type \"%s\" for the instance %s!", v64, p_u_61:GetFullName()))
                return
            end
        end
        if v_u_27.getWeaponForInstance(p_u_61) then
            warn("Already got ", p_u_61:GetFullName())
            warn(debug.traceback())
        else
            assert(v62, "Got invalid weaponType")
            local v65 = v62.new(v_u_27, p_u_61)
            v_u_27.knownWeapons[p_u_61] = v65
        end
    end)()
end
function v_u_27.getWeaponForInstance(p66) -- name: getWeaponForInstance
    -- upvalues: (copy) v_u_27
    if typeof(p66) == "Instance" then
        return v_u_27.knownWeapons[p66]
    end
    warn("WeaponsSystem.getWeaponForInstance(weaponInstance): \'weaponInstance\' was not an instance.")
    return nil
end
function v_u_27.onWeaponAdded(p67) -- name: onWeaponAdded
    -- upvalues: (copy) v_u_27
    if not v_u_27.getWeaponForInstance(p67) then
        v_u_27.createWeaponForInstance(p67)
    end
end
function v_u_27.onWeaponRemoved(p68) -- name: onWeaponRemoved
    -- upvalues: (copy) v_u_27
    local v69 = v_u_27.getWeaponForInstance(p68)
    if v69 then
        v69:onDestroyed()
    end
    v_u_27.knownWeapons[p68] = nil
end
function v_u_27.getRemoteEvent(p70) -- name: getRemoteEvent
    -- upvalues: (copy) v_u_27, (copy) v_u_4
    if v_u_27.networkFolder then
        local v71 = v_u_27.remoteEvents[p70]
        if not v_u_4 then
            return v71 or v_u_27.networkFolder:WaitForChild(p70, (1 / 0))
        end
        if v71 then
            return v71
        end
        warn("No RemoteEvent named ", p70)
        return nil
    end
end
function v_u_27.getRemoteFunction(p72) -- name: getRemoteFunction
    -- upvalues: (copy) v_u_27, (copy) v_u_4
    if v_u_27.networkFolder then
        local v73 = v_u_27.remoteFunctions[p72]
        if not v_u_4 then
            return v73 or v_u_27.networkFolder:WaitForChild(p72, (1 / 0))
        end
        if v73 then
            return v73
        end
        warn("No RemoteFunction named ", p72)
        return nil
    end
end
function v_u_27.setWeaponEquipped(p74, p75) -- name: setWeaponEquipped
    -- upvalues: (copy) v_u_4, (copy) v_u_27
    local v76 = not v_u_4
    assert(v76, "WeaponsSystem.setWeaponEquipped should only be called on the client.")
    if p74 then
        local v77 = v_u_27.currentWeapon
        local v78 = false
        local v79 = false
        if v77 == p74 then
            if p75 then
                v79 = false
            else
                v_u_27.currentWeapon = nil
                v78 = false
                v79 = true
            end
        elseif p75 then
            v_u_27.currentWeapon = p74
            v78 = true
            v79 = true
        end
        if v_u_27.camera then
            v_u_27.camera:setEnabled(v78)
            if not v78 then
                v_u_27.camera:setZoomedFromInput(false)
            end
            v_u_27.camera:resetZoomFactor()
            v_u_27.camera:setHasScope(false)
            if v_u_27.currentWeapon then
                v_u_27.camera:setZoomFactor(v_u_27.currentWeapon:getConfigValue("ZoomFactor", 1.1))
                v_u_27.camera:setHasScope(v_u_27.currentWeapon:getConfigValue("HasScope", false))
            end
        end
        if v_u_27.gui then
            v_u_27.gui:setEnabled(v78)
            if not v78 then
                v_u_27.gui:setZoomed(false)
            end
            if v_u_27.currentWeapon then
                v_u_27.gui:setCrosshairWeaponScale(v_u_27.currentWeapon:getConfigValue("CrosshairScale", 1))
            else
                v_u_27.gui:setCrosshairWeaponScale(1)
            end
        end
        if v79 then
            local v80 = v_u_27.CurrentWeaponChanged
            local v81 = p74.instance
            if v77 then
                v77 = v77.instance
            end
            v80:Fire(v81, v77)
        end
    end
end
function v_u_27.getHumanoid(p82) -- name: getHumanoid
    while p82 and p82 ~= workspace do
        if p82:IsA("Model") and (p82.PrimaryPart and p82.PrimaryPart.Name == "HumanoidRootPart") then
            return p82:FindFirstChildOfClass("Humanoid")
        end
        p82 = p82.Parent
    end
end
function v_u_27.getPlayerFromHumanoid(p83) -- name: getPlayerFromHumanoid
    -- upvalues: (copy) v_u_3
    for _, v84 in ipairs(v_u_3:GetPlayers()) do
        if v84.Character and p83:IsDescendantOf(v84.Character) then
            return v84
        end
    end
end
local function v_u_87(_, p85, p86, _, _, _, _) -- name: _defaultDamageCallback
    if p85:IsA("Humanoid") then
        p85:TakeDamage(p86)
    end
end
function v_u_27.doDamage(p88, p89, p90, p91, p92, p93) -- name: doDamage
    -- upvalues: (copy) v_u_12, (copy) v_u_4, (copy) v_u_3, (copy) v_u_5, (ref) v_u_29, (copy) v_u_87, (copy) v_u_27
    if p88 and not v_u_12(p88, "WeaponsSystemIgnore") then
        if v_u_4 then
            if p88:IsA("Humanoid") and (p91:IsA("Player") and p91.Character) then
                local v94 = p91.Character:FindFirstChildOfClass("Humanoid")
                local v95 = v_u_3:GetPlayerFromCharacter(p88.Parent)
                if v94 and (p88 ~= v94 and v95) then
                    v_u_5:FireClient(v95, "HitByOtherPlayer", p91.Character.HumanoidRootPart.CFrame.Position)
                end
            end
            (v_u_29 or v_u_87)(v_u_27, p88, p89, p90, p91, p92, p93)
        end
    end
end
local function v_u_96(_) -- name: _defaultGetTeamCallback
    return 0
end
function v_u_27.getTeam(p97) -- name: getTeam
    -- upvalues: (ref) v_u_30, (copy) v_u_96
    return (v_u_30 or v_u_96)(p97)
end
function v_u_27.playersOnDifferentTeams(p98, p99) -- name: playersOnDifferentTeams
    -- upvalues: (copy) v_u_27
    if p98 == p99 or (p98 == nil or p99 == nil) then
        return true
    end
    local v100 = v_u_27.getTeam(p98)
    local v101 = v_u_27.getTeam(p99)
    return v100 == 0 and true or v100 ~= v101
end
return v_u_27

game:GetService("ReplicatedStorage").WeaponsSystem.WeaponData
-- Script Path: game:GetService("ReplicatedStorage").WeaponsSystem.ClientWeaponsScript
-- Took 0s to decompile.
-- Executor: Delta (1.1.731.944)

local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = game:GetService("UserInputService")
local v_u_3 = game:GetService("RunService")
local v_u_4 = game:GetService("Players")
local v_u_5 = nil
local v_u_6 = nil
local v_u_7 = nil
local v_u_8 = nil
local function v_u_20() -- name: setupWeaponsSystem
    -- upvalues: (ref) v_u_8, (copy) v_u_3, (copy) v_u_2, (copy) v_u_4
    local v_u_9 = require(v_u_8.WeaponsSystem)
    if not (v_u_9.doingSetup or v_u_9.didSetup) then
        v_u_9.setup()
        v_u_3.Heartbeat:Wait()
        local v10 = workspace.CurrentCamera
        if v10 then
            v10.CameraType = Enum.CameraType.Custom
            v10.FieldOfView = 70
            v_u_2.MouseBehavior = Enum.MouseBehavior.Default
            v_u_2.MouseIconEnabled = true
            local v11 = v_u_4.LocalPlayer
            local v12 = v11.Character and v11.Character:FindFirstChildOfClass("Humanoid")
            if v12 then
                v10.CameraSubject = v12
            end
        end
        if v_u_9.camera then
            v_u_9.camera.mouseLocked = false
            v_u_9.camera:setEnabled(false)
            v_u_9.camera:setZoomedFromInput(false)
            v_u_9.camera:setForceZoomed(false)
        end
        if v_u_9.gui then
            v_u_9.gui:setEnabled(false)
            v_u_9.gui:setZoomed(false)
        end
        v_u_9.CurrentWeaponChanged.Event:Connect(function(p13, _)
            -- upvalues: (copy) v_u_9, (ref) v_u_2, (ref) v_u_4
            if v_u_9.camera then
                if p13 then
                    v_u_9.camera.mouseLocked = true
                    return
                end
                v_u_9.camera.mouseLocked = false
                local v14 = workspace.CurrentCamera
                if v14 then
                    v14.CameraType = Enum.CameraType.Custom
                    v14.FieldOfView = 70
                    v_u_2.MouseBehavior = Enum.MouseBehavior.Default
                    v_u_2.MouseIconEnabled = true
                    local v15 = v_u_4.LocalPlayer
                    local v16 = v15.Character and v15.Character:FindFirstChildOfClass("Humanoid")
                    if v16 then
                        v14.CameraSubject = v16
                    end
                end
            end
        end)
        v_u_4.LocalPlayer.CharacterAdded:Connect(function(_)
            -- upvalues: (ref) v_u_2, (ref) v_u_4, (copy) v_u_9
            wait(0.1)
            local v17 = workspace.CurrentCamera
            if v17 then
                v17.CameraType = Enum.CameraType.Custom
                v17.FieldOfView = 70
                v_u_2.MouseBehavior = Enum.MouseBehavior.Default
                v_u_2.MouseIconEnabled = true
                local v18 = v_u_4.LocalPlayer
                local v19 = v18.Character and v18.Character:FindFirstChildOfClass("Humanoid")
                if v19 then
                    v17.CameraSubject = v19
                end
            end
            if v_u_9.camera then
                v_u_9.camera:setEnabled(false)
                v_u_9.camera.mouseLocked = false
            end
        end)
    end
end
local function v22(p21) -- name: onReplicatedStorageChildAdded
    -- upvalues: (ref) v_u_8, (copy) v_u_20, (ref) v_u_6
    if p21.Name == "WeaponsSystem" then
        v_u_8 = p21
        v_u_20()
        v_u_6:Disconnect()
    end
end
local function v24(p23) -- name: onPlayerChildAdded
    -- upvalues: (ref) v_u_7, (ref) v_u_5
    if p23.Name == "PlayerScripts" then
        v_u_7.Parent = p23
        v_u_5:Disconnect()
    end
end
if script.Parent.Name == "PlayerScripts" then
    v_u_8 = v1:FindFirstChild("WeaponsSystem")
    if v_u_8 == nil then
        v_u_6 = v1.ChildAdded:Connect(v22)
    else
        v_u_20()
    end
else
    v_u_7 = script:Clone()
    local v25 = script.Parent.Parent:FindFirstChild("PlayerScripts")
    if v25 == nil then
        v_u_5 = script.Parent.Parent.ChildAdded:Connect(v24)
    else
        v_u_7.Parent = v25
    end
end

-- Script Path: game:GetService("ReplicatedStorage").WeaponsSystem.WeaponTypes.BulletWeapon
-- Took 0.05s to decompile.
-- Executor: Delta (1.1.731.944)

local v_u_1 = game:GetService("TweenService")
local v_u_2 = game:GetService("RunService")
local v_u_3 = game:GetService("Players")
local v_u_4 = game:GetService("Debris")
local v_u_5 = game:GetService("ContextActionService")
local v_u_6 = game:GetService("CollectionService")
local v_u_7 = game:GetService("ContentProvider")
local v_u_8 = v_u_2:IsServer()
local v9 = script.Parent.Parent
local v10 = v9:WaitForChild("Libraries")
local v_u_11 = require(v10:WaitForChild("BaseWeapon"))
local v_u_12 = require(v10:WaitForChild("Parabola"))
local v_u_13 = require(v10:WaitForChild("Roblox"))
local v14 = v9:WaitForChild("Assets"):WaitForChild("Effects")
local v_u_15 = v14:WaitForChild("Shots")
local v_u_16 = v14:WaitForChild("HitMarks")
local v_u_17 = v14:WaitForChild("Casings")
local v_u_18 = Random.new()
local v_u_19 = not v_u_8
if v_u_19 then
    v_u_19 = v_u_3.LocalPlayer
end
local v_u_20 = {}
v_u_20.__index = v_u_20
setmetatable(v_u_20, v_u_11)
v_u_20.CanAimDownSights = true
v_u_20.CanBeFired = true
v_u_20.CanBeReloaded = true
v_u_20.CanHit = true
function v_u_20.new(p21, p22) -- name: new
    -- upvalues: (copy) v_u_11, (copy) v_u_20, (copy) v_u_16, (copy) v_u_17
    local v_u_23 = v_u_11.new(p21, p22)
    local v24 = v_u_20
    setmetatable(v_u_23, v24)
    v_u_23.usesCharging = false
    v_u_23.charge = 0
    v_u_23.chargeSoundPitchMin = 0.5
    v_u_23.chargeSoundPitchMax = 1
    v_u_23.triggerDisconnected = false
    v_u_23.startupFinished = false
    v_u_23.burstFiring = false
    v_u_23.burstIdx = 0
    v_u_23.nextFireTime = 0
    v_u_23.recoilIntensity = 0
    v_u_23.aimPoint = Vector3.new()
    v_u_23:addOptionalDescendant("tipAttach", "TipAttachment")
    v_u_23:addOptionalDescendant("boltMotor", "BoltMotor")
    v_u_23:addOptionalDescendant("boltMotorStart", "BoltMotorStart")
    v_u_23:addOptionalDescendant("boltMotorTarget", "BoltMotorTarget")
    v_u_23:addOptionalDescendant("chargeGlowPart", "ChargeGlow")
    v_u_23:addOptionalDescendant("chargeCompleteParticles", "ChargeCompleteParticles")
    v_u_23:addOptionalDescendant("dischargeCompleteParticles", "DischargeCompleteParticles")
    v_u_23:addOptionalDescendant("muzzleFlash0", "MuzzleFlash0")
    v_u_23:addOptionalDescendant("muzzleFlash1", "MuzzleFlash1")
    v_u_23:addOptionalDescendant("muzzleFlashBeam", "MuzzleFlash")
    v_u_23.hitMarkTemplate = v_u_16:FindFirstChild(v_u_23:getConfigValue("HitMarkEffect", "BulletHole"))
    v_u_23.casingTemplate = v_u_17:FindFirstChild(v_u_23:getConfigValue("CasingEffect", ""))
    v_u_23:addOptionalDescendant("casingEjectPoint", "CasingEjectPoint")
    v_u_23.ignoreList = {}
    v_u_23.ignoreListRefreshTime = 0
    v_u_23:addOptionalDescendant("handAttach", "LeftHandAttachment")
    v_u_23.handAlignPos = nil
    v_u_23.handAlignRot = nil
    v_u_23.chargingParticles = {}
    v_u_23.instance.DescendantAdded:Connect(function(p25)
        -- upvalues: (copy) v_u_23
        if p25.Name == "ChargingParticles" and p25:IsA("ParticleEmitter") then
            local v26 = v_u_23.chargingParticles
            table.insert(v26, p25)
        end
    end)
    for _, v27 in pairs(v_u_23.instance:GetDescendants()) do
        if v27.Name == "ChargingParticles" and v27:IsA("ParticleEmitter") then
            local v28 = v_u_23.chargingParticles
            table.insert(v28, v27)
        end
    end
    v_u_23:doInitialSetup()
    return v_u_23
end
function v_u_20.onEquippedChanged(p_u_29) -- name: onEquippedChanged
    -- upvalues: (copy) v_u_11, (copy) v_u_8, (copy) v_u_5
    v_u_11.onEquippedChanged(p_u_29)
    if not v_u_8 then
        if p_u_29.weaponsSystem.camera and p_u_29.equipped then
            p_u_29.startupFinished = false
        end
        if p_u_29.equipped then
            v_u_5:BindAction("ReloadWeapon", function(...)
                -- upvalues: (copy) p_u_29
                p_u_29:onReloadAction(...)
            end, false, Enum.KeyCode.R, Enum.KeyCode.ButtonX)
        else
            v_u_5:UnbindAction("ReloadWeapon")
            local v30 = p_u_29:getSound("Charging")
            local v31 = p_u_29:getSound("Discharging")
            if v30 and v30.Playing then
                v30:Stop()
            end
            if v31 and v31.Playing then
                v31:Stop()
            end
        end
        p_u_29.triggerDisconnected = false
    end
end
function v_u_20.onReloadAction(p32, _, p33, _) -- name: onReloadAction
    if p33 == Enum.UserInputState.Begin and not p32.reloading then
        p32:reload()
    end
end
function v_u_20.animateBoltAction(p34, p35) -- name: animateBoltAction
    -- upvalues: (copy) v_u_1
    if p34.boltMotor and (p34.boltMotorStart and p34.boltMotorTarget) then
        if p35 then
            p34:tryPlaySound("BoltOpenSound")
        else
            p34:tryPlaySound("BoltCloseSound")
        end
        local v36 = p35 and p34:getConfigValue("ActionOpenTime", 0.025) or p34:getConfigValue("ActionCloseTime", 0.075)
        local v37 = p35 and p34.boltMotorTarget.CFrame or p34.boltMotorStart.CFrame
        local v38 = v_u_1:Create(p34.boltMotor, TweenInfo.new(v36, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            ["C0"] = v37
        })
        v38:Play()
        v38.Completed:Wait()
    end
end
function v_u_20.getRandomSeedForId(_, p39) -- name: getRandomSeedForId
    return p39
end
function v_u_20.simulateFire(p_u_40, p41, p42) -- name: simulateFire
    -- upvalues: (copy) v_u_11, (copy) v_u_18, (copy) v_u_6, (copy) v_u_4, (copy) v_u_3, (copy) v_u_2
    v_u_11.simulateFire(p_u_40, p42)
    if p_u_40.lastFireSound then
        p_u_40.lastFireSound:Stop()
    end
    p_u_40.lastFireSound = p_u_40:tryPlaySound("Fired", p_u_40:getConfigValue("FiredPlaybackSpeedRange", 0.1))
    local v43 = p_u_40:getConfigValue("NumProjectiles", 1)
    local v_u_44 = Random.new(p_u_40:getRandomSeedForId(p42.id))
    for v45 = 1, v43 do
        p_u_40:simulateProjectile(p41, p42, v45, v_u_44)
    end
    local v_u_46 = p_u_40:getConfigValue("ActionOpenTime", 0.025)
    if p_u_40.boltMotor then
        coroutine.wrap(function()
            -- upvalues: (copy) p_u_40, (copy) v_u_46
            p_u_40:animateBoltAction(true)
            wait(v_u_46)
            p_u_40:animateBoltAction(false)
        end)()
    end
    if p_u_40.casingTemplate and p_u_40.casingEjectPoint then
        local v47 = p_u_40.casingTemplate:Clone()
        v47.Anchored = false
        v47.Archivable = false
        v47.CFrame = p_u_40.casingEjectPoint.WorldCFrame
        v47.Velocity = p_u_40.casingEjectPoint.Parent.Velocity + p_u_40.casingEjectPoint.WorldAxis * v_u_18:NextNumber(p_u_40:getConfigValue("CasingEjectSpeedMin", 15), p_u_40:getConfigValue("CasingEjectSpeedMax", 18))
        v47.Parent = workspace.CurrentCamera
        v_u_6:AddTag(v47, "WeaponsSystemIgnore")
        local v_u_48 = v47:FindFirstChild("CasingHitSound")
        if v_u_48 then
            local v_u_49 = nil
            v_u_49 = v47.Touched:Connect(function(p50)
                -- upvalues: (copy) p_u_40, (copy) v_u_48, (ref) v_u_49
                if not p50:IsDescendantOf(p_u_40.instance) then
                    v_u_48:Play()
                    v_u_49:Disconnect()
                    v_u_49 = nil
                end
            end)
        end
        v_u_4:AddItem(v47, 2)
    end
    if p_u_40.player == v_u_3.LocalPlayer then
        coroutine.wrap(function()
            -- upvalues: (copy) p_u_40, (ref) v_u_2, (copy) v_u_44
            local v51 = tick()
            local v52 = p_u_40:getConfigValue("RecoilDelayTime", 0.07)
            while tick() < v51 + v52 do
                v_u_2.RenderStepped:Wait()
            end
            v_u_2.RenderStepped:Wait()
            local v53 = v_u_44:NextNumber(p_u_40:getConfigValue("RecoilMin", 0.05), (p_u_40:getConfigValue("RecoilMax", 0.5)))
            local v54 = tick() * 2
            local v55 = math.sin(v54) * v53 * 0.0008726646259971648
            local v56 = v53 * 0.025
            p_u_40.weaponsSystem.camera:addRecoil(Vector2.new(v55, v56))
            if not (p_u_40.weaponsSystem.camera:isZoomed() and p_u_40:getConfigValue("HasScope", false)) then
                local v57 = p_u_40
                local v58 = p_u_40.recoilIntensity * 1 + v53 / 10
                v57.recoilIntensity = math.clamp(v58, 0.005, 1)
            end
            local v59 = p_u_40.weaponsSystem.gui
            if v59 then
                v59:setCrosshairScale(1 + v53)
            end
        end)()
    end
end
function v_u_20.getIgnoreList(p60, p61) -- name: getIgnoreList
    -- upvalues: (copy) v_u_2, (copy) v_u_3
    local v62 = tick()
    local v63 = p60.ignoreList
    if not v63 or v62 - p60.ignoreListRefreshTime > 5 then
        v63 = { p60.instanceIsTool and p60.instance.Parent or p60.instance, workspace.CurrentCamera }
        if not v_u_2:IsServer() and (p61 and (v_u_3.LocalPlayer and v_u_3.LocalPlayer.Character)) then
            local v64 = v_u_3.LocalPlayer.Character
            table.insert(v63, v64)
        end
        p60.ignoreList = v63
    end
    return v63
end
function v_u_20.simulateProjectile(p_u_65, _, p66, p67, p68) -- name: simulateProjectile
    -- upvalues: (copy) v_u_3, (copy) v_u_13, (copy) v_u_6, (copy) v_u_18, (copy) v_u_12, (copy) v_u_2, (copy) v_u_1, (copy) v_u_4, (copy) v_u_8
    local v_u_69 = p_u_65.player == v_u_3.LocalPlayer
    local v_u_70 = p_u_65:getConfigValue("BulletSpeed", 1000)
    local v71 = p_u_65:getConfigValue("MaxDistance", 2000)
    local v_u_72 = p_u_65:getConfigValue("TrailLength", nil)
    local v_u_73 = p_u_65:getConfigValue("TrailLengthFactor", 1)
    local v_u_74 = p_u_65:getConfigValue("ShowEntireTrailUntilHit", false)
    local v75 = p_u_65:getConfigValue("GravityFactor", 0)
    local v76 = p_u_65:getConfigValue("MinSpread", 0)
    local v77 = p_u_65:getConfigValue("MaxSpread", 0)
    local v_u_78 = p_u_65:getConfigValue("ShouldMovePart", false)
    local v_u_79 = p_u_65:getConfigValue("ExplodeOnImpact", false)
    local v_u_80 = p_u_65:getConfigValue("BlastRadius", 8)
    if p_u_65.tipAttach ~= nil then
        local v81 = p_u_65.tipAttach.WorldCFrame
        local v82 = v81.Position
        local v83 = v81.LookVector
        local v84 = p_u_65.instance:FindFirstChild("Handle")
        if v84 then
            local v85 = (v84.Position - v82):Dot(v83)
            local v86 = math.abs(v85) + 1
            local v87 = Ray.new(v82 - v83.Unit * v86, v83.Unit * v86)
            local v88, v89 = v_u_13.penetrateCast(v87, p_u_65:getIgnoreList(v_u_69))
            if v88 then
                local v90 = (v82 - v89).Magnitude
                if math.abs(v90) > 0 then
                    p66.origin = v89 - v83.Unit * 0.1
                    p66.dir = v83.Unit
                end
            end
        end
    end
    local v_u_91 = p66.origin
    local v92 = p66.dir
    local v93 = v_u_13.applySpread(v92, p68, math.rad(v76), (math.rad(v77)))
    local v_u_94 = p_u_65.bulletEffectTemplate:Clone()
    v_u_94.CFrame = CFrame.new(v_u_91, v_u_91 + v93)
    v_u_94.Parent = workspace.CurrentCamera
    v_u_6:AddTag(v_u_94, "WeaponsSystemIgnore")
    local v_u_95 = v_u_94:FindFirstChild("LeadingParticles", true)
    local v96 = v_u_94:FindFirstChild("Attachment0")
    local v_u_97
    if v96 then
        v_u_97 = v96:FindFirstChild("TrailParticles")
    else
        v_u_97 = nil
    end
    local v_u_98 = v_u_94:FindFirstChild("HitEffect")
    local v_u_99 = v_u_94:FindFirstChild("HitParticles", true)
    local v_u_100 = p_u_65:getConfigValue("NumHitParticles", 3)
    local v_u_101 = v_u_94:FindFirstChild("HitSound", true)
    local v_u_102 = v_u_94:FindFirstChild("Flying", true)
    local v_u_103 = p_u_65:getConfigValue("MuzzleFlashTime", 0.03)
    local v_u_104 = false
    local v_u_105 = p_u_65:getConfigValue("BeamWidth0", 1.5)
    local v_u_106 = p_u_65:getConfigValue("BeamWidth1", 1.8)
    local v_u_107 = p_u_65:getConfigValue("BeamFadeTime", nil)
    local v_u_108 = v_u_94:FindFirstChild("Beam0")
    if v_u_108 then
        v_u_108.Enabled = true
    end
    local v_u_109 = v_u_94:FindFirstChild("Beam1")
    if v_u_109 then
        v_u_109.Enabled = true
    end
    local v110 = v_u_94:FindFirstChild("MuzzleParticles", true)
    local v111 = p_u_65:getConfigValue("NumMuzzleParticles", 50)
    if v110 then
        v110.Parent.CFrame = CFrame.new(v_u_91, v_u_91 + v93)
        for _ = 1, 5 do
            local v112 = v110.Parent
            local v113 = v_u_18:NextNumber(-10, 10)
            local v114 = v_u_18:NextNumber(-10, 10)
            local v115 = v_u_18
            v112.Velocity = Vector3.new(v113, v114, v115:NextNumber(-10, 10))
            v110:Emit(v111 / 5)
        end
    end
    if p_u_65.tipAttach and (p_u_65.muzzleFlash0 and (p_u_65.muzzleFlash1 and (p_u_65.muzzleFlashBeam and p67 == 1))) then
        local v116 = p_u_65:getConfigValue("MuzzleFlashRotation0", -3.141592653589793)
        local v117 = p_u_65:getConfigValue("MuzzleFlashRotation1", 3.141592653589793)
        local v118 = p_u_65:getConfigValue("MuzzleFlashSize0", 1)
        local v119 = p_u_65:getConfigValue("MuzzleFlashSize1", 1)
        local v120 = v_u_18:NextNumber(v116, v117)
        local v121 = v_u_18:NextNumber(v118, v119)
        local v122 = p_u_65.tipAttach.CFrame * CFrame.Angles(0, 0, v120)
        p_u_65.muzzleFlash0.CFrame = v122 * CFrame.new(v121 * -0.5, 0, 0) * CFrame.Angles(0, 3.141592653589793, 0)
        p_u_65.muzzleFlash1.CFrame = v122 * CFrame.new(v121 * 0.5, 0, 0) * CFrame.Angles(0, 3.141592653589793, 0)
        p_u_65.muzzleFlashBeam.Enabled = true
        p_u_65.muzzleFlashBeam.Width0 = v121
        p_u_65.muzzleFlashBeam.Width1 = v121
        v_u_104 = true
    end
    if v_u_102 then
        v_u_102:Play()
    end
    if v_u_97 then
        v_u_97.Enabled = true
    end
    local v_u_123 = v_u_12.new()
    v_u_123:setPhysicsLaunch(v_u_91, v93 * v_u_70, nil, 35 * -v75)
    if v75 > 0.66 then
        v_u_123:setNumSamples(3)
    elseif v75 > 0.33 then
        v_u_123:setNumSamples(2)
    else
        v_u_123:setNumSamples(1)
    end
    local v_u_124 = nil
    local v_u_125 = 0
    local v_u_126 = tick()
    local v_u_127 = false
    local v_u_128 = false
    local v_u_129 = 0
    local v_u_130 = 0
    local v_u_131 = false
    local v_u_132 = (1 / 0)
    local v_u_133 = v_u_107 or 0
    local v_u_134 = {
        ["sid"] = nil,
        ["pid"] = nil,
        ["maxDist"] = nil,
        ["part"] = nil,
        ["p"] = nil,
        ["n"] = nil,
        ["m"] = nil,
        ["d"] = 1000000000,
        ["sid"] = p66.id,
        ["pid"] = p67,
        ["maxDist"] = v71,
        ["m"] = Enum.Material.Air
    }
    local function v194(p135)
        -- upvalues: (ref) v_u_130, (copy) v_u_126, (copy) v_u_70, (ref) v_u_72, (copy) v_u_73, (ref) v_u_125, (copy) v_u_134, (copy) v_u_74, (ref) v_u_127, (copy) v_u_123, (copy) p_u_65, (copy) v_u_91, (copy) v_u_69, (ref) v_u_97, (copy) v_u_102, (ref) v_u_94, (copy) v_u_95, (ref) v_u_133, (copy) v_u_79, (copy) v_u_80, (copy) v_u_98, (copy) v_u_108, (copy) v_u_99, (copy) v_u_100, (copy) v_u_101, (ref) v_u_6, (ref) v_u_2, (ref) v_u_1, (ref) v_u_4, (ref) v_u_131, (ref) v_u_132, (ref) v_u_128, (ref) v_u_129, (copy) v_u_78, (copy) v_u_105, (copy) v_u_106, (copy) v_u_107, (copy) v_u_109, (ref) v_u_104, (copy) v_u_103, (ref) v_u_124
        local v136 = tick()
        v_u_130 = v136 - v_u_126
        local v137 = v_u_70 * p135
        v_u_72 = v_u_72 or v137 * v_u_73
        local v138 = v_u_125 - v_u_72
        local v139 = v_u_125
        local v140 = v_u_134.maxDist or 0
        local v141 = v_u_74 and 0 or v138
        local v142 = math.min(v141, v140)
        local v143 = math.max(0, v142)
        local v144 = math.min(v139, v140)
        local v145 = math.max(0, v144)
        if not v_u_127 then
            local v146 = v145 + v137
            v_u_123:setDomain(v145, v146)
            local v147, v148, v149, v150, v151 = v_u_123:findPart(p_u_65.ignoreList)
            if v147 then
                v_u_127 = true
                v145 = v145 + v151 * (v146 - v145)
                v_u_123:setDomain(v143, v145)
                v_u_134.part = v147
                v_u_134.p = v148
                v_u_134.n = v149
                v_u_134.m = v150
                v_u_134.d = (v148 - v_u_91).Magnitude
                v_u_134.t = v151
                v_u_134.maxDist = v145
                p_u_65:onHit(v_u_134)
                if v_u_69 then
                    local v152 = {}
                    for v153, v154 in pairs(v_u_134) do
                        v152[v153] = v154
                    end
                    p_u_65.weaponsSystem.getRemoteEvent("WeaponHit"):FireServer(p_u_65.instance, v152)
                end
                if v_u_97 then
                    v_u_97.Enabled = false
                end
                if v_u_102 and v_u_102.IsPlaying then
                    v_u_102:Stop()
                end
                if v_u_94 then
                    v_u_94.Transparency = 1
                end
                if v_u_95 then
                    v_u_95.Rate = 0
                    local v155 = v_u_133
                    local v156 = v_u_95.Lifetime.Max
                    v_u_133 = math.max(v155, v156)
                end
                if v_u_79 then
                    local v157 = Instance.new("Explosion")
                    v157.Position = v148 + v149 * 0.5
                    v157.BlastRadius = v_u_80
                    v157.BlastPressure = 0
                    v157.ExplosionType = Enum.ExplosionType.NoCraters
                    v157.DestroyJointRadiusPercent = 0
                    v157.Visible = true
                    if v_u_69 then
                        v157.Hit:Connect(function(p158, _)
                            -- upvalues: (ref) p_u_65, (ref) v_u_134
                            local v159 = p_u_65.weaponsSystem.getHumanoid(p158)
                            if v159 and (p158.Name == "UpperTorso" and (v159:GetState() ~= Enum.HumanoidStateType.Dead and (p_u_65.weaponsSystem.gui and (p158.Parent ~= p_u_65.player.Character and p_u_65.weaponsSystem.playersOnDifferentTeams(p_u_65.weaponsSystem.getPlayerFromHumanoid(v159), p_u_65.player))))) then
                                p_u_65.weaponsSystem.gui:OnHitOtherPlayer(p_u_65:calculateDamage(v_u_134.d), v159)
                            end
                        end)
                    end
                    v157.Parent = workspace
                end
                if v_u_98 and (v_u_108 and v_u_108.Attachment1) then
                    v_u_123:renderToBeam(v_u_108)
                    v_u_98.CFrame = v_u_108.Attachment1.CFrame * CFrame.Angles(0, 1.5707963267948966, 0)
                end
                local v160 = v147 and v147.Color or Color3.fromRGB(255, 255, 255)
                if v147 and v147:IsA("Terrain") then
                    v160 = workspace.Terrain:GetMaterialColor(v150 or Enum.Material.Sand)
                end
                if v_u_134.h and (v_u_134.h:IsA("Humanoid") and (v_u_99 and (v_u_100 > 0 and v147))) then
                    v_u_99.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
                    v_u_99:Emit(v_u_100)
                    local v161 = v_u_133
                    local v162 = v_u_99.Lifetime.Max
                    v_u_133 = math.max(v161, v162)
                elseif not (v_u_134.h and v_u_134.h:IsA("Humanoid")) and (v_u_99 and v_u_100 > 0) then
                    if v147 and p_u_65:getConfigValue("HitParticlesUsePartColor", true) then
                        local v163 = v_u_99.Color
                        local v164 = {}
                        for v165, v166 in pairs(v163.Keypoints) do
                            local v167 = v166.Value
                            if v167 == Color3.fromRGB(255, 0, 255) then
                                v167 = v160
                            end
                            v164[v165] = ColorSequenceKeypoint.new(v166.Time, v167)
                        end
                        v_u_99.Color = ColorSequence.new(v164)
                    end
                    v_u_99:Emit(v_u_100)
                    local v168 = v_u_133
                    local v169 = v_u_99.Lifetime.Max
                    v_u_133 = math.max(v168, v169)
                end
                if v_u_101 then
                    v_u_101:Play()
                    local v170 = v_u_133
                    local v171 = v_u_101.TimeLength
                    v_u_133 = math.max(v170, v171)
                end
                local v172 = v147.CFrame:pointToObjectSpace(v148)
                local v173 = v147.CFrame:vectorToObjectSpace(v149)
                if v147 and not v147.Parent or not v147.Parent:FindFirstChildOfClass("Humanoid") and (v172 and (v173 and p_u_65.hitMarkTemplate)) then
                    local v174 = p_u_65.hitMarkTemplate:Clone()
                    v174.Parent = v147
                    v_u_6:AddTag(v174, "WeaponsSystemIgnore")
                    local v175 = v_u_123:sampleVelocity(1).Unit
                    if p_u_65:getConfigValue("AlignHitMarkToNormal", true) then
                        local v176 = -v173:Cross(v175).Unit
                        local v177 = v173:Cross(v176)
                        local v178 = CFrame.fromMatrix(v172 + v173 * 0.05, v176, v177, -v173)
                        v174.CFrame = v147.CFrame:toWorldSpace(v178)
                    else
                        v174.CFrame = v147.CFrame * CFrame.new(v172, v172 + v147.CFrame:vectorToObjectSpace(v175))
                    end
                    local v179 = Instance.new("WeldConstraint")
                    v179.Part0 = v174
                    v179.Part1 = v147
                    v179.Parent = v174
                    local v_u_180 = v174:FindFirstChild("Glow")
                    if v_u_180 then
                        coroutine.wrap(function()
                            -- upvalues: (ref) v_u_2, (copy) v_u_180
                            local v181 = v_u_2.Heartbeat
                            for v182 = 0, 1, 0.016666666666666666 do
                                v181:Wait()
                                v_u_180.Transparency = v182 ^ 2
                            end
                        end)()
                    end
                    local v183 = v174:FindFirstChild("BulletHole")
                    if v183 then
                        v183.Color3 = v160
                        v_u_1:Create(v183, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 4), {
                            ["Transparency"] = 1
                        }):Play()
                    end
                    local v184 = v174:FindFirstChild("ImpactBillboard")
                    if v184 then
                        local v_u_185 = v184:FindFirstChild("Impact")
                        local v186 = v_u_1:Create(v_u_185, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
                            ["Size"] = UDim2.new(1, 0, 1, 0)
                        })
                        v186.Completed:Connect(function()
                            -- upvalues: (ref) v_u_1, (copy) v_u_185
                            v_u_1:Create(v_u_185, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0), {
                                ["Size"] = nil,
                                ["ImageTransparency"] = 1,
                                ["Size"] = UDim2.new(0.5, 0, 0.5, 0)
                            }):Play()
                        end)
                        v186:Play()
                    end
                    v_u_4:AddItem(v174, 5)
                end
                v_u_131 = true
                v_u_132 = v136 + v_u_133
            end
        end
        if v140 <= v145 then
            if not v_u_128 then
                v_u_128 = true
                v_u_129 = v136
            end
            if v140 <= v143 and not v_u_131 then
                v_u_131 = true
                v_u_132 = v136 + v_u_133
            end
        end
        v_u_123:setDomain(v143, v145)
        if v143 < v140 then
            local v187 = v_u_130 * v_u_70
            v_u_125 = math.max(0, v187)
        end
        if v_u_78 then
            local v188 = v_u_123:samplePoint(1)
            local v189 = v_u_123:sampleVelocity(1)
            v_u_94.CFrame = CFrame.new(v188, v188 + v189)
            v_u_94.Velocity = v189.Unit * v_u_70
        end
        local v190 = v_u_105
        local v191 = v_u_106
        if v_u_107 then
            local v192 = (v_u_128 and (v136 - v_u_129 or 0) or 0) / v_u_107
            local v193 = math.clamp(v192, 0, 1)
            v190 = v190 * (1 - v193)
            v191 = v191 * (1 - v193)
        end
        if v_u_108 then
            v_u_108.Width0 = v190
            v_u_108.Width1 = v191
            v_u_123:renderToBeam(v_u_108)
        end
        if v_u_109 then
            v_u_109.Width0 = v190
            v_u_109.Width1 = v191
            v_u_123:renderToBeam(v_u_109)
        end
        if v_u_104 and (v_u_103 < v_u_130 and p_u_65.muzzleFlashBeam) then
            p_u_65.muzzleFlashBeam.Enabled = false
            v_u_104 = false
        end
        if v_u_131 and v136 - v_u_132 > 0 or v_u_130 > 10 then
            if v_u_94 then
                v_u_94:Destroy()
                v_u_94 = nil
            end
            v_u_124:Disconnect()
        end
    end
    local _ = v_u_2.Heartbeat:Connect(v194)
    if not v_u_8 and p_u_65.usesCharging then
        local v195 = p_u_65.charge - p_u_65:getConfigValue("FireDischarge", 1)
        p_u_65.charge = math.clamp(v195, 0, 1)
    end
end
function v_u_20.calculateDamage(p196, p197) -- name: calculateDamage
    local v198 = p196:getConfigValue("ZeroDamageDistance", 10000)
    local v199 = p196:getConfigValue("FullDamageDistance", 1000)
    local v200 = v198 - v199
    local v201 = p197 - v199
    local v202 = 1 - math.max(0, v201) / math.max(1, v200)
    local v203 = math.clamp(v202, 0, 1)
    local v204 = p196:getConfigValue("HitDamage", 10) * v203
    return math.max(v204, 0)
end
function v_u_20.applyDamage(p205, p206) -- name: applyDamage
    local v207 = p205:calculateDamage(p206.d)
    if v207 > 0 then
        p205.weaponsSystem.doDamage(p206.h, v207, nil, p205.player)
    end
end
function v_u_20.onHit(p_u_208, p209) -- name: onHit
    -- upvalues: (copy) v_u_8, (copy) v_u_3, (copy) v_u_6
    local v210 = p209.p
    local v211 = p209.n
    local v212 = p209.part
    if v212 and v212.Parent then
        p209.h = p_u_208.weaponsSystem.getHumanoid(v212) or v212
        if v_u_8 and (not p209.h:IsA("Humanoid") or p_u_208.weaponsSystem.playersOnDifferentTeams(p_u_208.weaponsSystem.getPlayerFromHumanoid(p209.h), p_u_208.player)) then
            p_u_208:applyDamage(p209)
        elseif p209.h:IsA("Humanoid") and (p209.h:GetState() ~= Enum.HumanoidStateType.Dead and (p_u_208.weaponsSystem.gui and (p_u_208.player == v_u_3.LocalPlayer and p_u_208.weaponsSystem.playersOnDifferentTeams(p_u_208.weaponsSystem.getPlayerFromHumanoid(p209.h), p_u_208.player)))) then
            p_u_208.weaponsSystem.gui:OnHitOtherPlayer(p_u_208:calculateDamage(p209.d), p209.h)
        end
    end
    if v_u_8 and p_u_208:getConfigValue("ExplodeOnImpact", false) then
        local v_u_213 = p_u_208:getConfigValue("BlastRadius", 8)
        local v214 = p_u_208:getConfigValue("BlastPressure", 10000)
        local v_u_215 = p_u_208:getConfigValue("BlastDamage", 100)
        local v216 = Instance.new("Explosion")
        v216.Position = v210 + v211 * 0.5
        v216.BlastRadius = v_u_213
        v216.BlastPressure = v214
        v216.ExplosionType = Enum.ExplosionType.NoCraters
        v216.DestroyJointRadiusPercent = 0
        v216.Visible = false
        v216.Hit:Connect(function(p217, p218)
            -- upvalues: (copy) v_u_213, (copy) v_u_215, (copy) p_u_208, (ref) v_u_6
            local v219 = p218 / v_u_213
            local v220 = v_u_215 * (1 - math.clamp(v219, 0, 1))
            local v221 = p_u_208.weaponsSystem.getHumanoid(p217)
            if v221 then
                if p217.Name == "UpperTorso" and (v221:GetState() ~= Enum.HumanoidStateType.Dead and p_u_208.weaponsSystem.playersOnDifferentTeams(p_u_208.weaponsSystem.getPlayerFromHumanoid(v221), p_u_208.player)) then
                    p_u_208.weaponsSystem.doDamage(v221, v220, nil, p_u_208.player)
                    return
                end
            elseif not v_u_6:HasTag(p217, "WeaponsSystemIgnore") then
                p_u_208.weaponsSystem.doDamage(p217, v220, nil, p_u_208.player)
            end
        end)
        v216.Parent = workspace
    end
end
function v_u_20.fire(p222, p223, p224, p225) -- name: fire
    -- upvalues: (copy) v_u_11
    if p222:isCharged() then
        v_u_11.fire(p222, p223, p224, p225)
    end
end
function v_u_20.onFired(p226, p227, p228, p229) -- name: onFired
    -- upvalues: (copy) v_u_8, (copy) v_u_3, (copy) v_u_11
    if v_u_8 or (p227 ~= v_u_3.LocalPlayer or not p229) then
        local v230 = p226:getConfigValue("ShotCooldown", 0.1)
        local v231 = p226:getConfigValue("FireMode", "Semiautomatic")
        local v232 = v231 == "Semiautomatic"
        if v231 == "Burst" and not p226.burstFiring then
            p226.burstIdx = 0
            p226.burstFiring = true
        elseif v232 then
            p226.triggerDisconnected = true
        end
        if p226.burstFiring then
            p226.burstIdx = p226.burstIdx + 1
            if p226.burstIdx >= p226:getConfigValue("NumBurstShots", 3) then
                p226.burstFiring = false
                p226.triggerDisconnected = true
            else
                v230 = p226:getConfigValue("BurstShotCooldown", nil) or v230
            end
        end
        p226.nextFireTime = tick() + v230
        v_u_11.onFired(p226, p227, p228, p229)
    end
end
function v_u_20.onConfigValueChanged(p233, p234, p235, p236) -- name: onConfigValueChanged
    -- upvalues: (copy) v_u_11, (copy) v_u_15, (copy) v_u_7, (copy) v_u_16, (copy) v_u_17
    v_u_11.onConfigValueChanged(p233, p234, p235, p236)
    if p234 == "ShotEffect" then
        p233.bulletEffectTemplate = v_u_15:FindFirstChild(p233:getConfigValue("ShotEffect", "Bullet"))
        if p233.bulletEffectTemplate then
            local v237 = p233.bulletEffectTemplate:FindFirstChildOfClass("Configuration")
            if v237 then
                p233:importConfiguration(v237)
            end
            local v_u_238 = p233.bulletEffectTemplate:FindFirstChild("Beam0")
            if v_u_238 then
                coroutine.wrap(function()
                    -- upvalues: (ref) v_u_7, (copy) v_u_238
                    v_u_7:PreloadAsync({ v_u_238 })
                end)()
                return
            end
        end
    elseif p234 == "HitMarkEffect" then
        p233.hitMarkTemplate = v_u_16:FindFirstChild(p233:getConfigValue("HitMarkEffect", "BulletHole"))
        local v239 = p233.hitMarkTemplate and p233.hitMarkTemplate:FindFirstChildOfClass("Configuration")
        if v239 then
            p233:importConfiguration(v239)
            return
        end
    elseif p234 == "CasingEffect" then
        p233.casingTemplate = v_u_17:FindFirstChild(p233:getConfigValue("CasingEffect", ""))
        local v240 = p233.casingTemplate and p233.casingTemplate:FindFirstChildOfClass("Configuration")
        if v240 then
            p233:importConfiguration(v240)
            return
        end
    elseif p234 == "ChargeRate" then
        p233.usesCharging = p235 ~= nil
    end
end
function v_u_20.onActivatedChanged(p241) -- name: onActivatedChanged
    -- upvalues: (copy) v_u_11, (copy) v_u_8, (copy) v_u_19
    v_u_11.onActivatedChanged(p241)
    if not v_u_8 then
        if p241.equipped and p241:getAmmoInWeapon() <= 0 then
            p241:reload()
            return
        end
        if p241.activated and (p241.player == v_u_19 and (p241:canFire() and tick() > p241.nextFireTime)) then
            p241:doLocalFire()
        end
        if not p241.activated and (p241.triggerDisconnected and not p241.burstFiring) then
            p241.triggerDisconnected = false
        end
    end
end
function v_u_20.onRenderStepped(p_u_242, p243) -- name: onRenderStepped
    -- upvalues: (copy) v_u_11, (copy) v_u_3, (copy) v_u_13, (copy) v_u_2
    v_u_11.onRenderStepped(p_u_242, p243)
    if p_u_242.tipAttach then
        if p_u_242.equipped then
            local v244 = p_u_242.tipAttach.WorldCFrame
            if p_u_242.player == v_u_3.LocalPlayer then
                local v245 = p_u_242:getAnimTrack(p_u_242:getConfigValue("AimTrack", "RifleAim"))
                local v246 = p_u_242:getAnimTrack(p_u_242:getConfigValue("AimZoomTrack", "RifleAimDownSights"))
                if v245 then
                    local v247 = v244.LookVector
                    local v248 = Ray.new(v244.p, v247 * 500)
                    local _, v249 = v_u_13.penetrateCast(v248, p_u_242.ignoreList)
                    if p_u_242.weaponsSystem.aimRayCallback then
                        local _, v250 = v_u_13.penetrateCast(p_u_242.weaponsSystem.aimRayCallback(), p_u_242.ignoreList)
                        p_u_242.aimPoint = v250
                    else
                        p_u_242.aimPoint = v249
                    end
                    if not (v245.IsPlaying or p_u_242.reloading) then
                        v245:Play(0.15)
                        spawn(function()
                            -- upvalues: (copy) p_u_242, (ref) v_u_2
                            local v251 = p_u_242:getConfigValue("StartupTime", 0.2)
                            local v252 = tick() + v251
                            while tick() < v252 do
                                v_u_2.Heartbeat:Wait()
                            end
                            p_u_242.startupFinished = true
                        end)
                    end
                    if v246 and not p_u_242.reloading then
                        if not v246.IsPlaying then
                            v246:Play(0.15)
                        end
                        v246:AdjustSpeed(0.001)
                        if p_u_242.weaponsSystem.camera:isZoomed() then
                            if v245.WeightTarget ~= 0 then
                                v246:AdjustWeight(1)
                                v245:AdjustWeight(0)
                            end
                        elseif v245.WeightTarget ~= 1 then
                            v246:AdjustWeight(0)
                            v245:AdjustWeight(1)
                        end
                    end
                    local v253 = p_u_242.recoilIntensity
                    local v254 = math.deg(v253)
                    if p_u_242.weaponsSystem.camera.enabled then
                        local v255 = p_u_242.weaponsSystem.camera:getRelativePitch() + p_u_242.weaponsSystem.camera.currentRecoil.Y + p_u_242.recoilIntensity
                        v254 = math.deg(v255)
                    end
                    local v256 = (v254 - -80) / 160 * 2 or 1
                    v245:AdjustSpeed(0.001)
                    v245.TimePosition = math.clamp(v256, 0.001, 1.97)
                    if v246 then
                        v246.TimePosition = math.clamp(v256, 0.001, 1.97)
                    end
                    local v257 = p_u_242:getConfigValue("RecoilDecay", 0.825)
                    local v258 = p_u_242.recoilIntensity * v257
                    p_u_242.recoilIntensity = math.clamp(v258, 0, (1 / 0))
                    return
                end
                warn("no aimTrack")
            end
        end
    else
        return
    end
end
function v_u_20.setChargingParticles(p259, p260) -- name: setChargingParticles
    local v261 = p259:getConfigValue("ChargingParticlesRatePerCharge", 20) * p260
    for _, v262 in pairs(p259.chargingParticles) do
        v262.Rate = v261
    end
end
function v_u_20.onStepped(p263, p264) -- name: onStepped
    -- upvalues: (copy) v_u_11
    if p263.tipAttach then
        if p263.equipped then
            v_u_11.onStepped(p263, p264)
            local v265 = tick()
            local v266 = p263:getSound("Charging")
            local v267 = p263:getSound("Discharging")
            if p263.usesCharging then
                local v268 = p263.charge
                p263:handleCharging(p264)
                local v269 = p263.charge - v268
                if v269 > 0 then
                    p263:setChargingParticles(p263.charge)
                else
                    p263:setChargingParticles(0)
                end
                if v266 then
                    if v266.Looped then
                        if v269 < 0 then
                            v266:Stop()
                        else
                            if not v266.Playing and (p263.charge < 1 and v269 > 0) then
                                v266:Play()
                            end
                            v266.PlaybackSpeed = p263.chargeSoundPitchMin + p263.charge * (p263.chargeSoundPitchMax - p263.chargeSoundPitchMin)
                        end
                    elseif v269 > 0 and (p263.charge <= 1 and not v266.Playing) then
                        v266.TimePosition = v266.TimeLength * p263.charge
                        v266:Play()
                    elseif v269 <= 0 and v266.Playing then
                        v266:Stop()
                    end
                end
                if v267 then
                    if v267.Looped then
                        if v269 > 0 then
                            v267:Stop()
                        else
                            if not v267.Playing and p263.charge > 0 then
                                v267:Play()
                            end
                            v267.PlaybackSpeed = p263.chargeSoundPitchMin + p263.charge * (p263.chargeSoundPitchMax - p263.chargeSoundPitchMin)
                        end
                    elseif v269 < 0 and (p263.charge >= 0 and not v267.Playing) then
                        v267.TimePosition = v267.TimeLength * p263.charge
                        v267:Play()
                    elseif v269 >= 0 and v267.Playing then
                        v267:Stop()
                    end
                end
                if v268 < 1 and p263.charge >= 1 then
                    local v270 = p263:getSound("ChargeComplete")
                    if v270 then
                        v270:Play()
                    end
                    if v266 and v266.Playing then
                        v266:Stop()
                    end
                    if p263.chargeCompleteParticles then
                        p263.chargeCompleteParticles:Emit(p263:getConfigValue("NumChargeCompleteParticles", 25))
                    end
                end
                if v268 > 0 and p263.charge <= 0 then
                    local v271 = p263:getSound("DischargeComplete")
                    if v271 then
                        v271:Play()
                    end
                    if v267 and v267.Playing then
                        v267:Stop()
                    end
                    if p263.dischargeCompleteParticles then
                        p263.dischargeCompleteParticles:Emit(p263:getConfigValue("NumDischargeCompleteParticles", 25))
                    end
                end
                p263:renderCharge()
            else
                if v266 then
                    v266:Stop()
                end
                if v267 then
                    v267:Stop()
                end
            end
            if p263.usesCharging and p263.chargeGlowPart then
                p263.chargeGlowPart.Transparency = 1 - p263.charge
            end
            if p263:canFire() and p263.nextFireTime < v265 then
                p263:doLocalFire()
            end
        end
    else
        return
    end
end
function v_u_20.handleCharging(p272, p273) -- name: handleCharging
    local v274 = p272.activated or (p272.burstFiring or p272:getConfigValue("ChargePassively", false))
    if p272.reloading or p272.triggerDisconnected then
        v274 = false
    end
    local v275
    if v274 then
        v275 = p272:getConfigValue("ChargeRate", 0) * p273
    else
        v275 = p272:getConfigValue("DischargeRate", 0) * -p273
    end
    local v276 = p272.charge + v275
    p272.charge = math.clamp(v276, 0, 1)
end
function v_u_20.isCharged(p277) -- name: isCharged
    return not p277.usesCharging or p277.charge >= 1
end
function v_u_20.canFire(p278) -- name: canFire
    -- upvalues: (copy) v_u_3
    local v279 = p278.player == v_u_3.LocalPlayer and (p278.burstFiring or p278.activated) and (not p278.triggerDisconnected and (not p278.reloading and p278:isCharged()))
    if v279 then
        v279 = p278.startupFinished
    end
    return v279
end
function v_u_20.doLocalFire(p280) -- name: doLocalFire
    if p280.tipAttach then
        local v281 = p280.tipAttach.WorldCFrame.Position
        p280:fire(v281, (p280.aimPoint - v281).Unit, p280.charge)
    end
end
return v_u_20

-- Script Path: game:GetService("ReplicatedStorage").WeaponsSystem.WeaponTypes.BowWeapon
-- Took 0s to decompile.
-- Executor: Delta (1.1.731.944)

local v_u_1 = game:GetService("RunService"):IsServer()
local v2 = script.Parent.Parent:WaitForChild("WeaponTypes")
local v_u_3 = require(v2:WaitForChild("BulletWeapon"))
local v_u_4 = {}
v_u_4.__index = v_u_4
setmetatable(v_u_4, v_u_3)
v_u_4.CanAimDownSights = true
v_u_4.CanBeFired = true
v_u_4.CanBeReloaded = true
v_u_4.CanHit = true
function v_u_4.new(p5, p6) -- name: new
    -- upvalues: (copy) v_u_3, (copy) v_u_4
    local v7 = v_u_3.new(p5, p6)
    local v8 = v_u_4
    setmetatable(v7, v8)
    v7.hasArrow = true
    v7.arrowPart = v7.instance:FindFirstChild("Arrow", true)
    v7.armsPart = v7.instance:FindFirstChild("Arms", true)
    if v7.armsPart then
        v7.armsMesh = v7.armsPart:FindFirstChildOfClass("SpecialMesh")
        v7.tightOffsetValue = v7.armsPart:FindFirstChild("TightOffset")
        v7.tightScaleValue = v7.armsPart:FindFirstChild("TightScale")
        v7.looseOffsetValue = v7.armsPart:FindFirstChild("LooseOffset")
        v7.looseScaleValue = v7.armsPart:FindFirstChild("LooseScale")
        v7.leftLooseAttach = v7.armsPart:FindFirstChild("LeftLoose")
        v7.rightLooseAttach = v7.armsPart:FindFirstChild("RightLoose")
        v7.leftTightAttach = v7.armsPart:FindFirstChild("LeftTight")
        v7.rightTightAttach = v7.armsPart:FindFirstChild("RightTight")
        v7.leftString0 = v7.armsPart:FindFirstChild("LeftString0")
        v7.rightString0 = v7.armsPart:FindFirstChild("RightString0")
    end
    v7.string1 = v7.instance:FindFirstChild("String1", true)
    v7.stringLooseAttach = v7.instance:FindFirstChild("StringLoose", true)
    v7.stringTightAttach = v7.instance:FindFirstChild("StringTight", true)
    v7:setHasArrow(false)
    return v7
end
function v_u_4.renderCharge(p9) -- name: renderCharge
    if p9.armsMesh and (p9.looseOffsetValue and (p9.looseScaleValue and (p9.tightOffsetValue and p9.tightScaleValue))) then
        local v10 = p9.looseOffsetValue.Value
        local v11 = p9.tightOffsetValue.Value
        local v12 = p9.looseScaleValue.Value
        local v13 = p9.tightScaleValue.Value
        p9.armsMesh.Offset = v10:Lerp(v11, p9.charge)
        p9.armsMesh.Scale = v12:Lerp(v13, p9.charge)
    end
    if p9.leftString0 and (p9.leftLooseAttach and p9.leftTightAttach) then
        p9.leftString0.CFrame = p9.leftLooseAttach.CFrame:lerp(p9.leftTightAttach.CFrame, p9.charge)
    end
    if p9.rightString0 and (p9.rightLooseAttach and p9.rightTightAttach) then
        p9.rightString0.CFrame = p9.rightLooseAttach.CFrame:lerp(p9.rightTightAttach.CFrame, p9.charge)
    end
    if p9.string1 and (p9.stringLooseAttach and p9.stringTightAttach) then
        p9.string1.CFrame = p9.stringLooseAttach.CFrame:lerp(p9.stringTightAttach.CFrame, p9.charge)
    end
end
function v_u_4.handleCharging(p14, p15) -- name: handleCharging
    -- upvalues: (copy) v_u_3
    if not p14.hasArrow then
        v_u_3.handleCharging(p14, p15)
        if p14.charge >= 1 then
            p14:setHasArrow(true)
        end
    end
end
function v_u_4.onActivatedChanged(p16) -- name: onActivatedChanged
    -- upvalues: (copy) v_u_1, (copy) v_u_3
    if not v_u_1 and (not p16.activated and p16.didFire) then
        p16.didFire = false
    end
    v_u_3.onActivatedChanged(p16)
end
function v_u_4.isCharged(p17) -- name: isCharged
    local v18 = p17.hasArrow
    if v18 then
        v18 = p17.charge >= 1
    end
    return v18
end
function v_u_4.doLocalFire(p19) -- name: doLocalFire
    -- upvalues: (copy) v_u_3
    v_u_3.doLocalFire(p19)
    p19:setHasArrow(false)
    p19.didFire = true
end
function v_u_4.setHasArrow(p20, p21) -- name: setHasArrow
    if p20.hasArrow ~= p21 then
        p20.hasArrow = p21
        if p20.arrowPart then
            p20.arrowPart.Transparency = p20.hasArrow and 0 or 1
        end
    end
end
return v_u_4

game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponReloaded
game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponReloadRequest
game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponReloadCanceled
game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit
game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponFired
game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponActivated
-- Script Path: game:GetService("ReplicatedStorage").WeaponsSystem.Libraries.WeaponsGui
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.731.944)

local v1 = game:GetService("Players")
local v_u_2 = game:GetService("RunService")
local v_u_3 = game:GetService("UserInputService")
local v_u_4 = game:GetService("ContentProvider")
local v_u_5 = game:GetService("TweenService")
local v_u_6 = v1.LocalPlayer
local v7 = script.Parent.Parent
local v_u_8 = v7:WaitForChild("WeaponData")
local v9 = v7:WaitForChild("Libraries")
local v_u_10 = require(v9:WaitForChild("SpringService"))
local v_u_11 = require(v9:WaitForChild("DirectionalIndicatorGuiManager"))
local v_u_12 = require(v9:WaitForChild("DamageBillboardHandler"))
local v_u_13 = v7:WaitForChild("Assets"):WaitForChild("WeaponsSystemGui")
local v_u_14 = {}
v_u_14.__index = v_u_14
function v_u_14.new(p15) -- name: new
    -- upvalues: (copy) v_u_14, (copy) v_u_13, (copy) v_u_11, (copy) v_u_6, (copy) v_u_8, (copy) v_u_4
    local v16 = v_u_14
    local v_u_17 = setmetatable({}, v16)
    v_u_17.weaponsSystem = p15
    v_u_17.connections = {}
    v_u_17.enabled = false
    v_u_17.referenceViewportSize = Vector2.new(1000, 1000)
    v_u_17.scaleWeight = 0.75
    v_u_17.originalScaleAmounts = {}
    v_u_17.crosshairDampingRatio = 0.9
    v_u_17.crosshairFrequency = 3
    v_u_17.crosshairScaleTarget = 1
    v_u_17.crosshairScale = 1
    v_u_17.crosshairWeaponScale = 1
    v_u_17.crosshairEnabled = true
    v_u_17.scopeEnabled = false
    v_u_17.isZoomed = false
    v_u_17.gui = v_u_13:Clone()
    v_u_17.gui.Enabled = false
    coroutine.wrap(function()
        -- upvalues: (copy) v_u_17, (ref) v_u_11, (ref) v_u_6, (ref) v_u_8, (ref) v_u_4
        v_u_17.scalingElementsFolder = v_u_17.gui:WaitForChild("ScalingElements")
        v_u_17.DirectionalIndicatorGuiManager = v_u_11.new(v_u_17)
        v_u_17.crosshairFrame = v_u_17.scalingElementsFolder:WaitForChild("Crosshair")
        v_u_17.crosshairBottom = v_u_17.crosshairFrame:WaitForChild("Bottom")
        v_u_17.crosshairLeft = v_u_17.crosshairFrame:WaitForChild("Left")
        v_u_17.crosshairRight = v_u_17.crosshairFrame:WaitForChild("Right")
        v_u_17.crosshairTop = v_u_17.crosshairFrame:WaitForChild("Top")
        v_u_17.origCrosshairScales = {}
        v_u_17.origCrosshairScales[v_u_17.crosshairBottom] = Vector2.new(v_u_17.crosshairBottom.Size.X.Scale, v_u_17.crosshairBottom.Size.Y.Scale)
        v_u_17.origCrosshairScales[v_u_17.crosshairLeft] = Vector2.new(v_u_17.crosshairLeft.Size.X.Scale, v_u_17.crosshairLeft.Size.Y.Scale)
        v_u_17.origCrosshairScales[v_u_17.crosshairRight] = Vector2.new(v_u_17.crosshairRight.Size.X.Scale, v_u_17.crosshairRight.Size.Y.Scale)
        v_u_17.origCrosshairScales[v_u_17.crosshairTop] = Vector2.new(v_u_17.crosshairTop.Size.X.Scale, v_u_17.crosshairTop.Size.Y.Scale)
        v_u_17.crosshairNormalSize = v_u_17.crosshairFrame.AbsoluteSize
        v_u_17.hitMarker = v_u_17.scalingElementsFolder:WaitForChild("HitMarker"):WaitForChild("HitMarkerImage")
        v_u_17.scopeFrame = v_u_17.gui:WaitForChild("Scope")
        local v18 = v_u_17.scopeFrame:WaitForChild("ScopeImage")
        v_u_17.smallTouchscreen = v_u_17.gui:WaitForChild("SmallTouchscreen")
        v_u_17.largeTouchscreen = v_u_17.gui:WaitForChild("LargeTouchscreen")
        v_u_17.smallAimButton = v_u_17.smallTouchscreen:WaitForChild("AimButton")
        v_u_17.smallAimButton.Activated:Connect(function()
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchAimButtonActivated()
        end)
        v_u_17.largeAimButton = v_u_17.largeTouchscreen:WaitForChild("AimButton")
        v_u_17.largeAimButton.Activated:Connect(function()
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchAimButtonActivated()
        end)
        v_u_17.smallFireButton = v_u_17.smallTouchscreen:WaitForChild("FireButton")
        v_u_17.smallFireButton.InputBegan:Connect(function(p19)
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchFireButton(p19, Enum.UserInputState.Begin)
        end)
        v_u_17.smallFireButton.InputEnded:Connect(function(p20)
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchFireButton(p20, Enum.UserInputState.End)
        end)
        v_u_17.largeFireButton = v_u_17.largeTouchscreen:WaitForChild("FireButton")
        v_u_17.largeFireButton.InputBegan:Connect(function(p21)
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchFireButton(p21, Enum.UserInputState.Begin)
        end)
        v_u_17.largeFireButton.InputEnded:Connect(function(p22)
            -- upvalues: (ref) v_u_17
            v_u_17:onTouchFireButton(p22, Enum.UserInputState.End)
        end)
        v_u_17.smallFireButton.Visible = false
        v_u_17.largeFireButton.Visible = false
        v_u_17.gui.Parent = v_u_6:WaitForChild("PlayerGui")
        v_u_17.gui:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
            -- upvalues: (ref) v_u_17
            v_u_17:onScreenSizeChanged()
        end)
        v_u_17:onScreenSizeChanged()
        v_u_8.OnClientEvent:Connect(function(p23, p24)
            -- upvalues: (ref) v_u_17
            if p23 == "HitByOtherPlayer" then
                v_u_17.DirectionalIndicatorGuiManager:ActivateDirectionalIndicator("DamageIndicator", p24)
            end
        end)
        v_u_4:PreloadAsync({
            v_u_17.crosshairBottom,
            v_u_17.crosshairLeft,
            v_u_17.crosshairRight,
            v_u_17.crosshairTop,
            v18,
            v_u_17.smallAimButton,
            v_u_17.largeAimButton,
            v_u_17.smallFireButton,
            v_u_17.largeFireButton
        })
    end)()
    return v_u_17
end
function v_u_14.onScreenSizeChanged(p25) -- name: onScreenSizeChanged
    -- upvalues: (copy) v_u_3, (copy) v_u_6
    if p25.smallTouchscreen and p25.largeTouchscreen then
        if v_u_3.TouchEnabled then
            local v26
            if v_u_3.TouchEnabled then
                v26 = v_u_6.PlayerGui:WaitForChild("TouchGui").TouchControlFrame:FindFirstChild("JumpButton")
            else
                v26 = nil
            end
            local v27
            if v26 then
                v27 = v26.Size.X.Offset <= 70
            else
                v27 = p25.gui.AbsoluteSize.Y < 600
            end
            p25.smallTouchscreen.Visible = v27
            p25.largeTouchscreen.Visible = not v27
        else
            p25.smallTouchscreen.Visible = false
            p25.largeTouchscreen.Visible = false
        end
    end
    local v28 = workspace.CurrentCamera.ViewportSize
    for _, v29 in pairs(p25.scalingElementsFolder:GetChildren()) do
        p25:updateScale(v29, v28)
    end
    p25.crosshairNormalSize = p25.crosshairFrame.AbsoluteSize
    p25.crosshairBottom.Size = UDim2.new(0, p25.origCrosshairScales[p25.crosshairBottom].X * p25.crosshairNormalSize.X, 0, p25.origCrosshairScales[p25.crosshairBottom].Y * p25.crosshairNormalSize.Y)
    p25.crosshairLeft.Size = UDim2.new(0, p25.origCrosshairScales[p25.crosshairLeft].X * p25.crosshairNormalSize.X, 0, p25.origCrosshairScales[p25.crosshairLeft].Y * p25.crosshairNormalSize.Y)
    p25.crosshairRight.Size = UDim2.new(0, p25.origCrosshairScales[p25.crosshairRight].X * p25.crosshairNormalSize.X, 0, p25.origCrosshairScales[p25.crosshairRight].Y * p25.crosshairNormalSize.Y)
    p25.crosshairTop.Size = UDim2.new(0, p25.origCrosshairScales[p25.crosshairTop].X * p25.crosshairNormalSize.X, 0, p25.origCrosshairScales[p25.crosshairTop].Y * p25.crosshairNormalSize.Y)
end
function v_u_14.getWeightedScaleAmount(p30, p31, p32, p33) -- name: getWeightedScaleAmount
    return (1 - p30.scaleWeight) * p31 * p33 / p32 + p30.scaleWeight * p31
end
function v_u_14.updateScale(p34, p35, p36) -- name: updateScale
    if p35:IsA("GuiObject") then
        local v37 = p35.Size.X.Scale
        local v38 = p35.Size.Y.Scale
        if v37 ~= 0 or (v38 ~= 0 or p34.originalScaleAmounts[p35] ~= nil) then
            if p34.originalScaleAmounts[p35] == nil then
                p34.originalScaleAmounts[p35] = Vector2.new(v37, v38)
            end
            local v39 = p34:getWeightedScaleAmount(p34.originalScaleAmounts[p35].X, p36.X, p34.referenceViewportSize.X)
            local v40 = p34:getWeightedScaleAmount(p34.originalScaleAmounts[p35].Y, p36.Y, p34.referenceViewportSize.Y)
            p35.Size = UDim2.new(v39, 0, v40, 0)
        end
    else
        for _, v41 in ipairs(p35:GetChildren()) do
            p34:updateScale(v41, p36)
        end
    end
end
function v_u_14.setEnabled(p_u_42, p43) -- name: setEnabled
    -- upvalues: (copy) v_u_2
    if p_u_42.enabled ~= p43 then
        p_u_42.enabled = p43
        if p_u_42.enabled then
            p_u_42.connections.renderStepped = v_u_2.RenderStepped:Connect(function(p44)
                -- upvalues: (copy) p_u_42
                p_u_42:onRenderStepped(p44)
            end)
        else
            p_u_42:setZoomed(false)
            for _, v45 in pairs(p_u_42.connections) do
                v45:Disconnect()
            end
            p_u_42.connections = {}
        end
        if p_u_42.gui then
            p_u_42.gui.Enabled = p_u_42.enabled
        end
    end
end
function v_u_14.setCrosshairEnabled(p46, p47) -- name: setCrosshairEnabled
    if p46.crosshairEnabled ~= p47 then
        p46.crosshairEnabled = p47
        if p46.crosshairFrame then
            p46.crosshairFrame.Visible = p46.crosshairEnabled
        end
        if p46.hitMarker then
            p46.hitMarker.ImageTransparency = 1
            p46.hitMarker.Visible = p46.crosshairEnabled
        end
    end
end
function v_u_14.setScopeEnabled(p48, p49) -- name: setScopeEnabled
    -- upvalues: (copy) v_u_3, (copy) v_u_6
    if p48.scopeEnabled ~= p49 then
        p48.scopeEnabled = p49
        if p48.scopeFrame then
            p48.scopeFrame.Visible = p48.scopeEnabled
        end
        local v50
        if v_u_3.TouchEnabled then
            v50 = v_u_6.PlayerGui:WaitForChild("TouchGui").TouchControlFrame:FindFirstChild("JumpButton")
        else
            v50 = nil
        end
        if p48.scopeEnabled then
            p48.smallFireButton.Visible = true
            p48.largeFireButton.Visible = true
            if v50 then
                v50.Visible = false
                return
            end
        else
            p48.smallFireButton.Visible = false
            p48.largeFireButton.Visible = false
            if v50 then
                v50.Visible = true
            end
        end
    end
end
function v_u_14.setCrosshairWeaponScale(p51, p52) -- name: setCrosshairWeaponScale
    if p51.crosshairWeaponScale ~= p52 then
        p51.crosshairWeaponScale = p52
    end
end
function v_u_14.setCrosshairScaleTarget(p53, p54, p55, p56) -- name: setCrosshairScaleTarget
    -- upvalues: (copy) v_u_10
    if typeof(p55) == "number" then
        p53.crosshairDampingRatio = p55
    end
    if typeof(p56) == "number" then
        p53.crosshairFrequency = p56
    end
    if p53.crosshairScaleTarget ~= p54 then
        p53.crosshairScaleTarget = p54
        v_u_10:Target(p53, p53.crosshairDampingRatio, p53.crosshairFrequency, {
            ["crosshairScale"] = p53.crosshairScaleTarget
        })
    end
end
function v_u_14.setCrosshairScale(p57, p58) -- name: setCrosshairScale
    -- upvalues: (copy) v_u_10
    if p57.crosshairScale ~= p58 then
        p57.crosshairScale = p58
        v_u_10:Target(p57, p57.crosshairDampingRatio, p57.crosshairFrequency, {
            ["crosshairScale"] = p57.crosshairScaleTarget
        })
    end
end
function v_u_14.OnHitOtherPlayer(p59, p60, p61) -- name: OnHitOtherPlayer
    -- upvalues: (copy) v_u_5, (copy) v_u_12
    p59.hitMarker.ImageTransparency = 0
    local v62 = TweenInfo.new(0.8)
    v_u_5:Create(p59.hitMarker, v62, {
        ["ImageTransparency"] = 1
    }):Play()
    v_u_12:ShowDamageBillboard(p60, p61.Parent:FindFirstChild("Head"))
end
function v_u_14.onRenderStepped(p63, _) -- name: onRenderStepped
    if p63.enabled then
        if p63.gui then
            if p63.crosshairFrame and p63.crosshairEnabled then
                local v64 = p63.crosshairNormalSize * p63.crosshairScale * p63.crosshairWeaponScale
                p63.crosshairFrame.Size = UDim2.new(0, v64.X, 0, v64.Y)
            end
        end
    else
        return
    end
end
function v_u_14.setZoomed(p65, p66) -- name: setZoomed
    if p66 ~= p65.isZoomed then
        p65.isZoomed = p66
        local v67 = p65.isZoomed and "rbxassetid://2804597178" or "rbxassetid://2804583948"
        local v68 = p65.isZoomed and "rbxassetid://2804599869" or "rbxassetid://2804598866"
        if p65.smallAimButton then
            p65.smallAimButton.Image = v67
            p65.smallAimButton.PressedImage = v68
        end
        if p65.largeAimButton then
            p65.largeAimButton.Image = v67
            p65.largeAimButton.PressedImage = v68
        end
        if p65.weaponsSystem.camera then
            p65.weaponsSystem.camera:setForceZoomed(p65.isZoomed)
        end
    end
end
function v_u_14.onTouchAimButtonActivated(p69) -- name: onTouchAimButtonActivated
    p69:setZoomed(not p69.isZoomed)
end
function v_u_14.onTouchFireButton(p_u_70, p_u_71, _) -- name: onTouchFireButton
    local v_u_72 = p_u_70.weaponsSystem.currentWeapon
    if v_u_72 and (v_u_72.instance and (v_u_72.instance:IsA("Tool") and p_u_71.UserInputState == Enum.UserInputState.Begin)) then
        v_u_72.instance:Activate()
        if p_u_70.smallFireButton then
            p_u_70.smallFireButton.Image = "rbxassetid://2804818076"
        end
        if p_u_70.largeFireButton then
            p_u_70.largeFireButton.Image = "rbxassetid://2804818076"
        end
        p_u_71:GetPropertyChangedSignal("UserInputState"):Connect(function()
            -- upvalues: (copy) p_u_71, (copy) v_u_72, (copy) p_u_70
            if p_u_71.UserInputState == Enum.UserInputState.End then
                v_u_72.instance:Deactivate()
                if p_u_70.smallFireButton then
                    p_u_70.smallFireButton.Image = "rbxassetid://2804818047"
                end
                if p_u_70.largeFireButton then
                    p_u_70.largeFireButton.Image = "rbxassetid://2804818047"
                end
            end
        end)
    end
end
return v_u_14

-- Script Path: game:GetService("ReplicatedStorage").WeaponsSystem.Libraries.BaseWeapon
-- Took 0.02s to decompile.
-- Executor: Delta (1.1.731.944)

local v_u_1 = game:GetService("RunService")
local v_u_2 = game:GetService("Players")
local v_u_3 = v_u_1:IsServer()
local v_u_4 = script.Parent.Parent:WaitForChild("Assets"):WaitForChild("Animations")
local v_u_5 = Random.new()
local v_u_6 = {}
v_u_6.__index = v_u_6
v_u_6.CanAimDownSights = false
v_u_6.CanBeReloaded = false
v_u_6.CanBeFired = false
v_u_6.CanHit = false
function v_u_6.new(p7, p8) -- name: new
    -- upvalues: (copy) v_u_6
    assert(p8, "BaseWeapon.new() requires a valid Instance to be attached to.")
    local v9 = v_u_6
    local v_u_10 = setmetatable({}, v9)
    v_u_10.connections = {}
    v_u_10.descendants = {}
    v_u_10.descendantsRegistered = false
    v_u_10.optionalDescendantNames = {}
    v_u_10.weaponsSystem = p7
    v_u_10.instance = p8
    v_u_10.animController = nil
    v_u_10.player = nil
    v_u_10.enabled = false
    v_u_10.equipped = false
    v_u_10.activated = false
    v_u_10.nextShotId = 1
    v_u_10.activeRenderStepName = nil
    v_u_10.curReloadSound = nil
    v_u_10.animTracks = {}
    v_u_10.sounds = {}
    v_u_10.configValues = {}
    v_u_10.trackedConfigurations = {}
    v_u_10.ammoInWeaponValue = nil
    v_u_10.reloading = false
    v_u_10.canReload = true
    v_u_10:registerDescendants()
    v_u_10.connections.descendantAdded = v_u_10.instance.DescendantAdded:Connect(function(p11)
        -- upvalues: (copy) v_u_10
        v_u_10:onDescendantAdded(p11)
    end)
    return v_u_10
end
function v_u_6.doInitialSetup(p_u_12) -- name: doInitialSetup
    -- upvalues: (copy) v_u_3, (copy) v_u_2
    local v13 = getmetatable(p_u_12)
    p_u_12.instanceIsTool = p_u_12.instance:IsA("Tool")
    p_u_12.connections.childAdded = p_u_12.instance.ChildAdded:Connect(function(p14)
        -- upvalues: (copy) p_u_12
        p_u_12:onChildAdded(p14)
    end)
    p_u_12.connections.childRemoved = p_u_12.instance.ChildRemoved:Connect(function(p15)
        -- upvalues: (copy) p_u_12
        p_u_12:onChildRemoved(p15)
    end)
    for _, v16 in pairs(p_u_12.instance:GetChildren()) do
        p_u_12:onChildAdded(v16)
    end
    if v13.CanBeReloaded then
        if v_u_3 then
            p_u_12.ammoInWeaponValue = p_u_12.instance:FindFirstChild("CurrentAmmo")
            if not p_u_12.ammoInWeaponValue then
                p_u_12.ammoInWeaponValue = Instance.new("IntValue")
                p_u_12.ammoInWeaponValue.Name = "CurrentAmmo"
                p_u_12.ammoInWeaponValue.Value = 0
                p_u_12.ammoInWeaponValue.Parent = p_u_12.instance
            end
            p_u_12.ammoInWeaponValue.Value = p_u_12:getConfigValue("AmmoCapacity", 30)
        else
            p_u_12.ammoInWeaponValue = p_u_12.instance:WaitForChild("CurrentAmmo")
        end
    end
    p_u_12.connections.ancestryChanged = p_u_12.instance.AncestryChanged:Connect(function()
        -- upvalues: (copy) p_u_12
        p_u_12:onAncestryChanged()
    end)
    p_u_12:onAncestryChanged()
    if p_u_12.instanceIsTool then
        p_u_12.connections.equipped = p_u_12.instance.Equipped:Connect(function()
            -- upvalues: (ref) v_u_3, (ref) v_u_2, (copy) p_u_12
            if v_u_3 or v_u_2.LocalPlayer and (p_u_12.instance:IsDescendantOf(v_u_2.LocalPlayer.Backpack) or p_u_12.instance:IsDescendantOf(v_u_2.LocalPlayer.Character)) then
                p_u_12:setEquipped(true)
                if p_u_12:getAmmoInWeapon() <= 0 then
                    coroutine.wrap(function()
                        -- upvalues: (ref) p_u_12
                        wait()
                        p_u_12:reload()
                    end)()
                end
            end
        end)
        p_u_12.connections.unequipped = p_u_12.instance.Unequipped:Connect(function()
            -- upvalues: (ref) v_u_3, (ref) v_u_2, (copy) p_u_12
            if v_u_3 or v_u_2.LocalPlayer and (p_u_12.instance:IsDescendantOf(v_u_2.LocalPlayer.Backpack) or p_u_12.instance:IsDescendantOf(v_u_2.LocalPlayer.Character)) then
                p_u_12:setEquipped(false)
                if p_u_12.reloading then
                    p_u_12:cancelReload()
                end
            end
        end)
        if p_u_12.instance:IsDescendantOf(workspace) and p_u_12.player then
            p_u_12:setEquipped(true)
        end
        p_u_12.connections.activated = p_u_12.instance.Activated:Connect(function()
            -- upvalues: (copy) p_u_12
            p_u_12:setActivated(true)
        end)
        p_u_12.connections.deactivated = p_u_12.instance.Deactivated:Connect(function()
            -- upvalues: (copy) p_u_12
            p_u_12:setActivated(false)
        end)
        if v_u_3 then
            p_u_12.handle = p_u_12.instance:FindFirstChild("Handle")
            local v17 = p_u_12.instance:FindFirstChildOfClass("Model")
            local v18 = v17:FindFirstChild("HandleAttachment", true)
            if p_u_12.handle and v18 then
                local v19 = v17.PrimaryPart.CFrame:toObjectSpace(v18.WorldCFrame)
                local v20 = Instance.new("Weld")
                v20.Name = "HandleWeld"
                v20.Part0 = p_u_12.handle
                v20.Part1 = v17.PrimaryPart
                v20.C0 = CFrame.new()
                v20.C1 = v19
                v20.Parent = p_u_12.handle
                p_u_12.handle.Anchored = false
                v17.PrimaryPart.Anchored = false
            end
        end
    end
end
function v_u_6.registerDescendants(p21) -- name: registerDescendants
    if not p21.instance then
        error("No instance set yet!")
    end
    if p21.descendantsRegistered then
        warn("Descendants already registered!")
    else
        for _, v22 in ipairs(p21.instance:GetDescendants()) do
            if p21.descendants[v22.Name] == nil then
                p21.descendants[v22.Name] = v22
            else
                p21.descendants[v22.Name] = "Multiple"
            end
        end
        p21.descendantsRegistered = true
    end
end
function v_u_6.addOptionalDescendant(p23, p24, p25) -- name: addOptionalDescendant
    if p23.instance == nil then
        error("No instance set yet!")
    end
    if not p23.descendantsRegistered then
        error("Descendants not registered!")
    end
    if p23.descendants[p25] == "Multiple" then
        error("Weapon \"" .. p23.instance.Name .. "\" has multiple descendants named \"" .. p25 .. "\", so you cannot addOptionalDescendant with that descendant name.")
    end
    local v26 = p23.descendants[p25]
    if v26 then
        p23[p24] = v26
    else
        p23.optionalDescendantNames[p25] = p24
    end
end
function v_u_6.onDescendantAdded(p27, p28) -- name: onDescendantAdded
    if p27.descendants[p28.Name] == nil then
        p27.descendants[p28.Name] = p28
    else
        p27.descendants[p28.Name] = "Multiple"
    end
    local v29 = p27.optionalDescendantNames[p28.Name]
    if v29 then
        if p27.descendants[p28.Name] == "Multiple" then
            error("Weapon \"" .. p27.instance.Name .. "\" has multiple descendants named \"" .. p28.Name .. "\", so you cannot addOptionalDependency with that descendant name.")
        end
        p27[v29] = p28
        p27.optionalDescendantNames[p28.Name] = nil
    end
end
function v_u_6.cleanupConnection(p30, ...) -- name: cleanupConnection
    for _, v31 in pairs({ ... }) do
        if typeof(v31) == "string" and p30.connections[v31] then
            p30.connections[v31]:Disconnect()
            p30.connections[v31] = nil
        end
    end
end
function v_u_6.onAncestryChanged(p32) -- name: onAncestryChanged
    -- upvalues: (copy) v_u_2
    if p32.instanceIsTool then
        local v33 = nil
        local v34
        if p32.instance:IsDescendantOf(v_u_2) then
            v34 = p32.instance.Parent.Parent
            if v34 then
                if not v34:IsA("Player") then
                    v34 = v33
                end
            else
                v34 = v33
            end
        elseif p32.instance:IsDescendantOf(workspace) then
            v34 = v_u_2:GetPlayerFromCharacter(p32.instance.Parent)
            if v34 then
                if not v34:IsA("Player") then
                    v34 = v33
                end
            else
                v34 = v33
            end
        else
            v34 = v33
        end
        p32:setPlayer(v34)
    end
end
function v_u_6.setPlayer(p35, p36) -- name: setPlayer
    if p35.player ~= p36 then
        p35.player = p36
    end
end
function v_u_6.setEquipped(p37, p38) -- name: setEquipped
    if p37.equipped ~= p38 then
        p37.equipped = p38
        p37:onEquippedChanged()
        if not p37.equipped then
            p37:stopAnimations()
        end
    end
end
function v_u_6.onEquippedChanged(p_u_39) -- name: onEquippedChanged
    -- upvalues: (copy) v_u_1, (copy) v_u_3, (copy) v_u_2
    if p_u_39.activeRenderStepName then
        v_u_1:UnbindFromRenderStep(p_u_39.activeRenderStepName)
        p_u_39.activeRenderStepName = nil
    end
    p_u_39:cleanupConnection("localStepped")
    if not v_u_3 and p_u_39.weaponsSystem then
        p_u_39.weaponsSystem.setWeaponEquipped(p_u_39, p_u_39.equipped)
        if p_u_39.equipped then
            if p_u_39.player == v_u_2.LocalPlayer then
                v_u_1:BindToRenderStep(p_u_39.instance:GetFullName(), Enum.RenderPriority.Input.Value, function(p40)
                    -- upvalues: (copy) p_u_39
                    p_u_39:onRenderStepped(p40)
                end)
                p_u_39.activeRenderStepName = p_u_39.instance:GetFullName()
            end
            p_u_39.connections.localStepped = v_u_1.Heartbeat:Connect(function(p41)
                -- upvalues: (copy) p_u_39
                p_u_39:onStepped(p41)
            end)
        end
    end
    if p_u_39.instanceIsTool then
        for _, v42 in pairs(p_u_39.instance:GetDescendants()) do
            if v42:IsA("BasePart") then
                local v43
                if v42 == p_u_39.handle then
                    v43 = false
                else
                    v43 = not p_u_39.equipped
                end
                v42.CanCollide = v43
            end
        end
    end
    p_u_39:setActivated(false)
end
function v_u_6.setActivated(p44, p45, p46) -- name: setActivated
    -- upvalues: (copy) v_u_3, (copy) v_u_2
    if v_u_3 or (not p46 or p44.player ~= v_u_2.LocalPlayer) then
        if p44.activated ~= p45 then
            p44.activated = p45
            if v_u_3 and not p46 then
                p44.weaponsSystem.getRemoteEvent("WeaponActivated"):FireAllClients(p44.player, p44.instance, p44.activated)
            end
            p44:onActivatedChanged()
        end
    else
        return
    end
end
function v_u_6.onActivatedChanged(_) -- name: onActivatedChanged end
function v_u_6.renderFire(_, _) -- name: renderFire end
function v_u_6.simulateFire(_, _) -- name: simulateFire end
function v_u_6.isOwnerAlive(p47) -- name: isOwnerAlive
    local v48 = p47.instance:IsA("Tool") and p47.instance.Parent:FindFirstChildOfClass("Humanoid")
    return not v48 and true or v48:GetState() ~= Enum.HumanoidStateType.Dead
end
function v_u_6.fire(p49, p50, p51, p52) -- name: fire
    -- upvalues: (copy) v_u_3
    if p49:isOwnerAlive() and not p49.reloading then
        if p49:useAmmo(1) <= 0 then
            p49:reload()
            return
        else
            local v53 = {
                ["origin"] = p50,
                ["dir"] = p51,
                ["charge"] = math.clamp(p52 or 1, 0, 1),
                ["id"] = p49.nextShotId
            }
            p49.nextShotId = p49.nextShotId + 1
            if v_u_3 then
                p49:onFired(p49.player, v53, false)
            else
                p49:onFired(p49.player, v53, false)
                p49.weaponsSystem.getRemoteEvent("WeaponFired"):FireServer(p49.instance, v53)
            end
        end
    else
        return
    end
end
function v_u_6.onFired(p54, p55, p56, p57) -- name: onFired
    -- upvalues: (copy) v_u_3, (copy) v_u_2
    if v_u_3 then
        if p54:useAmmo(1) > 0 then
            p54.weaponsSystem.getRemoteEvent("WeaponFired"):FireAllClients(p55, p54.instance, p56)
        end
    elseif p55 == v_u_2.LocalPlayer and p57 then
        return
    elseif p55 and (p55.character and (p55.character.Humanoid and p55.character:FindFirstChild("HumanoidRootPart"))) then
        p54:simulateFire(p55, p56)
    end
end
function v_u_6.getConfigValue(p58, p59, p60) -- name: getConfigValue
    if p58.configValues[p59] == nil then
        return p60
    else
        return p58.configValues[p59]
    end
end
function v_u_6.tryPlaySound(p61, p62, p63) -- name: tryPlaySound
    -- upvalues: (copy) v_u_5
    local v64 = p63 or 0
    local v65 = p61.sounds[p62]
    if not v65 then
        v65 = p61.instance:FindFirstChild(p62, true)
        p61.sounds[p62] = v65
    end
    if v65 then
        local v_u_66 = v65:Clone()
        v_u_66.PlaybackSpeed = v_u_66.PlaybackSpeed + v_u_5:NextNumber(-v64 * 0.5, v64 * 0.5)
        v_u_66.Parent = v65.Parent
        v_u_66:Play()
        coroutine.wrap(function()
            -- upvalues: (copy) v_u_66
            wait(v_u_66.TimeLength / v_u_66.PlaybackSpeed)
            v_u_66:Destroy()
        end)()
        return v_u_66
    end
end
function v_u_6.getSound(p67, p68) -- name: getSound
    local v69 = p67.sounds[p68]
    if not v69 then
        v69 = p67.instance:FindFirstChild(p68, true)
        p67.sounds[p68] = v69
    end
    return v69
end
function v_u_6.onDestroyed(_) -- name: onDestroyed end
function v_u_6.onConfigValueAdded(p_u_70, p_u_71) -- name: onConfigValueAdded
    local v_u_72 = p_u_71.Name
    local v73 = p_u_71.Value
    p_u_70.configValues[v_u_72] = v73
    p_u_70:onConfigValueChanged(v_u_72, v73, nil)
    p_u_70.connections["valueChanged:" .. v_u_72] = p_u_71.Changed:Connect(function(p74)
        -- upvalues: (copy) p_u_70, (copy) v_u_72
        local v75 = p_u_70.configValues[v_u_72]
        p_u_70.configValues[v_u_72] = p74
        p_u_70:onConfigValueChanged(v_u_72, p74, v75)
    end)
    p_u_70.connections["valueRenamed:" .. v_u_72] = p_u_71:GetPropertyChangedSignal("Name"):Connect(function()
        -- upvalues: (copy) p_u_70, (copy) v_u_72, (copy) p_u_71
        p_u_70.configValues[v_u_72] = nil
        p_u_70:cleanupConnection("valueChanged:" .. v_u_72)
        p_u_70:cleanupConnection("valueRenamed:" .. v_u_72)
        p_u_70:onConfigValueAdded(p_u_71)
    end)
end
function v_u_6.onConfigValueRemoved(p76, p77) -- name: onConfigValueRemoved
    local v78 = p77.Name
    p76.configValues[v78] = nil
    p76:cleanupConnection("valueChanged:" .. v78)
    p76:cleanupConnection("valueRenamed:" .. v78)
end
function v_u_6.importConfiguration(p79, p80) -- name: importConfiguration
    if not (p80 and p80:IsA("Configuration")) then
        for _, v81 in pairs(p80:GetChildren()) do
            if v81:IsA("ValueBase") then
                local v82 = v81.Name
                local v83 = v81.Value
                local v84 = p79.configValues[v82]
                p79.configValues[v82] = v83
                p79:onConfigValueChanged(v82, v83, v84)
            end
        end
    end
end
function v_u_6.setConfiguration(p_u_85, p86) -- name: setConfiguration
    p_u_85:cleanupConnection("configChildAdded", "configChildRemoved")
    if p86 and p86:IsA("Configuration") then
        for _, v87 in pairs(p86:GetChildren()) do
            if v87:IsA("ValueBase") then
                p_u_85:onConfigValueAdded(v87)
            end
        end
        p_u_85.connections.configChildAdded = p86.ChildAdded:Connect(function(p88)
            -- upvalues: (copy) p_u_85
            if p88:IsA("ValueBase") then
                p_u_85:onConfigValueAdded(p88)
            end
        end)
        p_u_85.connections.configChildRemoved = p86.ChildRemoved:Connect(function(p89)
            -- upvalues: (copy) p_u_85
            if p89:IsA("ValueBase") then
                p_u_85:onConfigValueRemoved(p89)
            end
        end)
    end
end
function v_u_6.onChildAdded(p90, p91) -- name: onChildAdded
    if p91:IsA("Configuration") then
        p90:setConfiguration(p91)
    end
end
function v_u_6.onChildRemoved(p92, p93) -- name: onChildRemoved
    if p93:IsA("Configuration") then
        p92:setConfiguration(nil)
    end
end
function v_u_6.onConfigValueChanged(_, _, _, _) -- name: onConfigValueChanged end
function v_u_6.onRenderStepped(_, _) -- name: onRenderStepped end
function v_u_6.onStepped(_, _) -- name: onStepped end
function v_u_6.getAnimationController(p94) -- name: getAnimationController
    -- upvalues: (copy) v_u_3
    if p94.animController and (not p94.instanceIsTool or p94.animController.Parent and p94.animController.Parent:IsAncestorOf(p94.instance)) then
        return p94.animController
    end
    p94:setAnimationController(nil)
    if p94.instanceIsTool then
        local v95 = v_u_3 and p94.instance.Parent:FindFirstChildOfClass("Humanoid") or p94.instance.Parent:WaitForChild("Humanoid", (1 / 0))
        local v96
        if v95 then
            v96 = nil
        else
            v96 = p94.instance.Parent:FindFirstChildOfClass("AnimationController")
        end
        p94:setAnimationController(v95 or v96)
        return p94.animController
    end
end
function v_u_6.setAnimationController(p97, p98) -- name: setAnimationController
    if p98 ~= p97.animController then
        p97:stopAnimations()
        p97.animController = p98
    end
end
function v_u_6.stopAnimations(p99) -- name: stopAnimations
    for _, v100 in pairs(p99.animTracks) do
        if v100.IsPlaying then
            v100:Stop()
        end
    end
    p99.animTracks = {}
end
function v_u_6.getAnimTrack(p101, p102) -- name: getAnimTrack
    -- upvalues: (copy) v_u_4
    local v103 = p101.animTracks[p102]
    if not v103 then
        local v104 = p101:getAnimationController()
        if not v104 then
            warn("No animation controller when trying to play ", p102)
            return nil
        end
        local v105 = v_u_4:FindFirstChild(p102)
        if not v105 then
            error(string.format("No such animation \"%s\" ", (tostring(p102))))
        end
        v103 = v104:LoadAnimation(v105)
        p101.animTracks[p102] = v103
    end
    return v103
end
function v_u_6.reload(p106, p107, p108) -- name: reload
    -- upvalues: (copy) v_u_3, (copy) v_u_2
    if p106.equipped and (not p106.reloading and (p106.canReload and p106:getAmmoInWeapon() ~= p106:getConfigValue("AmmoCapacity", 30))) then
        if v_u_3 then
            p106:onReloaded(p107, p108)
            p106.weaponsSystem.getRemoteEvent("WeaponReloaded"):FireAllClients(p107, p106.instance)
            return
        elseif p106.player == nil or p106.player == v_u_2.LocalPlayer then
            p106.weaponsSystem.getRemoteEvent("WeaponReloadRequest"):FireServer(p106.instance)
            p106:onReloaded(p106.player)
        end
    else
        return false
    end
end
function v_u_6.onReloaded(p_u_109, p110, p111) -- name: onReloaded
    -- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_1
    if p111 and p110 == v_u_2.LocalPlayer then
        return
    else
        p_u_109.reloading = true
        p_u_109.canReload = false
        if not v_u_3 then
            local v112 = p_u_109:getConfigValue("ReloadAnimation", "RifleReload")
            if v112 then
                p_u_109.reloadTrack = p_u_109:getAnimTrack(v112)
                if p_u_109.reloadTrack then
                    p_u_109.reloadTrack:Play()
                end
            end
            p_u_109.curReloadSound = p_u_109:tryPlaySound("Reload", nil)
            if p_u_109.curReloadSound then
                p_u_109.curReloadSound.Ended:Connect(function()
                    -- upvalues: (copy) p_u_109
                    p_u_109.curReloadSound = nil
                end)
            end
        end
        local v_u_113 = p_u_109:getConfigValue("ReloadTime", 2)
        local v_u_114 = tick()
        if p_u_109.connections.reload == nil then
            p_u_109.connections.reload = v_u_1.Heartbeat:Connect(function()
                -- upvalues: (copy) p_u_109, (copy) v_u_114, (copy) v_u_113
                if not p_u_109.reloading and p_u_109.connections.reload then
                    p_u_109.connections.reload:Disconnect()
                    p_u_109.connections.reload = nil
                end
                if tick() >= v_u_114 + v_u_113 then
                    if p_u_109.ammoInWeaponValue then
                        p_u_109.ammoInWeaponValue.Value = p_u_109:getConfigValue("AmmoCapacity", 30)
                    end
                    if p_u_109.connections.reload then
                        p_u_109.connections.reload:Disconnect()
                        p_u_109.connections.reload = nil
                    end
                    p_u_109.reloading = false
                    p_u_109.canReload = false
                end
            end)
        end
    end
end
function v_u_6.cancelReload(p115, p116, p117) -- name: cancelReload
    -- upvalues: (copy) v_u_2, (copy) v_u_3
    if p115.reloading then
        if not p117 or p116 ~= v_u_2.LocalPlayer then
            if v_u_3 or (p117 or p116 ~= v_u_2.LocalPlayer) then
                if v_u_3 and p117 then
                    p115.weaponsSystem.getRemoteEvent("WeaponReloadCanceled"):FireAllClients(p116, p115.instance)
                end
            else
                p115.weaponsSystem.getRemoteEvent("WeaponReloadCanceled"):FireServer(p115.instance)
            end
            p115.reloading = false
            p115.canReload = true
            if not v_u_3 and (p115.reloadTrack and p115.reloadTrack.IsPlaying) then
                warn("Stopping reloadTrack")
                p115.reloadTrack:Stop()
            end
            if p115.curReloadSound then
                p115.curReloadSound:Stop()
                p115.curReloadSound:Destroy()
                p115.curReloadSound = nil
            end
        end
    else
        return
    end
end
function v_u_6.getAmmoInWeapon(p118) -- name: getAmmoInWeapon
    return not p118.ammoInWeaponValue and 0 or p118.ammoInWeaponValue.Value
end
function v_u_6.useAmmo(p119, p120) -- name: useAmmo
    if not p119.ammoInWeaponValue then
        return 0
    end
    local v121 = p119.ammoInWeaponValue.Value
    local v122 = math.min(p120, v121)
    p119.ammoInWeaponValue.Value = p119.ammoInWeaponValue.Value - v122
    p119.canReload = true
    return v122
end
function v_u_6.renderCharge(_) -- name: renderCharge end
return v_u_6

-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.ClientWeaponsScript
-- Took 0s to decompile.
-- Executor: Delta (1.1.731.944)

local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = game:GetService("UserInputService")
local v_u_3 = game:GetService("RunService")
local v_u_4 = game:GetService("Players")
local v_u_5 = nil
local v_u_6 = nil
local v_u_7 = nil
local v_u_8 = nil
local function v_u_20() -- name: setupWeaponsSystem
    -- upvalues: (ref) v_u_8, (copy) v_u_3, (copy) v_u_2, (copy) v_u_4
    local v_u_9 = require(v_u_8.WeaponsSystem)
    if not (v_u_9.doingSetup or v_u_9.didSetup) then
        v_u_9.setup()
        v_u_3.Heartbeat:Wait()
        local v10 = workspace.CurrentCamera
        if v10 then
            v10.CameraType = Enum.CameraType.Custom
            v10.FieldOfView = 70
            v_u_2.MouseBehavior = Enum.MouseBehavior.Default
            v_u_2.MouseIconEnabled = true
            local v11 = v_u_4.LocalPlayer
            local v12 = v11.Character and v11.Character:FindFirstChildOfClass("Humanoid")
            if v12 then
                v10.CameraSubject = v12
            end
        end
        if v_u_9.camera then
            v_u_9.camera.mouseLocked = false
            v_u_9.camera:setEnabled(false)
            v_u_9.camera:setZoomedFromInput(false)
            v_u_9.camera:setForceZoomed(false)
        end
        if v_u_9.gui then
            v_u_9.gui:setEnabled(false)
            v_u_9.gui:setZoomed(false)
        end
        v_u_9.CurrentWeaponChanged.Event:Connect(function(p13, _)
            -- upvalues: (copy) v_u_9, (ref) v_u_2, (ref) v_u_4
            if v_u_9.camera then
                if p13 then
                    v_u_9.camera.mouseLocked = true
                    return
                end
                v_u_9.camera.mouseLocked = false
                local v14 = workspace.CurrentCamera
                if v14 then
                    v14.CameraType = Enum.CameraType.Custom
                    v14.FieldOfView = 70
                    v_u_2.MouseBehavior = Enum.MouseBehavior.Default
                    v_u_2.MouseIconEnabled = true
                    local v15 = v_u_4.LocalPlayer
                    local v16 = v15.Character and v15.Character:FindFirstChildOfClass("Humanoid")
                    if v16 then
                        v14.CameraSubject = v16
                    end
                end
            end
        end)
        v_u_4.LocalPlayer.CharacterAdded:Connect(function(_)
            -- upvalues: (ref) v_u_2, (ref) v_u_4, (copy) v_u_9
            wait(0.1)
            local v17 = workspace.CurrentCamera
            if v17 then
                v17.CameraType = Enum.CameraType.Custom
                v17.FieldOfView = 70
                v_u_2.MouseBehavior = Enum.MouseBehavior.Default
                v_u_2.MouseIconEnabled = true
                local v18 = v_u_4.LocalPlayer
                local v19 = v18.Character and v18.Character:FindFirstChildOfClass("Humanoid")
                if v19 then
                    v17.CameraSubject = v19
                end
            end
            if v_u_9.camera then
                v_u_9.camera:setEnabled(false)
                v_u_9.camera.mouseLocked = false
            end
        end)
    end
end
local function v22(p21) -- name: onReplicatedStorageChildAdded
    -- upvalues: (ref) v_u_8, (copy) v_u_20, (ref) v_u_6
    if p21.Name == "WeaponsSystem" then
        v_u_8 = p21
        v_u_20()
        v_u_6:Disconnect()
    end
end
local function v24(p23) -- name: onPlayerChildAdded
    -- upvalues: (ref) v_u_7, (ref) v_u_5
    if p23.Name == "PlayerScripts" then
        v_u_7.Parent = p23
        v_u_5:Disconnect()
    end
end
if script.Parent.Name == "PlayerScripts" then
    v_u_8 = v1:FindFirstChild("WeaponsSystem")
    if v_u_8 == nil then
        v_u_6 = v1.ChildAdded:Connect(v22)
    else
        v_u_20()
    end
else
    v_u_7 = script:Clone()
    local v25 = script.Parent.Parent:FindFirstChild("PlayerScripts")
    if v25 == nil then
        v_u_5 = script.Parent.Parent.ChildAdded:Connect(v24)
    else
        v_u_7.Parent = v25
    end
end

-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerGui.ClientWeaponsScript
-- Took 0s to decompile.
-- Executor: Delta (1.1.731.944)

local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = game:GetService("UserInputService")
local v_u_3 = game:GetService("RunService")
local v_u_4 = game:GetService("Players")
local v_u_5 = nil
local v_u_6 = nil
local v_u_7 = nil
local v_u_8 = nil
local function v_u_20() -- name: setupWeaponsSystem
    -- upvalues: (ref) v_u_8, (copy) v_u_3, (copy) v_u_2, (copy) v_u_4
    local v_u_9 = require(v_u_8.WeaponsSystem)
    if not (v_u_9.doingSetup or v_u_9.didSetup) then
        v_u_9.setup()
        v_u_3.Heartbeat:Wait()
        local v10 = workspace.CurrentCamera
        if v10 then
            v10.CameraType = Enum.CameraType.Custom
            v10.FieldOfView = 70
            v_u_2.MouseBehavior = Enum.MouseBehavior.Default
            v_u_2.MouseIconEnabled = true
            local v11 = v_u_4.LocalPlayer
            local v12 = v11.Character and v11.Character:FindFirstChildOfClass("Humanoid")
            if v12 then
                v10.CameraSubject = v12
            end
        end
        if v_u_9.camera then
            v_u_9.camera.mouseLocked = false
            v_u_9.camera:setEnabled(false)
            v_u_9.camera:setZoomedFromInput(false)
            v_u_9.camera:setForceZoomed(false)
        end
        if v_u_9.gui then
            v_u_9.gui:setEnabled(false)
            v_u_9.gui:setZoomed(false)
        end
        v_u_9.CurrentWeaponChanged.Event:Connect(function(p13, _)
            -- upvalues: (copy) v_u_9, (ref) v_u_2, (ref) v_u_4
            if v_u_9.camera then
                if p13 then
                    v_u_9.camera.mouseLocked = true
                    return
                end
                v_u_9.camera.mouseLocked = false
                local v14 = workspace.CurrentCamera
                if v14 then
                    v14.CameraType = Enum.CameraType.Custom
                    v14.FieldOfView = 70
                    v_u_2.MouseBehavior = Enum.MouseBehavior.Default
                    v_u_2.MouseIconEnabled = true
                    local v15 = v_u_4.LocalPlayer
                    local v16 = v15.Character and v15.Character:FindFirstChildOfClass("Humanoid")
                    if v16 then
                        v14.CameraSubject = v16
                    end
                end
            end
        end)
        v_u_4.LocalPlayer.CharacterAdded:Connect(function(_)
            -- upvalues: (ref) v_u_2, (ref) v_u_4, (copy) v_u_9
            wait(0.1)
            local v17 = workspace.CurrentCamera
            if v17 then
                v17.CameraType = Enum.CameraType.Custom
                v17.FieldOfView = 70
                v_u_2.MouseBehavior = Enum.MouseBehavior.Default
                v_u_2.MouseIconEnabled = true
                local v18 = v_u_4.LocalPlayer
                local v19 = v18.Character and v18.Character:FindFirstChildOfClass("Humanoid")
                if v19 then
                    v17.CameraSubject = v19
                end
            end
            if v_u_9.camera then
                v_u_9.camera:setEnabled(false)
                v_u_9.camera.mouseLocked = false
            end
        end)
    end
end
local function v22(p21) -- name: onReplicatedStorageChildAdded
    -- upvalues: (ref) v_u_8, (copy) v_u_20, (ref) v_u_6
    if p21.Name == "WeaponsSystem" then
        v_u_8 = p21
        v_u_20()
        v_u_6:Disconnect()
    end
end
local function v24(p23) -- name: onPlayerChildAdded
    -- upvalues: (ref) v_u_7, (ref) v_u_5
    if p23.Name == "PlayerScripts" then
        v_u_7.Parent = p23
        v_u_5:Disconnect()
    end
end
if script.Parent.Name == "PlayerScripts" then
    v_u_8 = v1:FindFirstChild("WeaponsSystem")
    if v_u_8 == nil then
        v_u_6 = v1.ChildAdded:Connect(v22)
    else
        v_u_20()
    end
else
    v_u_7 = script:Clone()
    local v25 = script.Parent.Parent:FindFirstChild("PlayerScripts")
    if v25 == nil then
        v_u_5 = script.Parent.Parent.ChildAdded:Connect(v24)
    else
        v_u_7.Parent = v25
    end
end
