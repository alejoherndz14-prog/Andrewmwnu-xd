game:GetService("ReplicatedStorage").Remotes.WeaponEvent
game:GetService("ReplicatedStorage").Remotes.EquipGun
game:GetService("ReplicatedStorage").Remotes.CamoEvent
game:GetService("ReplicatedStorage").Remotes.AttachEvent
game:GetService("ReplicatedStorage").Blaster.Objects.CharacterImpact.CircleEmitter
game:GetService("ReplicatedStorage").Blaster.Objects.CharacterImpact.SparkEmitter
game:GetService("ReplicatedStorage").Blaster.Objects.EnvironmentImpact.CircleEmitter
game:GetService("ReplicatedStorage").Blaster.Objects.EnvironmentImpact.SparkEmitter
game:GetService("ReplicatedStorage").Blaster.Objects.LaserBeam.StartAttachment
game:GetService("ReplicatedStorage").Blaster.Objects.LaserBeam.OtherBeam
game:GetService("ReplicatedStorage").Blaster.Objects.LaserBeam.EndAttachment
game:GetService("ReplicatedStorage").Blaster.Objects.LaserBeam.CoreBeam
game:GetService("ReplicatedStorage").Blaster.Objects.CharacterImpact
game:GetService("ReplicatedStorage").Blaster.Objects.EnvironmentImpact
game:GetService("ReplicatedStorage").Blaster.Objects.LaserBeam
game:GetService("ReplicatedStorage").Blaster.Remotes.ReplicateShot
game:GetService("ReplicatedStorage").Blaster.Remotes.Shoot
game:GetService("ReplicatedStorage").Blaster.Remotes.Reload
game:GetService("ReplicatedStorage").Blaster.Remotes.FireRocket
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Utility.drawRayResults
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

require(script.Parent.castRays)
local v_u_1 = require(script.Parent.Parent.Effects.laserBeamEffect)
local v_u_2 = require(script.Parent.Parent.Effects.impactEffect)
local v_u_3 = require(script.Parent.getBlasterColor)
return function(p4, p5, p6) -- name: drawRayResults
    -- upvalues: (copy) v_u_3, (copy) v_u_1, (copy) v_u_2
    local v7 = v_u_3(p6)
    for _, v8 in p5 do
        v_u_1(p4, v8.position, v7)
        if v8.instance then
            v_u_2(v8.position, v8.normal, v8.taggedHumanoid ~= nil, v7)
        end
    end
end
-- Script Path: game:GetService("CorePackages").Workspace.Packages._Workspace.InGameAssetReporting.InGameAssetReporting.Flags.GetFIntIGARRaycastTargetCount
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

game:DefineFastInt("IGARRaycastTargetCount", 250)
return function()
    return game:GetFastInt("IGARRaycastTargetCount")
end
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Effects.impactEffect
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = game:GetService("Workspace")
local v_u_3 = v1.Blaster.Objects.EnvironmentImpact
local v_u_4 = v1.Blaster.Objects.CharacterImpact
return function(p5, p6, p7, p8) -- name: impactEffect
    -- upvalues: (copy) v_u_4, (copy) v_u_2, (copy) v_u_3
    local v_u_9
    if p7 then
        v_u_9 = v_u_4:Clone()
        v_u_9.CFrame = CFrame.lookAlong(p5, p6)
        v_u_9.Parent = v_u_2
        local v10 = v_u_9
        if p8 then
            local v11 = ColorSequence.new(p8)
            local v12 = v10:FindFirstChild("SparkEmitter")
            local v13 = v10:FindFirstChild("CircleEmitter")
            if v12 then
                v12.Color = v11
            end
            if v13 then
                v13.Color = v11
            end
        end
        v_u_9.SparkEmitter:Emit(10)
        v_u_9.CircleEmitter:Emit(2)
    else
        v_u_9 = v_u_3:Clone()
        v_u_9.CFrame = CFrame.lookAlong(p5, p6)
        v_u_9.Parent = v_u_2
        local v14 = v_u_9
        if p8 then
            local v15 = ColorSequence.new(p8)
            local v16 = v14:FindFirstChild("SparkEmitter")
            local v17 = v14:FindFirstChild("CircleEmitter")
            if v16 then
                v16.Color = v15
            end
            if v17 then
                v17.Color = v15
            end
        end
        v_u_9.SparkEmitter:Emit(10)
        v_u_9.CircleEmitter:Emit(2)
    end
    task.delay(0.5, function()
        -- upvalues: (ref) v_u_9
        v_u_9:Destroy()
    end)
end
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Effects.laserBeamEffect
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = game:GetService("TweenService")
local v_u_3 = game:GetService("Workspace")
local v_u_4 = require(v1.Blaster.Constants)
local v_u_5 = v1.Blaster.Objects.LaserBeam
return function(p6, p7, p8) -- name: laserBeamEffect
    -- upvalues: (copy) v_u_4, (copy) v_u_5, (copy) v_u_3, (copy) v_u_2
    local v9 = (p6 - p7).Magnitude
    local v10 = v9 / v_u_4.LASER_BEAM_VISUAL_SPEED
    local v11 = TweenInfo.new(v10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local v_u_12 = v_u_5:Clone()
    v_u_12.CFrame = CFrame.lookAt(p6, p7)
    v_u_12.StartAttachment.Position = Vector3.new(0, 0, 0)
    local v13 = v_u_12.EndAttachment
    local v14 = -v9
    v13.Position = Vector3.new(0, 0, v14)
    if p8 then
        local v15 = ColorSequence.new(p8)
        local v16 = v_u_12:FindFirstChild("CoreBeam")
        local v17 = v_u_12:FindFirstChild("OtherBeam")
        if v16 then
            v16.Color = v15
        end
        if v17 then
            v17.Color = v15
        end
    end
    v_u_12.Parent = v_u_3
    local v18 = v_u_2:Create(v_u_12.StartAttachment, v11, {
        ["Position"] = v_u_12.EndAttachment.Position
    })
    v18:Play()
    v18.Completed:Once(function()
        -- upvalues: (copy) v_u_12
        v_u_12:Destroy()
    end)
end
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Utility.canPlayerDamageHumanoid
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

local v_u_1 = game:GetService("Players")
return function(p2, p3) -- name: canPlayerDamageHumanoid
    -- upvalues: (copy) v_u_1
    if p3.Health <= 0 then
        return false
    end
    local v4 = v_u_1:GetPlayerFromCharacter(p3.Parent)
    if not v4 then
        return true
    end
    if (v4:GetAttribute("PhantomUntil") or 0) > workspace:GetServerTimeNow() then
        return false
    end
    local v5 = p2:GetAttribute("RoundRole") or ""
    local v6 = v4:GetAttribute("RoundRole") or ""
    return v5 == "Seeker" and v6 == "Hider"
end
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Utility.getRayDirections
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

return function(p1, p2, p3, p4) -- name: getRayDirections
    local v5 = Random.new(p4 * 100000)
    local v6 = {}
    for _ = 1, p2 do
        local v7 = v5:NextNumber() * 3.141592653589793 * 2
        local v8 = v5:NextNumber() * p3
        local v9 = (p1 * CFrame.Angles(0, 0, v7) * CFrame.Angles(v8, 0, 0)).LookVector
        table.insert(v6, v9)
    end
    return v6
end
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Utility.castRays
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

local v_u_1 = game:GetService("Players")
local v_u_2 = game:GetService("CollectionService")
local v3 = game:GetService("ReplicatedStorage")
local v_u_4 = game:GetService("Workspace")
local v_u_5 = require(v3.Blaster.Constants)
local v_u_6 = require(v3.Blaster.Utility.canPlayerDamageHumanoid)
local function v_u_11(p7, p8) -- name: isSeekerShootingSeeker
    -- upvalues: (copy) v_u_1
    if p7:GetAttribute("RoundRole") == "Seeker" then
        local v9 = p8.Parent
        if v9 then
            if v9:FindFirstChildOfClass("Humanoid") then
                local v10 = v_u_1:GetPlayerFromCharacter(v9)
                if v10 and v10 ~= p7 then
                    return v10:GetAttribute("RoundRole") == "Seeker"
                else
                    return false
                end
            else
                return false
            end
        else
            return false
        end
    else
        return false
    end
end
return function(p12, p13, p14, p15, p16) -- name: castRays
    -- upvalues: (copy) v_u_2, (copy) v_u_5, (copy) v_u_4, (copy) v_u_11, (copy) v_u_6
    local v17 = v_u_2:GetTagged(v_u_5.RAY_EXCLUDE_TAG)
    if p16 then
        local v18 = v_u_2:GetTagged(v_u_5.NON_STATIC_TAG)
        table.move(v18, 1, #v18, #v17 + 1, v17)
    end
    if p12.Character then
        local v19 = p12.Character
        table.insert(v17, v19)
    end
    local v20
    if p12.Team and not p12.Neutral then
        v20 = p12.Team.Name
    else
        v20 = nil
    end
    local v21 = RaycastParams.new()
    v21.FilterType = Enum.RaycastFilterType.Exclude
    v21.IgnoreWater = true
    v21.FilterDescendantsInstances = v17
    if v20 then
        v21.CollisionGroup = v20
    end
    local v22 = {}
    for _, v23 in p14 do
        local v24 = v_u_4:Spherecast(p13, p15, v23, v21)
        local v25 = v21
        while v24 and v_u_11(p12, v24.Instance) do
            local v26 = v24.Instance.Parent
            local v27 = table.clone(v21.FilterDescendantsInstances)
            table.insert(v27, v26)
            v21 = RaycastParams.new()
            v21.FilterType = Enum.RaycastFilterType.Exclude
            v21.IgnoreWater = true
            v21.FilterDescendantsInstances = v27
            if v20 then
                v21.CollisionGroup = v20
            end
            v24 = v_u_4:Spherecast(p13, p15, v23, v21)
        end
        local v28 = {
            ["position"] = p13 + v23,
            ["normal"] = v23.Unit
        }
        if v24 then
            v28.position = v24.Position
            v28.normal = v24.Normal
            v28.instance = v24.Instance
            local v29 = v24.Instance.Parent:FindFirstChildOfClass("Humanoid")
            local v30
            if v29 then
                v30 = v29
            else
                local v31 = v_u_4:Raycast(p13, v23, v21)
                v30 = v31 and v31.Instance.Parent
                if v30 then
                    v30 = v31.Instance.Parent:FindFirstChildOfClass("Humanoid")
                end
                if v30 then
                    v28.position = v31.Position
                    v28.normal = v31.Normal
                    v28.instance = v31.Instance
                else
                    v30 = v29
                end
            end
            local v32
            if v30 then
                v32 = v30
            else
                local v33 = table.clone(v21.FilterDescendantsInstances)
                local v34 = v24.Instance
                table.insert(v33, v34)
                local v35 = RaycastParams.new()
                v35.FilterType = Enum.RaycastFilterType.Exclude
                v35.IgnoreWater = true
                v35.FilterDescendantsInstances = v33
                if v20 then
                    v35.CollisionGroup = v20
                end
                local v36 = v_u_4:Raycast(v24.Position + v23.Unit * 0.05, v23.Unit * 3, v35)
                v32 = v36 and v36.Instance.Parent
                if v32 then
                    v32 = v36.Instance.Parent:FindFirstChildOfClass("Humanoid")
                end
                if v32 then
                    v28.position = v36.Position
                    v28.normal = v36.Normal
                    v28.instance = v36.Instance
                else
                    v32 = v30
                end
            end
            if v32 and v_u_6(p12, v32) then
                v28.taggedHumanoid = v32
            end
        end
        table.insert(v22, v28)
        v21 = v25
    end
    return v22
end
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Scripts.ShotReplication
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = require(script.Parent.Parent.Utility.drawRayResults)
local v_u_3 = require(script.Parent.Parent.Utility.getBlasterColor)
require(script.Parent.Parent.Utility.castRays)
local v_u_4 = require(script.Parent.Parent.Utility.playRandomSoundFromSource)
local v_u_5 = require(script.Parent.Parent.Utility.playSoundFromSource)
local v_u_6 = {}
local function v_u_18(p_u_7, p_u_8, p_u_9) -- name: updateShootLoop
    -- upvalues: (copy) v_u_6, (copy) v_u_5
    local v_u_10 = v_u_6[p_u_7]
    if not v_u_10 then
        v_u_10 = {
            ["lastShot"] = 0
        }
        v_u_6[p_u_7] = v_u_10
    end
    v_u_10.lastShot = os.clock()
    if not v_u_10.loop then
        local v11 = p_u_8.ShootLoop:Clone()
        v11.Looping = true
        v11.Parent = p_u_9
        local v12 = Instance.new("Wire")
        v12.SourceInstance = v11
        v12.TargetInstance = p_u_9
        v12.Parent = v11
        v11:Play()
        v_u_10.loop = v11
        task.spawn(function()
            -- upvalues: (copy) p_u_7, (ref) v_u_10, (ref) v_u_6, (copy) p_u_8, (ref) v_u_5, (copy) p_u_9
            local v13 = p_u_7
            local v14 = 60 / (tonumber(v13:GetAttribute("rateOfFire")) or 600) * 4
            local v15 = math.max(0.3, v14)
            while v_u_10.loop do
                task.wait(0.1)
                local v16 = p_u_7:IsDescendantOf(game)
                if not v16 or v15 < os.clock() - v_u_10.lastShot then
                    v_u_10.loop:Destroy()
                    v_u_10.loop = nil
                    v_u_6[p_u_7] = nil
                    if v16 then
                        local v17 = p_u_8:FindFirstChild("Winddown")
                        if v17 then
                            v_u_5(v17, p_u_9)
                        end
                    end
                end
            end
        end)
    end
end
v1.Blaster.Remotes.ReplicateShot.OnClientEvent:Connect(function(p19, p20, p21) -- name: onReplicateShotEvent
    -- upvalues: (copy) v_u_3, (copy) v_u_18, (copy) v_u_4, (copy) v_u_2
    if p19 and p19:IsDescendantOf(game) then
        local v22 = p19.Handle
        local v23 = p19.Sounds
        local v24 = v22.AudioEmitter
        local v25 = p19:FindFirstChild("MuzzleAttachment", true)
        if v25 then
            p20 = v25.WorldPosition
            local v26 = v_u_3(p19)
            if v26 then
                v25.FlashEmitter.Color = ColorSequence.new(v26)
            end
            v25.FlashEmitter:Emit(1)
        else
            p20 = p19:GetPivot().Position
        end
        if v23:FindFirstChild("ShootLoop") then
            v_u_18(p19, v23, v24)
        else
            v_u_4(v23.Shoot, v24)
        end
    end
    v_u_2(p20, p21, p19)
end)
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Scripts.BlasterController
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.733.988)

local v1 = game:GetService("Players")
local v2 = game:GetService("ReplicatedStorage")
local v3 = game:GetService("SoundService")
local v_u_4 = game:GetService("UserInputService")
local v_u_5 = game:GetService("Workspace")
local v_u_6 = require(v2.Blaster.Constants)
local v_u_7 = require(script.Parent.AimAssistController)
local v_u_8 = require(script.Parent.AimAssistController.AimAssistEnum)
local v_u_9 = require(script.Parent.TouchInputController)
local v_u_10 = require(script.Parent.CameraRecoiler)
local v_u_11 = require(script.Parent.ViewModelController)
local v_u_12 = require(script.Parent.CharacterAnimationController)
local v_u_13 = require(script.Parent.GuiController)
local v_u_14 = require(v2.Utility.disconnectAndClear)
local v_u_15 = require(script.Parent.Parent.Utility.getRayDirections)
local v_u_16 = require(script.Parent.Parent.Utility.drawRayResults)
local v_u_17 = require(script.Parent.Parent.Utility.castRays)
local v_u_18 = v1.LocalPlayer
local v_u_19 = v_u_5.CurrentCamera
local v20 = v2.Blaster.Remotes
local v_u_21 = v20.Shoot
local v_u_22 = v20.Reload
local v_u_23 = Random.new()
local v_u_24 = {}
v_u_24.__index = v_u_24
local v_u_25 = v3.Audio.Busses.World.AudioCompressor
function v_u_24.new(p26) -- name: new
    -- upvalues: (copy) v_u_7, (copy) v_u_11, (copy) v_u_13, (copy) v_u_9, (copy) v_u_12, (copy) v_u_6, (copy) v_u_25, (copy) v_u_24
    local v27 = {
        ["blaster"] = nil,
        ["aimAssistController"] = nil,
        ["viewModelController"] = nil,
        ["guiController"] = nil,
        ["touchInputController"] = nil,
        ["characterAnimationController"] = nil,
        ["activated"] = false,
        ["equipped"] = false,
        ["shooting"] = false,
        ["ammo"] = nil,
        ["reloading"] = nil,
        ["connections"] = nil,
        ["shootHaptic"] = nil,
        ["blaster"] = p26,
        ["aimAssistController"] = v_u_7.new(),
        ["viewModelController"] = v_u_11.new(p26),
        ["guiController"] = v_u_13.new(p26),
        ["touchInputController"] = v_u_9.new(p26),
        ["characterAnimationController"] = v_u_12.new(p26)
    }
    local v28 = v_u_6.AMMO_ATTRIBUTE
    v27.ammo = tonumber(p26:GetAttribute(v28))
    v27.reloading = p26:GetAttribute(v_u_6.RELOADING_ATTRIBUTE)
    v27.connections = {}
    local v29 = p26:FindFirstChild("Haptics")
    if v29 then
        v29 = p26.Haptics:FindFirstChild("ShootHaptic")
    end
    v27.shootHaptic = v29
    local v30 = p26:FindFirstChild("Sounds")
    local v31
    if v30 then
        v31 = v30:FindFirstChild("Windup")
    else
        v31 = v30
    end
    v27.windupSound = v31
    local v32
    if v30 then
        v32 = v30:FindFirstChild("Winddown")
    else
        v32 = v30
    end
    v27.winddownSound = v32
    if v30 then
        v30 = v30:FindFirstChild("ShootLoop")
    end
    v27.shootLoopSound = v30
    local v33 = v27.windupSound
    if v33 and not v33:FindFirstChildOfClass("Wire") then
        local v34 = Instance.new("Wire")
        v34.SourceInstance = v33
        v34.TargetInstance = v_u_25
        v34.Parent = v33
    end
    local v35 = v27.winddownSound
    if v35 and not v35:FindFirstChildOfClass("Wire") then
        local v36 = Instance.new("Wire")
        v36.SourceInstance = v35
        v36.TargetInstance = v_u_25
        v36.Parent = v35
    end
    local v37 = v27.shootLoopSound
    if v37 and not v37:FindFirstChildOfClass("Wire") then
        local v38 = Instance.new("Wire")
        v38.SourceInstance = v37
        v38.TargetInstance = v_u_25
        v38.Parent = v37
    end
    local v39 = v_u_24
    setmetatable(v27, v39)
    v27:initialize()
    return v27
end
function v_u_24.isHumanoidAlive(p40) -- name: isHumanoidAlive
    local v41 = p40.humanoid
    if v41 then
        v41 = p40.humanoid.Health > 0
    end
    return v41
end
function v_u_24.canShoot(p42) -- name: canShoot
    local v43 = p42:isHumanoidAlive() and p42.equipped
    if v43 then
        if p42.ammo > 0 then
            v43 = not p42.reloading
        else
            v43 = false
        end
    end
    return v43
end
function v_u_24.canReload(p44) -- name: canReload
    -- upvalues: (copy) v_u_6
    local v45 = p44.blaster
    local v46 = v_u_6.MAGAZINE_SIZE_ATTRIBUTE
    local v47 = tonumber(v45:GetAttribute(v46))
    local v48 = p44:isHumanoidAlive() and p44.equipped
    if v48 then
        if p44.ammo < v47 then
            v48 = not p44.reloading
        else
            v48 = false
        end
    end
    return v48
end
function v_u_24.recoil(p49) -- name: recoil
    -- upvalues: (copy) v_u_6, (copy) v_u_23, (copy) v_u_10
    local v50 = p49.blaster:GetAttribute(v_u_6.RECOIL_MIN_ATTRIBUTE)
    local v51 = p49.blaster:GetAttribute(v_u_6.RECOIL_MAX_ATTRIBUTE)
    local v52 = v51.X - v50.X
    local v53 = v51.Y - v50.Y
    local v54 = v50.X + v_u_23:NextNumber() * v52
    local v55 = v50.Y + v_u_23:NextNumber() * v53
    local v56 = Vector2.new
    local v57 = -v54
    local v58 = v56(math.rad(v57), (math.rad(v55)))
    v_u_10.recoil(v58)
end
function v_u_24.shoot(p59) -- name: shoot
    -- upvalues: (copy) v_u_6, (copy) v_u_5, (copy) v_u_19, (copy) v_u_15, (copy) v_u_17, (copy) v_u_18, (copy) v_u_21, (copy) v_u_16
    local v60 = p59.blaster:GetAttribute(v_u_6.SPREAD_ATTRIBUTE)
    local v61 = p59.blaster:GetAttribute(v_u_6.RAYS_PER_SHOT_ATTRIBUTE)
    local v62 = p59.blaster:GetAttribute(v_u_6.RANGE_ATTRIBUTE)
    local v63 = p59.blaster:GetAttribute(v_u_6.RAY_RADIUS_ATTRIBUTE)
    p59.viewModelController:playShootAnimation()
    p59.characterAnimationController:playShootAnimation()
    p59:recoil()
    p59.ammo = p59.ammo - 1
    p59.guiController:setAmmo(p59.ammo)
    local v64 = v_u_5:GetServerTimeNow()
    local v65 = v_u_19.CFrame
    local v66 = v_u_15(v65, v61, math.rad(v60), v64)
    for v67, v68 in v66 do
        v66[v67] = v68 * v62
    end
    local v69 = v_u_17(v_u_18, v65.Position, v66, v63)
    local v70 = {}
    local v71 = false
    for v72, v73 in v69 do
        if v73.taggedHumanoid then
            v70[tostring(v72)] = v73.taggedHumanoid
            v71 = true
        end
    end
    if v71 then
        p59.guiController:showHitmarker()
    end
    v_u_21:FireServer(v64, p59.blaster, v65, v70)
    if not p59.blaster:GetAttribute("SpecialFire") then
        v_u_16(p59.viewModelController:getMuzzlePosition(), v69, p59.blaster)
    end
    if p59.shootHaptic then
        p59.shootHaptic:Play()
    end
end
function v_u_24.startShooting(p_u_74) -- name: startShooting
    -- upvalues: (copy) v_u_6
    if p_u_74.ammo == 0 then
        p_u_74:reload()
        return
    elseif p_u_74:canShoot() then
        if p_u_74.shooting then
            return
        else
            local v75 = p_u_74.blaster:GetAttribute(v_u_6.FIRE_MODE_ATTRIBUTE)
            local v_u_76 = p_u_74.blaster:GetAttribute(v_u_6.RATE_OF_FIRE_ATTRIBUTE)
            if v75 == v_u_6.FIRE_MODE.SEMI then
                p_u_74.shooting = true
                p_u_74:shoot()
                task.delay(60 / v_u_76, function()
                    -- upvalues: (copy) p_u_74
                    p_u_74.shooting = false
                    if p_u_74.ammo == 0 then
                        p_u_74:reload()
                    end
                end)
            elseif v75 == v_u_6.FIRE_MODE.AUTO then
                task.spawn(function()
                    -- upvalues: (copy) p_u_74, (copy) v_u_76
                    p_u_74.shooting = true
                    if p_u_74.windupSound then
                        if p_u_74.winddownSound then
                            p_u_74.winddownSound:Stop()
                        end
                        p_u_74.windupSound:Play()
                        local v77 = os.clock()
                        local v78 = p_u_74.windupSound.TimeLength
                        while p_u_74.activated and (p_u_74:canShoot() and (v78 == 0 or os.clock() - v77 < v78)) do
                            task.wait()
                            if v78 == 0 then
                                v78 = p_u_74.windupSound.TimeLength
                                v77 = os.clock()
                            end
                        end
                        p_u_74.windupSound:Stop()
                        if not (p_u_74.activated and p_u_74:canShoot()) then
                            if p_u_74.winddownSound and p_u_74.equipped then
                                p_u_74.winddownSound:Play()
                            end
                            p_u_74.shooting = false
                            if p_u_74.ammo == 0 then
                                p_u_74:reload()
                            end
                            return
                        end
                        if p_u_74.shootLoopSound then
                            p_u_74.shootLoopSound:Play()
                        end
                    end
                    while p_u_74.activated and p_u_74:canShoot() do
                        p_u_74:shoot()
                        task.wait(60 / v_u_76)
                    end
                    if p_u_74.shootLoopSound then
                        p_u_74.shootLoopSound:Stop()
                    end
                    if p_u_74.windupSound and (p_u_74.winddownSound and p_u_74.equipped) then
                        p_u_74.winddownSound:Play()
                    end
                    p_u_74.shooting = false
                    if p_u_74.ammo == 0 then
                        p_u_74:reload()
                    end
                end)
            end
        end
    else
        return
    end
end
function v_u_24.reload(p_u_79) -- name: reload
    -- upvalues: (copy) v_u_6, (copy) v_u_22
    if p_u_79:canReload() then
        local v80 = p_u_79.blaster
        local v81 = v_u_6.RELOAD_TIME_ATTRIBUTE
        local v82 = tonumber(v80:GetAttribute(v81))
        local v83 = p_u_79.blaster
        local v84 = v_u_6.MAGAZINE_SIZE_ATTRIBUTE
        local v_u_85 = tonumber(v83:GetAttribute(v84))
        p_u_79.viewModelController:playReloadAnimation(v82)
        p_u_79.characterAnimationController:playReloadAnimation(v82)
        p_u_79.reloading = true
        p_u_79.guiController:setReloading(p_u_79.reloading)
        v_u_22:FireServer(p_u_79.blaster)
        p_u_79.reloadTask = task.delay(v82, function()
            -- upvalues: (copy) p_u_79, (copy) v_u_85
            p_u_79.ammo = v_u_85
            p_u_79.reloading = false
            p_u_79.reloadTask = nil
            p_u_79.guiController:setAmmo(p_u_79.ammo)
            p_u_79.guiController:setReloading(p_u_79.reloading)
        end)
    end
end
function v_u_24.activate(p86) -- name: activate
    if not p86.activated then
        p86.activated = true
        p86:startShooting()
    end
end
function v_u_24.deactivate(p87) -- name: deactivate
    if p87.activated then
        p87.activated = false
    end
end
function v_u_24.equip(p88) -- name: equip
    -- upvalues: (copy) v_u_10, (copy) v_u_6, (copy) v_u_5, (copy) v_u_8
    if not p88.equipped then
        p88.equipped = true
        v_u_10.enable()
        local v89 = p88.blaster
        local v90 = v_u_6.AMMO_ATTRIBUTE
        p88.ammo = tonumber(v89:GetAttribute(v90))
        p88.reloading = p88.blaster:GetAttribute(v_u_6.RELOADING_ATTRIBUTE)
        p88.range = p88.blaster:GetAttribute(v_u_6.AIM_ASSIST_RANGE_ATTRIBUTE)
        p88.fov = p88.blaster:GetAttribute(v_u_6.AIM_ASSIST_FOV_ATTRIBUTE)
        p88.friction = p88.blaster:GetAttribute(v_u_6.AIM_ASSIST_FRICTION_STRENGTH_ATTRIBUTE)
        p88.tracking = p88.blaster:GetAttribute(v_u_6.AIM_ASSIST_TRACKING_STRENGTH_ATTRIBUTE)
        p88.centering = p88.blaster:GetAttribute(v_u_6.AIM_ASSIST_TRACKING_STRENGTH_ATTRIBUTE)
        p88.aimAssistController:setSubject(v_u_5.CurrentCamera)
        p88.aimAssistController:setRange(p88.range)
        p88.aimAssistController:setFieldOfView(p88.fov)
        p88.aimAssistController:addTargetTag(v_u_6.AIM_ASSIST_TARGET_TAG)
        p88.aimAssistController:addPlayerTargets(true, true)
        p88.aimAssistController:setMethodStrength(v_u_8.AimAssistMethod.Friction, p88.friction)
        p88.aimAssistController:setMethodStrength(v_u_8.AimAssistMethod.Tracking, p88.tracking)
        p88.aimAssistController:setMethodStrength(v_u_8.AimAssistMethod.Centering, p88.centering)
        p88.aimAssistController:setEasingFunc(v_u_8.AimAssistEasingAttribute.Distance, function(p91)
            -- upvalues: (ref) v_u_6
            return p91 < v_u_6.AIM_ASSIST_MIN_RANGE and 0 or 1
        end)
        p88.aimAssistController:setDebug(false)
        p88.aimAssistController:enable()
        p88.viewModelController:enable()
        p88.guiController:setAmmo(p88.ammo)
        p88.guiController:setReloading(p88.reloading)
        p88.guiController:enable()
        p88.touchInputController:enable()
        p88.characterAnimationController:enable()
        p88.humanoid = p88.blaster.Parent:FindFirstChildOfClass("Humanoid")
    end
end
function v_u_24.unequip(p92) -- name: unequip
    -- upvalues: (copy) v_u_10
    if p92.equipped then
        p92.equipped = false
        v_u_10.disable()
        p92:deactivate()
        if p92.windupSound then
            p92.windupSound:Stop()
        end
        if p92.shootLoopSound then
            p92.shootLoopSound:Stop()
        end
        if p92.winddownSound then
            p92.winddownSound:Stop()
        end
        if p92.reloadTask then
            task.cancel(p92.reloadTask)
            p92.reloadTask = nil
        end
        p92.aimAssistController:setDebug(false)
        p92.aimAssistController:disable()
        p92.viewModelController:disable()
        p92.guiController:disable()
        p92.touchInputController:disable()
        p92.characterAnimationController:disable()
    end
end
function v_u_24.initialize(p_u_93) -- name: initialize
    -- upvalues: (copy) v_u_4, (copy) v_u_6
    local v94 = p_u_93.connections
    local v95 = p_u_93.blaster.Equipped
    table.insert(v94, v95:Connect(function()
        -- upvalues: (copy) p_u_93
        p_u_93:equip()
    end))
    local v96 = p_u_93.connections
    local v97 = p_u_93.blaster.Unequipped
    table.insert(v96, v97:Connect(function()
        -- upvalues: (copy) p_u_93
        p_u_93:unequip()
    end))
    local v98 = p_u_93.connections
    local v99 = p_u_93.blaster.Activated
    table.insert(v98, v99:Connect(function()
        -- upvalues: (copy) p_u_93
        p_u_93:activate()
    end))
    local v100 = p_u_93.connections
    local v101 = p_u_93.blaster.Deactivated
    table.insert(v100, v101:Connect(function()
        -- upvalues: (copy) p_u_93
        p_u_93:deactivate()
    end))
    local v102 = p_u_93.connections
    local v103 = v_u_4.InputBegan
    local function v106(p104, p105)
        -- upvalues: (ref) v_u_6, (copy) p_u_93
        if not p105 then
            if p104.KeyCode == v_u_6.KEYBOARD_RELOAD_KEY_CODE or p104.KeyCode == v_u_6.GAMEPAD_RELOAD_KEY_CODE then
                p_u_93:reload()
            end
        end
    end
    table.insert(v102, v103:Connect(v106))
    local v107 = p_u_93.connections
    local v108 = v_u_4.InputChanged
    table.insert(v107, v108:Connect(function(p109, _)
        -- upvalues: (copy) p_u_93
        if p109.UserInputType == Enum.UserInputType.Gamepad1 and (p109.KeyCode == Enum.KeyCode.Thumbstick1 or p109.KeyCode == Enum.KeyCode.Thumbstick2) then
            p_u_93.aimAssistController:updateGamepadEligibility(p109.KeyCode, p109.Position)
        end
    end))
    local v110 = p_u_93.connections
    local v111 = v_u_4.TouchPan
    table.insert(v110, v111:Connect(function()
        -- upvalues: (copy) p_u_93
        p_u_93.aimAssistController:updateTouchEligibility()
    end))
    p_u_93.touchInputController:setReloadCallback(function()
        -- upvalues: (copy) p_u_93
        p_u_93:reload()
    end)
end
function v_u_24.destroy(p112) -- name: destroy
    -- upvalues: (copy) v_u_14
    p112:unequip()
    v_u_14(p112.connections)
    p112.aimAssistController:destroy()
    p112.viewModelController:destroy()
    p112.touchInputController:destroy()
    p112.characterAnimationController:destroy()
    p112.guiController:destroy()
end
return v_u_24
-- Script Path: game:GetService("ReplicatedStorage").Blaster.Scripts.CameraRecoiler
-- Took 0s to decompile.
-- Executor: Delta (1.1.733.988)

local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = game:GetService("RunService")
local v_u_3 = game:GetService("Workspace")
local v_u_4 = require(v1.Blaster.Constants)
local v_u_5 = require(v1.Utility.lerp)
local v_u_6 = Vector2.new()
local v_u_7 = 0
local v_u_8 = 0
local v_u_9 = nil
local function v_u_18(p10) -- name: onRenderStepped
    -- upvalues: (copy) v_u_3, (ref) v_u_6, (copy) v_u_4, (ref) v_u_7, (copy) v_u_5
    local v11 = v_u_3.CurrentCamera
    if v11 then
        v11.CFrame = v11.CFrame * CFrame.Angles(v_u_6.Y * p10, v_u_6.X * p10, 0)
        v11.FieldOfView = v_u_4.RECOIL_DEFAULT_FOV + v_u_7
        local v12 = v_u_6
        local v13 = Vector2.zero
        local v14 = p10 * v_u_4.RECOIL_STOP_SPEED
        v_u_6 = v12:Lerp(v13, (math.min(v14, 1)))
        local v15 = v_u_5
        local v16 = v_u_7
        local v17 = p10 * v_u_4.RECOIL_ZOOM_RETURN_SPEED
        v_u_7 = v15(v16, 0, (math.min(v17, 1)))
    end
end
return {
    ["recoil"] = function(p19) -- name: recoil
        -- upvalues: (ref) v_u_7, (ref) v_u_6
        v_u_7 = 1
        v_u_6 = v_u_6 + p19
    end,
    ["enable"] = function() -- name: enable
        -- upvalues: (ref) v_u_8, (copy) v_u_3, (ref) v_u_9, (ref) v_u_6, (ref) v_u_7, (copy) v_u_2, (copy) v_u_4, (copy) v_u_18
        v_u_8 = v_u_8 + 1
        if v_u_8 == 1 then
            local v20 = v_u_3.CurrentCamera
            if v20 then
                v_u_9 = v20.FieldOfView
            end
            v_u_6 = Vector2.new()
            v_u_7 = 0
            v_u_2:BindToRenderStep(v_u_4.RECOIL_BIND_NAME, Enum.RenderPriority.Camera.Value + 2, v_u_18)
        end
    end,
    ["disable"] = function() -- name: disable
        -- upvalues: (ref) v_u_8, (copy) v_u_2, (copy) v_u_4, (ref) v_u_6, (ref) v_u_7, (copy) v_u_3, (ref) v_u_9
        if v_u_8 == 0 then
            return
        else
            v_u_8 = v_u_8 - 1
            if v_u_8 == 0 then
                v_u_2:UnbindFromRenderStep(v_u_4.RECOIL_BIND_NAME)
                v_u_6 = Vector2.new()
                v_u_7 = 0
                local v21 = v_u_3.CurrentCamera
                if v21 and v_u_9 then
                    v21.FieldOfView = v_u_9
                end
                v_u_9 = nil
            end
        end
    end
}
