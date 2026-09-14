-- ts file was generated at discord.gg/25ms

repeat
    wait()
until game:IsLoaded()
repeat
    wait()
    pcall(function()
        if game:GetService('Players').LocalPlayer.PlayerGui:WaitForChild('Main').ChooseTeam.Visible == true then
            if _G.Team ~= 'Pirate' then
                if _G.Team ~= 'Marine' then
                    for _, v in pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated))do
                        v.Function()
                    end
                else
                    for _, v1 in pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated))do
                        v1.Function()
                    end
                end
            else
                for _, v2 in pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated))do
                    v2.Function()
                end
            end
        end
    end)
until game.Players.LocalPlayer.Team ~= nil

deleteeffect = function()
    pcall(function()
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Spiral') then
            game:GetService('ReplicatedStorage').Effect.Container.Spiral:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('GroundSmash') then
            game:GetService('ReplicatedStorage').Effect.Container.GroundSmash:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('WindLayer') then
            game:GetService('ReplicatedStorage').Effect.Container.WindLayer:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('MovementTrail') then
            game:GetService('ReplicatedStorage').Effect.Container.MovementTrail:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('RingWind') then
            game:GetService('ReplicatedStorage').Effect.Container.RingWind:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('WindSlash') then
            game:GetService('ReplicatedStorage').Effect.Container.WindSlash:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Repeater') then
            game:GetService('ReplicatedStorage').Effect.Container.Repeater:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('TrailSlash') then
            game:GetService('ReplicatedStorage').Effect.Container.TrailSlash:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Slash') then
            game:GetService('ReplicatedStorage').Effect.Container.Slash:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('KiExplosion') then
            game:GetService('ReplicatedStorage').Effect.Container.KiExplosion:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('FXCreatorTest') then
            game:GetService('ReplicatedStorage').Effect.Container.FXCreatorTest:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('ElectricStab') then
            game:GetService('ReplicatedStorage').Effect.Container.ElectricStab:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('BlastLayer') then
            game:GetService('ReplicatedStorage').Effect.Container.BlastLayer:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('DustExplosion') then
            game:GetService('ReplicatedStorage').Effect.Container.DustExplosion:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('BasicExplosion') then
            game:GetService('ReplicatedStorage').Effect.Container.BasicExplosion:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Column') then
            game:GetService('ReplicatedStorage').Effect.Container.Column:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('spinweld') then
            game:GetService('ReplicatedStorage').Effect.Container.spinweld:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('SwordSlash') then
            game:GetService('ReplicatedStorage').Effect.Container.SwordSlash:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Wind') then
            game:GetService('ReplicatedStorage').Effect.Container.Wind:Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Death') then
            game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Death'):Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Respawn') then
            game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Respawn'):Destroy()
        end
        if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('LevelUp') then
            game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('LevelUp'):Destroy()
        end
    end)
end

deleteeffect()

getgenv().DefaultSetting = {
    Auto_Farm_Level = false,
    Auto_New_World = false,
    Auto_Third_World = false,
    Auto_Farm_Max_Mastery_All_Sword = false,
    Auto_Farm_Chest = false,
    Auto_Farm_Chest_Hop = false,
    Auto_Elite_Hunter = false,
    Auto_Elite_Hunter_Hop = false,
    Stop_when_have_God_Chalice = false,
    Auto_Spawn_Cake_Prince = true,
    Auto_Cake_Prince = false,
    Select_Boss = {},
    Select_Material = {},
    Auto_Farm_Boss = false,
    Auto_Quest_Boss = true,
    Auto_Farm_All_Boss = false,
    Auto_Farm_Devil_Fruit_Mastery = false,
    Auto_Farm_Gun_Mastery = false,
    Distance_X = 0,
    Distance_Y = 30,
    Distance_Z = 0,
    Remove_Effect = false,
    Select_Health = 20,
    Mode_Farm = 'Default Mode',
    Type_Fast_Attack = '[Safe] Fast Attack',
    Distance_Bring_Mob = 300,
    Fast_Attack = true,
    Fast_TP = false,
    Faster_Spawn_Mob = true,
    Auto_Set_Spawn = true,
    Select_Level_to_Redeem_All_Code = 1,
    Auto_Redeem_All_Code = false,
    Select_Type_Weapon = 'Melee',
    White_Screen = false,
    Black_Screen = false,
    Skill_Z = true,
    Skill_X = true,
    Skill_C = true,
    Skill_V = true,
    Auto_Saber = false,
    Auto_Saber_Hop = false,
    Auto_Pole = false,
    Auto_Pole_Hop = false,
    Auto_Factory_Farm = false,
    Auto_Bartilo_Quest = false,
    Auto_Rengoku = false,
    Auto_Evo_Race_V2 = false,
    Auto_Swan_Glasses = false,
    Auto_Swan_Glasses_Hop = false,
    Auto_Dragon_Trident = false,
    Auto_Dragon_Trident_Hop = false,
    Auto_Buy_Legendary_Sword = false,
    Auto_Buy_Enchancement = false,
    Auto_Soul_Reaper = false,
    Auto_Soul_Reaper_Hop = false,
    Auto_Open_Dough_Dungeon = false,
    Auto_Yama = false,
    Auto_Trade_Bone = false,
    Auto_Soul_Guitar = false,
    Auto_Cursed_Dual_Katana = false,
    Auto_Rainbow_Haki = false,
    Auto_Rainbow_Haki_Hop = false,
    Auto_Musketeer_Hat = false,
    Auto_Holy_Torch = false,
    Auto_Canvander = false,
    Auto_Canvander_Hop = false,
    Auto_Twin_Hook = false,
    Auto_Twin_Hook_Hop = false,
    Auto_Serpent_Bow = false,
    Auto_Serpent_Bow_Hop = false,
    Auto_Superhuman = false,
    Auto_Fully_Superhuman = false,
    Auto_Death_Step = false,
    Auto_Death_Step = false,
    Auto_SharkMan_Karate = false,
    Auto_SharkMan_Karate = false,
    Auto_Electric_Claw = false,
    Auto_Dragon_Talon = false,
    Auto_God_Human = false,
    Auto_Fully_God_Human = false,
    Auto_Farm_Observation_Haki = false,
    Auto_Farm_Observation_Haki_Hop = false,
    Auto_Stats_Kaitun = false,
    Auto_Stats_Melee = false,
    Auto_Stats_Defense = false,
    Auto_Stats_Sword = false,
    Auto_Stats_Gun = false,
    Auto_Stats_Devil_Fruit = false,
    Point = 1,
    No_clip = false,
    Infinit_Energy = false,
    Dodge_No_CoolDown = false,
    Infinit_Ability = false,
    Infinit_SkyJump = false,
    Infinit_Soru = false,
    Infinit_Range_Observation_Haki = false,
    Select_Size_Fov = 200,
    Show_Fov = false,
    Select_Player = nil,
    Spectate_Player = false,
    Teleport_to_Player = false,
    Auto_Kill_Player_Melee = false,
    Auto_Kill_Player_Gun = false,
    Select_Island = nil,
    Start_Tween_Island = false,
    Select_Dungeon = 'Flame',
    Auto_Buy_Chips_Dungeon = false,
    Auto_Start_Dungeon = false,
    Auto_Next_Island = false,
    Kill_Aura = false,
    Auto_Awake = false,
    Auto_Buy_Law_Chip = false,
    Auto_Start_Law_Dungeon = false,
    Auto_Kill_Law = false,
    Select_Weapon_Law_Raid = nil,
    Select_Devil_Fruit = nil,
    Auto_Buy_Devil_Fruit = false,
    Auto_Random_Fruit = false,
    Auto_Bring_Fruit = false,
    Auto_Bring_Spawn_Fruit = false,
    Auto_Store_Fruit = false,
    Auto_Buy_Chips_Dungeon_Hop = false,
    Auto_Find_Mirage_Island = false,
    Auto_Find_Mirage_Island_Hop = false,
    Auto_Find_Full_Moon = false,
    Auto_Find_Full_Moon_Mirage = false,
}

local u = 'RIPPER HUB [V3 Script New]'
local u1 = game.Players.LocalPlayer.Name .. '_BF_Config.json'
local _HttpService = game:GetService('HttpService')

if not isfolder(u) then
    print('Create Folder')
    makefolder(u)
    writefile(u .. '\\' .. u1, _HttpService:JSONEncode(getgenv().DefaultSetting))
end
if not isfile(u .. '\\' .. u1) then
    print('Create File')
    writefile(u .. '\\' .. u1, _HttpService:JSONEncode(getgenv().DefaultSetting))
end

saveSettings = function()
    if writefile then
        if isfolder(u) then
            if isfile(u .. '\\' .. u1) then
                local v3 = _HttpService

                writefile(u .. '\\' .. u1, v3:JSONEncode(getgenv().Setting))
                print('Save')
            else
                print('Create File')

                local v4 = _HttpService

                writefile(u .. '\\' .. u1, v4:JSONEncode(getgenv().DefaultSetting))
            end
        else
            print('Create Folder')
            makefolder(u)

            local v5 = _HttpService

            writefile(u .. '\\' .. u1, v5:JSONEncode(getgenv().DefaultSetting))
        end
    end
end
Config = getgenv().Setting
loadSettings = function()
    pcall(function()
        if isfile(u .. '\\' .. u1) then
            local v6 = _HttpService

            getgenv().Setting = v6:JSONDecode(readfile(u .. '\\' .. u1))
            Config = _HttpService:JSONDecode(readfile(u .. '\\' .. u1))
        end
    end)
end

loadSettings()

if game.PlaceId ~= 2753915549 then
    if game.PlaceId ~= 4442272183 then
        if game.PlaceId == 7449423635 then
            World3 = true
        end
    else
        World2 = true
    end
else
    World1 = true
end

local function u2(p1, p2)
    local v7 = p2 or 0
    local v8 = string.rep(' ', v7) .. '{\r\n'
    local v9 = v7 + 2

    for v10, v11 in pairs(p1)do
        local v12 = v8 .. string.rep(' ', v9)

        if type(v10) ~= 'number' then
            if type(v10) == 'string' then
                v12 = v12 .. v10 .. '= '
            end
        else
            v12 = v12 .. '[' .. v10 .. '] = '
        end
        if type(v11) ~= 'number' then
            if type(v11) ~= 'string' then
                if type(v11) ~= 'table' then
                    v8 = v12 .. '"' .. tostring(v11) .. '",\r\n'
                else
                    v8 = v12 .. u2(v11, v9 + 2) .. ',\r\n'
                end
            else
                v8 = v12 .. '"' .. v11 .. '",\r\n'
            end
        else
            v8 = v12 .. v11 .. ',\r\n'
        end
    end

    return v8 .. string.rep(' ', v9 - 2) .. '}'
end

local u3 = {
    Guide = require(game:GetService('ReplicatedStorage').GuideModule),
    AllQuest = require(game:GetService('ReplicatedStorage').Quests),
}

u3.AllQuest = (function()
    local v13 = {}

    for v14, v15 in pairs(u3.AllQuest)do
        v13[v14] = {
            Index = v14,
            Value = v15,
        }
    end

    return v13
end)()
u3.QuestBag = {}
u3.BagNumber = {}
u3.LevelReq = function()
    local v16 = {}

    for _, v17 in pairs(u3.AllQuest)do
        for _, v18 in pairs(v17.Value)do
            table.insert(v16, v18.LevelReq)
        end
    end

    local v19

    if u3.CustomLevel then
        v19 = u3.CustomLevel
    else
        v19 = game.Players.LocalPlayer.Data.Level.Value
    end

    local v20 = FirstSea and 675 < v19 and 675 or (SecondSea and 1450 < v19 and 1475 or (v19 >= 2525 and 2525 or (230 <= v19 and v19 < 249 and 200 or v19)))

    table.sort(v16)

    local v21 = nil
    local v22 = nil
    local v23 = nil
    local __continue_break_1 = false

    for v24, v25 in pairs(v16)do
        if v20 == v25 then
            v21 = v16[v24]

            if Double_Quest then
                v22 = v16[v24 - 1]
                v23 = v16[v24 - 2]
            end

            break
        elseif v20 < v25 then
            v21 = v16[v24 - 1]

            if Double_Quest then
                v22 = v16[v24 - 2]
                v23 = v16[v24 - 3]
            end

            break
        end
    end

    u3.QuestBag = {
        v21,
        v22 or nil,
    }

    if 400 <= v20 and v20 < 625 or 700 < v20 and v20 <= 1450 then
        u3.QuestBag = {
            v21,
            v22 or nil,
            v23,
        }
    end
    if 300 < v20 and v20 < 325 or 1000 < v20 and v20 < 1050 or (1100 < v20 and v20 < 1125 or 1250 < v20 and v20 < 1275) or (1350 < v20 and v20 < 1375 or 1425 < v20 and v20 < 1450 or (1575 < v20 and v20 < 1600 or 1625 < v20 and v20 < 1650)) or (1700 < v20 and v20 < 1725 or 1775 < v20 and v20 < 1800 or (1825 < v20 and v20 < 1850 or 1900 < v20 and v20 < 1925) or (1975 < v20 and v20 < 2000 or 2025 < v20 and v20 < 2050 or (2075 < v20 and v20 < 2100 or 2125 < v20 and v20 < 2150))) or (2200 < v20 and v20 < 2225 or 2250 < v20 and v20 < 2275 or (2300 < v20 and v20 < 2325 or 2350 < v20 and v20 < 2400)) then
        u3.QuestBag = {v21, nil, nil}
    end

    return v21
end

u3.LevelReq()

u3.DataData = {nil, nil}
u3.CountCheck = 0
u3.CheckBossLevel = function(p3)
    local v26 = {}

    for v27, _ in pairs(p3)do
        table.insert(v26, v27)
    end

    table.sort(v26)

    local v28 = {}

    for v29, v30 in pairs(p3)do
        v28[v29] = v30
    end

    local v31 = nil

    for v32, v33 in pairs(v26)do
        for _, v34 in pairs(u3.QuestBag)do
            if v33 == v34 then
                if u3:FindValue(v28[v33].Value.Task) ~= 1 then
                    v31 = v28[v26[v32] ]
                else
                    v31 = v28[v26[v32 - 1] ]
                end
            end
        end
    end

    return v31
end
u3.MyData = function()
    u3.BagNumber = {}

    for _, v35 in pairs(u3.DataData)do
        if v35.Used then
            u3.CountCheck = u3.CountCheck + 1
        end
    end

    if u3.CountCheck >= 2 then
        u3.CountCheck = 0
        u3.DataData = {nil, nil}
    end
    if not Double_Quest then
        u3.DataData = {}
    end

    local v36 = {}

    for v37, v38 in pairs(u3.AllQuest)do
        for _, v39 in pairs(v38.Value)do
            if v37:sub(1, 11) ~= 'MarineQuest' or #v37 ~= 11 then
                if v37 ~= 'BartiloQuest' then
                    if v37 ~= 'CitizenQuest' then
                        v36[v39.LevelReq] = {
                            Index = v37,
                            Value = v39,
                        }
                    end
                end
            end
        end
    end

    local v40 = u3.CheckBossLevel(v36)

    if Double_Quest then
        for v41, _ in pairs(v36)do
            for _, v42 in pairs(u3.QuestBag)do
                if v36[v41].Value.LevelReq == v42 then
                    if u3:FindValue(v36[v41].Value.Task) ~= 1 or not Double_Quest then
                        table.insert(u3.BagNumber, v42)

                        if not u3.DataData[v42] then
                            u3.DataData[v42] = {
                                Index = v36[v41].Index,
                                Value = v36[v41].Value,
                                Used = false,
                            }
                        end
                    end
                end
            end
        end
    else
        for v43, _ in pairs(v36)do
            if v36[v43].Value.LevelReq == v40.Value.LevelReq then
                table.insert(u3.BagNumber, v40.Value.LevelReq)

                if not u3.DataData[v40.Value.LevelReq] then
                    u3.DataData[v40.Value.LevelReq] = {
                        Index = v36[v43].Index,
                        Value = v36[v43].Value,
                        Used = false,
                    }
                end
            end
        end
    end

    return u3.DataData
end
u3.FindValue = function(_, p4)
    if not p4 then
    end

    for _, _ in pairs(p4)do
        return warn('havenil')
    end
end
u3.FindIndex = function(_, p5, _)
    if not p5 then
    end

    for _, _ in pairs(p5)do
        return warn('havenil')
    end
end
u3.FindData = function(_, p6, p7, _)
    for v44, v45 in pairs(require(game:GetService('ReplicatedStorage').Quests)[p6])do
        if v45.LevelReq ~= p7 then
        else
            return {
                Value = v45,
                Index = v44,
            }
        end
    end
end
u3.Npcs = function(p8, p9, p10)
    local v46 = nil

    for _, v47 in pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())do
        if v47.Name:match(p8:FindIndex(p10)) then
            v46 = v47
        end
    end
    for v48, v49 in pairs(p8.Guide.Data.NPCList)do
        for _, v50 in pairs(v49.Levels)do
            if v50 == p9 then
                return {
                    Index = v48,
                    Value = v49,
                    MonPosition = v46 or nil,
                }
            end
        end
    end
end
u3.GetQuest = function(p11)
    u3.LevelReq()

    local v51 = {}
    local v52 = p11.MyData()
    local v53 = nil
    local v54

    if Double_Quest then
        v54 = math.max(unpack(u3.BagNumber))
    else
        v54 = u3.LevelReq()
    end

    table.sort(u3.BagNumber)

    for _, v55 in pairs(u3.BagNumber)do
        if v55 ~= v54 then
            v53 = v55
        end
    end

    local v56 = v53 or v54

    if Double_Quest then
        if u3.DataData[v52[v54].Value.LevelReq].Used then
            v51[v52[v56].Value.LevelReq] = {
                Mon = p11:FindIndex(v52[v56].Value.Task),
                NameQuest = v52[v56].Index,
                NumberQuest = p11:FindData(v52[v56].Index, v52[v56].Value.LevelReq).Index,
                CFrameQuest = p11:Npcs(v52[v56].Value.LevelReq, v52[v56].Value.Task).Index.CFrame,
                CFrameMon = p11:Npcs(v52[v56].Value.LevelReq, v52[v56].Value.Task).MonPosition,
            }
        else
            v51[v52[v54].Value.LevelReq] = {
                Mon = p11:FindIndex(v52[v54].Value.Task),
                NameQuest = v52[v54].Index,
                NumberQuest = p11:FindData(v52[v54].Index, v52[v54].Value.LevelReq).Index,
                CFrameQuest = p11:Npcs(v52[v54].Value.LevelReq, v52[v54].Value.Task).Index.CFrame,
                CFrameMon = p11:Npcs(v52[v54].Value.LevelReq, v52[v54].Value.Task).MonPosition,
            }
        end
    else
        C = v56
        v51[v52[C].Value.LevelReq] = {
            Mon = p11:FindIndex(v52[C].Value.Task),
            NameQuest = v52[C].Index,
            NumberQuest = p11:FindData(v52[C].Index, v52[C].Value.LevelReq).Index,
            CFrameQuest = p11:Npcs(v52[C].Value.LevelReq, v52[C].Value.Task).Index.CFrame,
            CFrameMon = p11:Npcs(v52[C].Value.LevelReq, v52[C].Value.Task).MonPosition,
        }
    end

    return p11:FindIndex(v51), v51
end

local v57 = u3
local u4, u5 = u3.GetQuest(v57)

CheckBossQuest = function()
    if _G.Select_Boss ~= 'Saber Expert [Lv. 200] [Boss]' then
        if _G.Select_Boss ~= 'The Saw [Lv. 100] [Boss]' then
            if _G.Select_Boss ~= 'Greybeard [Lv. 750] [Raid Boss]' then
                if _G.Select_Boss ~= 'The Gorilla King [Lv. 25] [Boss]' then
                    if _G.Select_Boss ~= 'Bobby [Lv. 55] [Boss]' then
                        if _G.Select_Boss ~= 'Yeti [Lv. 110] [Boss]' then
                            if _G.Select_Boss ~= 'Mob Leader [Lv. 120] [Boss]' then
                                if _G.Select_Boss ~= 'Vice Admiral [Lv. 130] [Boss]' then
                                    if _G.Select_Boss ~= 'Warden [Lv. 175] [Boss]' then
                                        if _G.Select_Boss ~= 'Chief Warden [Lv. 200] [Boss]' then
                                            if _G.Select_Boss ~= 'Swan [Lv. 225] [Boss]' then
                                                if _G.Select_Boss ~= 'Magma Admiral [Lv. 350] [Boss]' then
                                                    if _G.Select_Boss ~= 'Fishman Lord [Lv. 425] [Boss]' then
                                                        if _G.Select_Boss ~= 'Wysper [Lv. 500] [Boss]' then
                                                            if _G.Select_Boss ~= 'Thunder God [Lv. 575] [Boss]' then
                                                                if _G.Select_Boss ~= 'Cyborg [Lv. 675] [Boss]' then
                                                                    if _G.Select_Boss ~= 'Diamond [Lv. 750] [Boss]' then
                                                                        if _G.Select_Boss ~= 'Jeremy [Lv. 850] [Boss]' then
                                                                            if _G.Select_Boss ~= 'Fajita [Lv. 925] [Boss]' then
                                                                                if _G.Select_Boss ~= 'Don Swan [Lv. 1000] [Boss]' then
                                                                                    if _G.Select_Boss ~= 'Smoke Admiral [Lv. 1150] [Boss]' then
                                                                                        if _G.Select_Boss ~= 'Cursed Captain [Lv. 1325] [Raid Boss]' then
                                                                                            if _G.Select_Boss ~= 'Darkbeard [Lv. 1000] [Raid Boss]' then
                                                                                                if _G.Select_Boss ~= 'Order [Lv. 1250] [Raid Boss]' then
                                                                                                    if _G.Select_Boss ~= 'Awakened Ice Admiral [Lv. 1400] [Boss]' then
                                                                                                        if _G.Select_Boss ~= 'Tide Keeper [Lv. 1475] [Boss]' then
                                                                                                            if _G.Select_Boss ~= 'Stone [Lv. 1550] [Boss]' then
                                                                                                                if _G.Select_Boss ~= 'Island Empress [Lv. 1675] [Boss]' then
                                                                                                                    if _G.Select_Boss ~= 'Kilo Admiral [Lv. 1750] [Boss]' then
                                                                                                                        if _G.Select_Boss ~= 'Captain Elephant [Lv. 1875] [Boss]' then
                                                                                                                            if _G.Select_Boss ~= 'Beautiful Pirate [Lv. 1950] [Boss]' then
                                                                                                                                if _G.Select_Boss ~= 'Cake Queen [Lv. 2175] [Boss]' then
                                                                                                                                    if _G.Select_Boss ~= 'rip_indra True Form [Lv. 5000] [Raid Boss]' then
                                                                                                                                        if _G.Select_Boss ~= 'Longma [Lv. 2000] [Boss]' then
                                                                                                                                            if _G.Select_Boss == 'Soul Reaper [Lv. 2100] [Raid Boss]' then
                                                                                                                                                MsBoss = 'Soul Reaper [Lv. 2100] [Raid Boss]'
                                                                                                                                                NameBoss = 'Soul Reaper'
                                                                                                                                                CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            MsBoss = 'Longma [Lv. 2000] [Boss]'
                                                                                                                                            NameBoss = 'Longma'
                                                                                                                                            CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        MsBoss = 'rip_indra True Form [Lv. 5000] [Raid Boss]'
                                                                                                                                        NameBoss = 'rip_indra True Form'
                                                                                                                                        CFrameBoss = CFrame.new(-5359, 424, -2735)
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    MsBoss = 'Cake Queen [Lv. 2175] [Boss]'
                                                                                                                                    NameBoss = 'Cake Queen'
                                                                                                                                    NameQuestBoss = 'IceCreamIslandQuest'
                                                                                                                                    LevelQuestBoss = 3
                                                                                                                                    CFrameQuestBoss = CFrame.new(-716, 382, -11010)
                                                                                                                                    CFrameBoss = CFrame.new(-821, 66, -10965)
                                                                                                                                end
                                                                                                                            else
                                                                                                                                MsBoss = 'Beautiful Pirate [Lv. 1950] [Boss]'
                                                                                                                                NameBoss = 'Beautiful Pirate'
                                                                                                                                NameQuestBoss = 'DeepForestIsland2'
                                                                                                                                LevelQuestBoss = 3
                                                                                                                                CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
                                                                                                                                CFrameBoss = CFrame.new(5182, 23, -20)
                                                                                                                            end
                                                                                                                        else
                                                                                                                            MsBoss = 'Captain Elephant [Lv. 1875] [Boss]'
                                                                                                                            NameBoss = 'Captain Elephant'
                                                                                                                            NameQuestBoss = 'DeepForestIsland'
                                                                                                                            LevelQuestBoss = 3
                                                                                                                            CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
                                                                                                                            CFrameBoss = CFrame.new(-13221, 325, -8405)
                                                                                                                        end
                                                                                                                    else
                                                                                                                        MsBoss = 'Kilo Admiral [Lv. 1750] [Boss]'
                                                                                                                        NameBoss = 'Kilo Admiral'
                                                                                                                        NameQuestBoss = 'MarineTreeIsland'
                                                                                                                        LevelQuestBoss = 3
                                                                                                                        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
                                                                                                                        CFrameBoss = CFrame.new(2846, 433, -7100)
                                                                                                                    end
                                                                                                                else
                                                                                                                    MsBoss = 'Island Empress [Lv. 1675] [Boss]'
                                                                                                                    NameBoss = 'Island Empress'
                                                                                                                    NameQuestBoss = 'AmazonQuest2'
                                                                                                                    LevelQuestBoss = 3
                                                                                                                    CFrameQuestBoss = CFrame.new(5443, 602, 752)
                                                                                                                    CFrameBoss = CFrame.new(5659, 602, 244)
                                                                                                                end
                                                                                                            else
                                                                                                                MsBoss = 'Stone [Lv. 1550] [Boss]'
                                                                                                                NameBoss = 'Stone'
                                                                                                                NameQuestBoss = 'PiratePortQuest'
                                                                                                                LevelQuestBoss = 3
                                                                                                                CFrameQuestBoss = CFrame.new(-290, 44, 5577)
                                                                                                                CFrameBoss = CFrame.new(-1085, 40, 6779)
                                                                                                            end
                                                                                                        else
                                                                                                            MsBoss = 'Tide Keeper [Lv. 1475] [Boss]'
                                                                                                            NameBoss = 'Tide Keeper'
                                                                                                            NameQuestBoss = 'ForgottenQuest'
                                                                                                            LevelQuestBoss = 3
                                                                                                            CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-9, 0.16681771, -3.07832915e-9, 1, 3.29612559e-9, -0.16681771, 2.73641976e-9, -0.985987961)
                                                                                                            CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857325999999999e-8, 0.885206044, 4.0332897e-9, 1, 1.35347511e-8, -0.885206044, -2.72606271e-9, 0.465199202)
                                                                                                        end
                                                                                                    else
                                                                                                        MsBoss = 'Awakened Ice Admiral [Lv. 1400] [Boss]'
                                                                                                        NameBoss = 'Awakened Ice Admiral'
                                                                                                        NameQuestBoss = 'FrostQuest'
                                                                                                        LevelQuestBoss = 3
                                                                                                        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-8, 0.388910472, 4.72230788e-8, 1, -7.96414241e-8, -0.388910472, 9.17372489e-8, 0.921275556)
                                                                                                        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-8, -0.871432424, -2.76146022e-8, 1, -7.58250565e-8, 0.871432424, 6.125763009999999e-8, 0.49051559)
                                                                                                    end
                                                                                                else
                                                                                                    MsBoss = 'Order [Lv. 1250] [Raid Boss]'
                                                                                                    NameBoss = 'Order'
                                                                                                    CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-8, 0.924687505, 5.85604774e-8, 1, -5.6073854899999995e-8, -0.924687505, 3.28013137e-8, -0.380726993)
                                                                                                end
                                                                                            else
                                                                                                MsBoss = 'Darkbeard [Lv. 1000] [Raid Boss]'
                                                                                                NameBoss = 'Darkbeard'
                                                                                                CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-8, 0.213458836, 4.57335361e-8, 1, -2.3686862200000003e-8, -0.213458836, -1.33787044e-8, -0.976951957)
                                                                                            end
                                                                                        else
                                                                                            MsBoss = 'Cursed Captain [Lv. 1325] [Raid Boss]'
                                                                                            NameBoss = 'Cursed Captain'
                                                                                            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.263104949999999e-9, 0.0314563364, 8.42916226e-9, 1, -2.6643713e-8, -0.0314563364, -2.63653774e-8, -0.999505103)
                                                                                        end
                                                                                    else
                                                                                        MsBoss = 'Smoke Admiral [Lv. 1150] [Boss]'
                                                                                        NameBoss = 'Smoke Admiral'
                                                                                        NameQuestBoss = 'IceSideQuest'
                                                                                        LevelQuestBoss = 3
                                                                                        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-9, 0.895534337, -3.64098796e-8, 1, -1.4644522e-8, -0.895534337, -3.91229982e-8, -0.444992423)
                                                                                        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-8, -0.967869282, 4.02796978e-8, 1, 2.57916977e-8, 0.967869282, -4.54708946e-8, 0.251453817)
                                                                                    end
                                                                                else
                                                                                    MsBoss = 'Don Swan [Lv. 1000] [Boss]'
                                                                                    NameBoss = 'Don Swan'
                                                                                    CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-8, -0.0227668174, 8.4774733e-8, 1, 2.75850098e-8, 0.0227668174, -2.95079072e-8, 0.99974072)
                                                                                end
                                                                            else
                                                                                MsBoss = 'Fajita [Lv. 925] [Boss]'
                                                                                NameBoss = 'Fajita'
                                                                                NameQuestBoss = 'MarineQuest3'
                                                                                LevelQuestBoss = 3
                                                                                CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-8, -0.486752301, 5.64383384e-8, 1, -1.4322078599999999e-8, 0.486752301, -3.9982399600000003e-8, -0.873540044)
                                                                                CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-9, -0.275756449, -2.3212845e-9, 1, -1.34094433e-8, 0.275756449, 1.35296352e-8, 0.961227536)
                                                                            end
                                                                        else
                                                                            MsBoss = 'Jeremy [Lv. 850] [Boss]'
                                                                            NameBoss = 'Jeremy'
                                                                            NameQuestBoss = 'Area2Quest'
                                                                            LevelQuestBoss = 3
                                                                            CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.0773208699999999e-10, -0.0319722369)
                                                                            CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
                                                                        end
                                                                    else
                                                                        MsBoss = 'Diamond [Lv. 750] [Boss]'
                                                                        NameBoss = 'Diamond'
                                                                        NameQuestBoss = 'Area1Quest'
                                                                        LevelQuestBoss = 3
                                                                        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-8, 0.967323601, -6.0014777100000005e-8, 1, 3.04272909e-8, -0.967323601, -6.576839699999999e-8, 0.253544956)
                                                                        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
                                                                    end
                                                                else
                                                                    MsBoss = 'Cyborg [Lv. 675] [Boss]'
                                                                    NameBoss = 'Cyborg'
                                                                    NameQuestBoss = 'FountainQuest'
                                                                    LevelQuestBoss = 3
                                                                    CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-8, -0.999936521, 2.55291371e-10, 1, -9.93769547e-8, 0.999936521, -1.37512213e-9, -0.0112687312)
                                                                    CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-9, -0.826346457, -5.94632716e-8, 1, 4.26280238e-8, 0.826346457, 7.31437524e-8, -0.563162148)
                                                                end
                                                            else
                                                                MsBoss = 'Thunder God [Lv. 575] [Boss]'
                                                                NameBoss = 'Thunder God'
                                                                NameQuestBoss = 'SkyExp2Quest'
                                                                LevelQuestBoss = 3
                                                                CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-7, 0.999347389, 1.4453396299999999e-9, 1, 1.17024491e-7, -0.999347389, 5.6715117e-9, -0.0361216255)
                                                                CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-8, -0.261550069, -6.73089886e-8, 1, -6.46515304e-8, 0.261550069, 8.00056768e-8, 0.965189934)
                                                            end
                                                        else
                                                            MsBoss = 'Wysper [Lv. 500] [Boss]'
                                                            NameBoss = 'Wysper'
                                                            NameQuestBoss = 'SkyExp1Quest'
                                                            LevelQuestBoss = 3
                                                            CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-8, -0.886386991, 1.0534996e-8, 1, 2.19553424e-8, 0.886386991, -1.95022007e-8, 0.462944925)
                                                            CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-9, 0.697619379, 3.37381434e-9, 1, -1.70304748e-9, -0.697619379, 3.57381835e-9, 0.716468513)
                                                        end
                                                    else
                                                        MsBoss = 'Fishman Lord [Lv. 425] [Boss]'
                                                        NameBoss = 'Fishman Lord'
                                                        NameQuestBoss = 'FishmanQuest'
                                                        LevelQuestBoss = 3
                                                        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-7, 0.374700129, -6.98219367e-8, 1, -1.10790765e-7, -0.374700129, 7.65569368e-8, 0.927145958)
                                                        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
                                                    end
                                                else
                                                    MsBoss = 'Magma Admiral [Lv. 350] [Boss]'
                                                    NameBoss = 'Magma Admiral'
                                                    NameQuestBoss = 'MagmaQuest'
                                                    LevelQuestBoss = 3
                                                    CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.6550880599999998e-8, -0.859131515, -3.9113157199999997e-8, 1, -5.42026761e-8, 0.859131515, 6.1341829400000005e-8, 0.51175487)
                                                    CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-8, 0.513919294, 1.53689133e-8, 1, -6.91265853e-8, -0.513919294, 6.719783840000001e-8, 0.857838571)
                                                end
                                            else
                                                MsBoss = 'Swan [Lv. 225] [Boss]'
                                                NameBoss = 'Swan'
                                                NameQuestBoss = 'ImpelQuest'
                                                LevelQuestBoss = 3
                                                CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-8, -0.842635691, 1.38001752e-8, 1, -8.813007919999999e-8, 0.842635691, -5.90851599e-8, -0.538484037)
                                                CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.47818627e-8, 1, 3.81658154e-8, -0.330433697, -2.45289105e-8, 0.943829298)
                                            end
                                        else
                                            MsBoss = 'Chief Warden [Lv. 200] [Boss]'
                                            NameBoss = 'Chief Warden'
                                            NameQuestBoss = 'ImpelQuest'
                                            LevelQuestBoss = 2
                                            CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-8, -0.842635691, 1.38001752e-8, 1, -8.813007919999999e-8, 0.842635691, -5.90851599e-8, -0.538484037)
                                            CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.47818627e-8, 1, 3.81658154e-8, -0.330433697, -2.45289105e-8, 0.943829298)
                                        end
                                    else
                                        MsBoss = 'Warden [Lv. 175] [Boss]'
                                        NameBoss = 'Warden'
                                        NameQuestBoss = 'ImpelQuest'
                                        LevelQuestBoss = 1
                                        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-8, -0.842635691, 1.38001752e-8, 1, -8.813007919999999e-8, 0.842635691, -5.90851599e-8, -0.538484037)
                                        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.47818627e-8, 1, 3.81658154e-8, -0.330433697, -2.45289105e-8, 0.943829298)
                                    end
                                else
                                    MsBoss = 'Vice Admiral [Lv. 130] [Boss]'
                                    NameBoss = 'Vice Admiral'
                                    NameQuestBoss = 'MarineQuest2'
                                    LevelQuestBoss = 2
                                    CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-8, 0.998130739, -1.57416586e-8, 1, 8.00271849e-8, -0.998130739, -1.08217701e-8, -0.0611100644)
                                    CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.3550828600000004e-8, 1, -4.23449258e-8, -0.831466436, -7.636616319999999e-8, -0.555574954)
                                end
                            else
                                MsBoss = 'Mob Leader [Lv. 120] [Boss]'
                                NameBoss = 'Mob Leader'
                                CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-8, 0.371961564, -7.61816636e-8, 1, 4.44474857e-8, -0.371961564, 1.29216433e-8, -0.92824)
                            end
                        else
                            MsBoss = 'Yeti [Lv. 110] [Boss]'
                            NameBoss = 'Yeti'
                            NameQuestBoss = 'SnowQuest'
                            LevelQuestBoss = 3
                            CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-8, -0.959938943, -6.756908279999999e-8, 1, 8.6151708e-9, 0.959938943, 6.24481444e-8, 0.280209213)
                            CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-8, 0.936994851, 6.29478194e-8, 1, 7.783842900000001e-8, -0.936994851, 3.1789465299999997e-8, 0.349343032)
                        end
                    else
                        MsBoss = 'Bobby [Lv. 55] [Boss]'
                        NameBoss = 'Bobby'
                        NameQuestBoss = 'BuggyQuest1'
                        LevelQuestBoss = 3
                        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.585705399999999e-9, 0.280922383, -4.06310328e-8, 1, -1.11807175e-7, -0.280922383, -1.18718916e-7, -0.959730506)
                        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.1653087399999995e-10, 1, 1.0889780199999999e-9, 0.29113996, -1.19218679e-9, 0.956680477)
                    end
                else
                    MsBoss = 'The Gorilla King [Lv. 25] [Boss]'
                    NameBoss = 'The Gorilla King'
                    NameQuestBoss = 'JungleQuest'
                    LevelQuestBoss = 3
                    CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-6, -0.997892559, 1.41431883e-7, 1, -4.70933674e-6, 0.997892559, 1.64442184e-7, 0.0648873374)
                    CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-8, 0.950426519, -3.3727548799999996e-8, 1, 7.065018080000001e-8, -0.950426519, -5.40241736e-8, 0.310949147)
                end
            else
                MsBoss = 'Greybeard [Lv. 750] [Raid Boss]'
                NameBoss = 'Greybeard'
                CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-8, 0.901083171, -3.0443168e-8, 1, -3.17633075e-9, -0.901083171, -2.88092288e-8, -0.433646321)
            end
        else
            MsBoss = 'The Saw [Lv. 100] [Boss]'
            NameBoss = 'The Saw'
            CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.8836577299999995e-8, 0.956968188, 6.9841362899999995e-8, 1, -5.07531119e-8, -0.956968188, 5.21077759e-8, -0.290192783)
        end
    else
        MsBoss = 'Saber Expert [Lv. 200] [Boss]'
        NameBoss = 'Saber Expert'
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-8, 0.512275636, -4.85649254e-9, 1, -1.40823326e-8, -0.512275636, 9.6063415e-9, 0.858821094)
    end
end
CheckMonMaterial = function()
    if World1 then
        if _G.Select_Material ~= 'Fish Tail' then
            if _G.Select_Material ~= 'Scrap Metal' then
                if _G.Select_Material ~= 'Angel Wings' then
                    if _G.Select_Material == 'Magma Ore' then
                        MonMaterial = {
                            'Military Soldier [Lv. 300]',
                            'Military Spy [Lv. 325]',
                        }
                        CFrameMon1 = CFrame.new(-5343.2275390625, 47.15876007080078, 8635.8779296875)
                        CFrameMon2 = CFrame.new(-5752.7265625, 173.25453186035156, 8768.2568359375)
                        UseRemote = false
                        PositionRemote = nil
                        DistanceMagnitude = nil
                    end
                else
                    MonMaterial = {
                        'Royal Squad [Lv. 525]',
                        'Royal Soldier [Lv. 550]',
                    }
                    CFrameMon1 = CFrame.new(-7579.43505859375, 5628.51318359375, -1541.471435546875)
                    CFrameMon2 = CFrame.new(-7947.5068359375, 5637.08056640625, -1759.5841064453125)
                    UseRemote = true
                    PositionRemote = Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                    DistanceMagnitude = 3000
                end
            else
                MonMaterial = {
                    'Brute [Lv. 45]',
                }
                CFrameMon1 = CFrame.new(-1151.611083984375, 14.809885025024414, 4350.5009765625)
                CFrameMon2 = nil
                UseRemote = false
                PositionRemote = nil
                DistanceMagnitude = nil
            end
        else
            MonMaterial = {
                'Fishman Warrior [Lv. 375]',
                'Fishman Commando [Lv. 400]',
            }
            CFrameMon1 = CFrame.new(60946.4765625, 48.79884719848633, 1528.651123046875)
            CFrameMon2 = CFrame.new(61939.171875, 76.609375, 1594.226318359375)
            UseRemote = true
            PositionRemote = Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
            DistanceMagnitude = 3000
        end
    elseif World2 then
        if _G.Select_Material ~= 'Magma Ore' then
            if _G.Select_Material ~= 'Radioactive' then
                if _G.Select_Material ~= 'Scrap Metal' then
                    if _G.Select_Material ~= 'Vampire Fang' then
                        if _G.Select_Material ~= 'Mystic Droplet' then
                            if _G.Select_Material == 'Ectoplasm' then
                                MonMaterial = {
                                    'Ship Deckhand [Lv. 1250]',
                                    'Ship Engineer [Lv. 1275]',
                                    'Ship Steward [Lv. 1300]',
                                    'Ship Officer [Lv. 1325]',
                                }
                                CFrameMon1 = CFrame.new(904.4072265625, 181.05767822266, 33341.38671875)
                                CFrameMon2 = nil
                                UseRemote = true
                                PositionRemote = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                                DistanceMagnitude = 20000
                            end
                        else
                            MonMaterial = {
                                'Water Fighter [Lv. 1450]',
                                'Sea Soldier [Lv. 1425]',
                            }
                            CFrameMon1 = CFrame.new(-3359.244873046875, 283.64251708984375, -10532.439453125)
                            CFrameMon2 = CFrame.new(-3053.43212890625, 29.540376663208008, -9753.53125)
                            UseRemote = false
                            PositionRemote = nil
                            DistanceMagnitude = nil
                        end
                    else
                        MonMaterial = {
                            'Vampire [Lv. 975]',
                        }
                        CFrameMon1 = CFrame.new(-6012.06884765625, 6.402711868286133, -1327.3607177734375)
                        CFrameMon2 = nil
                        UseRemote = false
                        PositionRemote = nil
                        DistanceMagnitude = nil
                    end
                else
                    MonMaterial = {
                        'Swan Pirate [Lv. 775]',
                    }
                    CFrameMon1 = CFrame.new(924.0616455078125, 156.94332885742188, 1246.7391357421875)
                    CFrameMon2 = nil
                    UseRemote = false
                    PositionRemote = nil
                    DistanceMagnitude = nil
                end
            else
                MonMaterial = {
                    'Factory Staff [Lv. 800]',
                }
                CFrameMon1 = CFrame.new(230.01336669921875, 72.95976257324219, -116.04893493652344)
                CFrameMon2 = nil
                UseRemote = false
                PositionRemote = nil
                DistanceMagnitude = nil
            end
        else
            MonMaterial = {
                'Magma Ninja [Lv. 1175]',
                'Lava Pirate [Lv. 1200]',
            }
            CFrameMon1 = CFrame.new(-5203.63671875, 51.062286376953125, -4714.994140625)
            CFrameMon2 = CFrame.new(-5306.43798828125, 29.571359634399414, -5894.27783203125)
            UseRemote = false
            PositionRemote = nil
            DistanceMagnitude = nil
        end
    elseif World3 then
        if _G.Select_Material ~= 'Scrap Metal' then
            if _G.Select_Material ~= 'Conjured Cocoa' then
                if _G.Select_Material ~= 'Fish Tail' then
                    if _G.Select_Material ~= 'Mini Tusk' then
                        if _G.Select_Material ~= 'Dragon Scale' then
                            if _G.Select_Material ~= 'Demonic Wisp' then
                                if _G.Select_Material ~= 'Bones' then
                                    if _G.Select_Material == 'Gunpowder' then
                                        MonMaterial = {
                                            'Pistol Billionaire [Lv. 1525]',
                                        }
                                        CFrameMon1 = CFrame.new(-443.97198486328125, 112.47701263427734, 5947.95947265625)
                                        CFrameMon2 = nil
                                        UseRemote = false
                                        PositionRemote = nil
                                        DistanceMagnitude = nil
                                    end
                                else
                                    MonMaterial = {
                                        'Posessed Mummy [Lv. 2050]',
                                        'Living Zombie [Lv. 2000]',
                                        'Reborn Skeleton [Lv. 1975]',
                                        'Demonic Soul [Lv. 2025]',
                                    }
                                    CFrameMon1 = CFrame.new(-9663.041015625, 233.42742919921875, 6206.27294921875)
                                    CFrameMon2 = nil
                                    UseRemote = false
                                    PositionRemote = nil
                                    DistanceMagnitude = nil
                                end
                            else
                                MonMaterial = {
                                    'Demonic Soul [Lv. 2025]',
                                }
                                CFrameMon1 = CFrame.new(-9663.041015625, 233.42742919921875, 6206.27294921875)
                                CFrameMon2 = nil
                                UseRemote = false
                                PositionRemote = nil
                                DistanceMagnitude = nil
                            end
                        else
                            MonMaterial = {
                                'Dragon Crew Archer [Lv. 1600]',
                                'Dragon Crew Warrior [Lv. 1575]',
                            }
                            CFrameMon1 = CFrame.new(6715.80126953125, 432.09820556640625, 115.2357177734375)
                            CFrameMon2 = CFrame.new(6294.59765625, 107.0944595336914, -1080.756591796875)
                            UseRemote = false
                            PositionRemote = nil
                            DistanceMagnitude = nil
                        end
                    else
                        MonMaterial = {
                            'Mythological Pirate [Lv. 1850]',
                        }
                        CFrameMon1 = CFrame.new(-13450.314453125, 542.9275512695313, -6960.72119140625)
                        CFrameMon2 = nil
                        UseRemote = false
                        PositionRemote = nil
                        DistanceMagnitude = nil
                    end
                else
                    MonMaterial = {
                        'Fishman Raider [Lv. 1775]',
                        'Fishman Captain [Lv. 1800]',
                    }
                    CFrameMon1 = CFrame.new(-10529.806640625, 375.4804992675781, -8268.6171875)
                    CFrameMon2 = nil
                    UseRemote = false
                    PositionRemote = nil
                    DistanceMagnitude = nil
                end
            else
                MonMaterial = {
                    'Cocoa Warrior [Lv. 2300]',
                    'Chocolate Bar Battler [Lv. 2325]',
                    'Sweet Thief [Lv. 2350]',
                    'Candy Rebel [Lv. 2375]',
                }
                CFrameMon1 = CFrame.new(212.10775756835938, 126.62699890136719, -12604.9794921875)
                CFrameMon2 = nil
                UseRemote = false
                PositionRemote = nil
                DistanceMagnitude = nil
            end
        else
            MonMaterial = {
                'Jungle Pirate [Lv. 1900]',
            }
            CFrameMon1 = CFrame.new(-11986.0595703125, 377.293212890625, -10457.796875)
            CFrameMon2 = nil
            UseRemote = false
            PositionRemote = nil
            DistanceMagnitude = nil
        end
    end
end
TableFindFirstChild = function(p12)
    for _, v58 in pairs(p12)do
        if game:GetService('Workspace').Enemies:FindFirstChild(v58) then
            return true
        end
    end

    return false
end
AutoHaki = function()
    if not game:GetService('Players').LocalPlayer.Character:FindFirstChild('HasBuso') then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
    end
end
EquipWeapon = function(p13)
    if not _G.NotAutoEquip and game.Players.LocalPlayer.Backpack:FindFirstChild(p13) then
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(p13)

        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end
Tween = function(p14)
    Distance = (p14.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

    if Distance >= 10 then
        if Distance >= 170 then
            if Distance >= 1000 then
                if Distance >= 1000 then
                    Speed = 250
                end
            else
                Speed = 350
            end
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p14
            Speed = 350
        end
    else
        Speed = 1000
    end

    game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {CFrame = p14}):Play()
end
Fast_TP = function(p15)
    local _Character = game.Players.LocalPlayer.Character

    if (p15.Position - _Character.HumanoidRootPart.Position).Magnitude <= 5000 or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
    else
        game.Players.LocalPlayer.Character.Humanoid.Health = 0

        local __continue_break_2 = false

        while true do
            task.wait()

            if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p15
            end
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
            else
                break
            end
        end
    end

    return
end
TP = function(p16)
    if _G.Fast_TP then
        if (p16.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 or 0 >= game.Players.LocalPlayer.Character.Humanoid.Health then
            if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                Tween(p16)
            end
        else
            Fast_TP(p16)
        end
    else
        Tween(p16)
    end
end
StopTween = function(p17)
    if not p17 then
        _G.StopTween = true

        wait()
        TP(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()

        if game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
        end

        _G.StopTween = false
        _G.Clip = false
    end
end
UseCode = function(p18)
    game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p18)
end

local u6 = debug.getupvalues(require(game:GetService('Players').LocalPlayer.PlayerScripts:WaitForChild('CombatFramework')))[2]

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

CurveFuckWeapon = function()
    local v59 = u6.activeController.blades[1]

    if v59 then
        while v59.Parent ~= game.Players.LocalPlayer.Character do
            v59 = v59.Parent
        end

        return v59
    else
        return
    end
end
getHits = function(p19)
    local v60 = workspace.Enemies:GetChildren()
    local v61 = workspace.Characters:GetChildren()
    local v62 = {}

    for v63 = 1, #v60 do
        local _Humanoid = v60[v63]:FindFirstChildOfClass('Humanoid')

        if _Humanoid then
            if _Humanoid.RootPart then
                if _Humanoid.Health > 0 then
                    if game.Players.LocalPlayer:DistanceFromCharacter(_Humanoid.RootPart.Position) < p19 + 5 then
                        table.insert(v62, _Humanoid.RootPart)
                    end
                end
            end
        end
    end
    for v64 = 1, #v61 do
        local v65 = v61[v64]

        if v65 ~= game.Players.LocalPlayer.Character then
            local _Humanoid2 = v65:FindFirstChildOfClass('Humanoid')

            if _Humanoid2 then
                if _Humanoid2.RootPart then
                    if _Humanoid2.Health > 0 then
                        if game.Players.LocalPlayer:DistanceFromCharacter(_Humanoid2.RootPart.Position) < p19 + 5 then
                            table.insert(v62, _Humanoid2.RootPart)
                        end
                    end
                end
            end
        end
    end

    return v62
end
Boost = function()
    task.spawn(function()
        game:GetService('ReplicatedStorage').RigControllerEvent:FireServer('weaponChange', tostring(CurveFuckWeapon()))
    end)
end
Unboost = function()
    task.spawn(function()
        game:GetService('ReplicatedStorage').RigControllerEvent:FireServer('unequipWeapon', tostring(CurveFuckWeapon()))
    end)
end

local u7 = 0

Instance.new('Animation')

FastAttack = function()
    local _activeController = u6.activeController

    if _activeController and _activeController.equipped then
        task.spawn(function()
            if tick() - u7 <= 0.5 then
                _activeController:attack()
                game:GetService('ReplicatedStorage').RigControllerEvent:FireServer('hit', getHits(120), 2, '')
            else
                _activeController:attack()

                u7 = tick()
            end
        end)
    end
end
Attack = function()
    task.spawn(function()
        u6.activeController:attack()
    end)
end
Server_Hop = function()
    pcall(function()
        for v66 = math.random(1, math.random(40, 75)), 100 do
            remote = game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer(v66)

            for v67, v68 in pairs(remote)do
                if tonumber(v68.Count) < 12 then
                    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v67)
                end
            end
        end
    end)
end
Server_Hop_Low = function()
    pcall(function()
        for v69 = math.random(1, math.random(40, 75)), 100 do
            remote = game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer(v69)

            for v70, v71 in pairs(remote)do
                if tonumber(v71.Count) < 5 then
                    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v70)
                end
            end
        end
    end)
end
RemoveSpaces = function(p20)
    return p20:gsub(' Fruit', '')
end
LoadFruit = function()
    for v72 = 1, #game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventoryFruits')do
        v = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventoryFruits')

        local v73 = v72

        for _ = 1, #v do
            v2 = v[v73]

            if v2.Price >= 1000000 then
                NameFruit = v2.Name
            end
        end
    end

    GetFruit = function(p21)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LoadFruit', p21)
    end

    if NameFruit ~= nil then
        GetFruit(NameFruit)
    end
end
CheckMaterial = function(p22)
    for _, v74 in pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))do
        if v74.Type ~= 'Material' then
        elseif v74.Name ~= p22 then
        else
            return v74.Count
        end
    end

    return 0
end
CheckWeapon = function(p23)
    for _, v75 in pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))do
        if v75.Name ~= p23 then
        else
            return true
        end
    end

    return false
end

local u8 = function(p24)
    return math.floor(tonumber(p24) + 0.5)
end

isnil = function(p25)
    return p25 == nil
end
Number = math.random(1, 1000000)
ESP_Player = function()
    for _, u9 in pairs(game.Players:GetChildren())do
        pcall(function()
            if not isnil(u9.Character) then
                if _G.ESP_Player then
                    if isnil(u9.Character.Head) or (u9.Character.Head:FindFirstChild('NameTag' .. Number) or u9.Name == game.Players.LocalPlayer.Name) then
                        u9.Character.Head['NameTag' .. Number].NumberText.Text = u8((game:GetService('Players').LocalPlayer.Character.Head.Position - u9.Character.Head.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui = Instance.new('BillboardGui', u9.Character.Head)
                        local _TextLabel = Instance.new('TextLabel')
                        local _TextLabel2 = Instance.new('TextLabel')

                        _BillboardGui.Name = 'NameTag' .. Number
                        _BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui.Adornee = u9.Character.Head
                        _BillboardGui.AlwaysOnTop = true
                        _TextLabel.Name = 'NameText'
                        _TextLabel.Parent = _BillboardGui
                        _TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                        _TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel.BackgroundTransparency = 1
                        _TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
                        _TextLabel.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel.TextYAlignment = 'Top'
                        _TextLabel.Font = Enum.Font.SourceSansBold
                        _TextLabel.Text = u9.Name

                        if u9.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel.TextColor3 = Color3.new(0, 0, 255)
                        else
                            _TextLabel.TextColor3 = Color3.new(255, 0, 0)
                        end

                        _TextLabel.TextSize = 20
                        _TextLabel.TextStrokeTransparency = 0.5
                        _TextLabel.TextWrapped = true
                        _TextLabel2.Name = 'NumberText'
                        _TextLabel2.Parent = _BillboardGui
                        _TextLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
                        _TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel2.BackgroundTransparency = 1
                        _TextLabel2.Position = UDim2.new(0.5, 0, 1, 0)
                        _TextLabel2.Size = UDim2.new(1, 0, 0.699999988, 0)
                        _TextLabel2.TextYAlignment = 'Top'
                        _TextLabel2.Font = Enum.Font.SourceSansBold
                        _TextLabel2.Text = u8((game:GetService('Players').LocalPlayer.Character.Head.Position - u9.Character.Head.Position).Magnitude / 3) .. ' M'
                        _TextLabel2.TextColor3 = Color3.fromRGB(255, 128, 0)
                        _TextLabel2.TextSize = 20
                        _TextLabel2.TextStrokeTransparency = 0.5
                        _TextLabel2.TextWrapped = true
                    end
                elseif u9.Character.Head:FindFirstChild('NameTag' .. Number) then
                    u9.Character.Head:FindFirstChild('NameTag' .. Number):Destroy()
                end
            end
        end)
    end
end
ESP_Chest = function()
    for _, u10 in pairs(game.Workspace:GetChildren())do
        pcall(function()
            if _G.ESP_Chest then
                if string.find(u10.Name, 'Chest') then
                    if u10:FindFirstChild('NameTag' .. Number) then
                        u10['NameTag' .. Number].NumberText.Text = u8((game:GetService('Players').LocalPlayer.Character.Head.Position - u10.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui2 = Instance.new('BillboardGui', u10)
                        local _TextLabel3 = Instance.new('TextLabel')
                        local _TextLabel4 = Instance.new('TextLabel')

                        _BillboardGui2.Name = 'NameTag' .. Number
                        _BillboardGui2.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui2.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui2.Adornee = u10
                        _BillboardGui2.AlwaysOnTop = true
                        _TextLabel3.Name = 'NameText'
                        _TextLabel3.Parent = _BillboardGui2
                        _TextLabel3.AnchorPoint = Vector2.new(0.5, 0.5)
                        _TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel3.BackgroundTransparency = 1
                        _TextLabel3.Position = UDim2.new(0.5, 0, 0.5, 0)
                        _TextLabel3.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel3.TextYAlignment = 'Top'
                        _TextLabel3.Font = Enum.Font.SourceSansBold

                        if u10.Name == 'Chest1' then
                            _TextLabel3.TextColor3 = Color3.fromRGB(109, 109, 109)
                            _TextLabel3.Text = 'Chest 1'
                        end
                        if u10.Name == 'Chest2' then
                            _TextLabel3.TextColor3 = Color3.fromRGB(173, 158, 21)
                            _TextLabel3.Text = 'Chest 2'
                        end
                        if u10.Name == 'Chest3' then
                            _TextLabel3.TextColor3 = Color3.fromRGB(85, 255, 255)
                            _TextLabel3.Text = 'Chest 3'
                        end

                        _TextLabel3.TextSize = 20
                        _TextLabel3.TextStrokeTransparency = 0.5
                        _TextLabel3.TextWrapped = true
                        _TextLabel4.Name = 'NumberText'
                        _TextLabel4.Parent = _BillboardGui2
                        _TextLabel4.AnchorPoint = Vector2.new(0.5, 0.5)
                        _TextLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel4.BackgroundTransparency = 1
                        _TextLabel4.Position = UDim2.new(0.5, 0, 1, 0)
                        _TextLabel4.Size = UDim2.new(1, 0, 0.699999988, 0)
                        _TextLabel4.TextYAlignment = 'Top'
                        _TextLabel4.Font = Enum.Font.SourceSansBold
                        _TextLabel4.Text = u8((game:GetService('Players').LocalPlayer.Character.Head.Position - u10.Position).Magnitude / 3) .. ' M'
                        _TextLabel4.TextColor3 = Color3.fromRGB(255, 128, 0)
                        _TextLabel4.TextSize = 20
                        _TextLabel4.TextStrokeTransparency = 0.5
                        _TextLabel4.TextWrapped = true
                    end
                end
            elseif u10:FindFirstChild('NameTag' .. Number) then
                u10:FindFirstChild('NameTag' .. Number):Destroy()
            end
        end)
    end
end
ESP_Devil_Fruit = function()
    for _, u11 in pairs(game.Workspace:GetChildren())do
        pcall(function()
            if _G.ESP_Devil_Fruit then
                if string.find(u11.Name, 'Fruit') then
                    if u11.Handle:FindFirstChild('NameTag' .. Number) then
                        u11.Handle['NameTag' .. Number].NumberText.Text = u8((game:GetService('Players').LocalPlayer.Character.Head.Position - u11.Handle.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui3 = Instance.new('BillboardGui', u11.Handle)
                        local _TextLabel5 = Instance.new('TextLabel')
                        local _TextLabel6 = Instance.new('TextLabel')

                        _BillboardGui3.Name = 'NameTag' .. Number
                        _BillboardGui3.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui3.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui3.Adornee = u11.Handle
                        _BillboardGui3.AlwaysOnTop = true
                        _TextLabel5.Name = 'NameText'
                        _TextLabel5.Parent = _BillboardGui3
                        _TextLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
                        _TextLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel5.BackgroundTransparency = 1
                        _TextLabel5.Position = UDim2.new(0.5, 0, 0.5, 0)
                        _TextLabel5.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel5.TextYAlignment = 'Top'
                        _TextLabel5.Font = Enum.Font.SourceSansBold
                        _TextLabel5.Text = u11.Name
                        _TextLabel5.TextColor3 = Color3.new(102, 255, 51)
                        _TextLabel5.TextSize = 20
                        _TextLabel5.TextStrokeTransparency = 0.5
                        _TextLabel5.TextWrapped = true
                        _TextLabel6.Name = 'NumberText'
                        _TextLabel6.Parent = _BillboardGui3
                        _TextLabel6.AnchorPoint = Vector2.new(0.5, 0.5)
                        _TextLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel6.BackgroundTransparency = 1
                        _TextLabel6.Position = UDim2.new(0.5, 0, 1, 0)
                        _TextLabel6.Size = UDim2.new(1, 0, 0.699999988, 0)
                        _TextLabel6.TextYAlignment = 'Top'
                        _TextLabel6.Font = Enum.Font.SourceSansBold
                        _TextLabel6.Text = u8((game:GetService('Players').LocalPlayer.Character.Head.Position - u11.Handle.Position).Magnitude / 3) .. ' M'
                        _TextLabel6.TextColor3 = Color3.fromRGB(255, 128, 0)
                        _TextLabel6.TextSize = 20
                        _TextLabel6.TextStrokeTransparency = 0.5
                        _TextLabel6.TextWrapped = true
                    end
                end
            elseif u11.Handle:FindFirstChild('NameTag' .. Number) then
                u11.Handle:FindFirstChild('NameTag' .. Number):Destroy()
            end
        end)
    end
end
ESP_Flower = function()
    for _, u12 in pairs(game.Workspace:GetChildren())do
        pcall(function()
            if u12.Name == 'Flower2' or u12.Name == 'Flower1' then
                if _G.ESP_Flower then
                    if u12:FindFirstChild('NameTag' .. Number) then
                        u12['NameTag' .. Number].NumberText.Text = u8((game:GetService('Players').LocalPlayer.Character.Head.Position - u12.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui4 = Instance.new('BillboardGui', u12)
                        local _TextLabel7 = Instance.new('TextLabel')
                        local _TextLabel8 = Instance.new('TextLabel')

                        _BillboardGui4.Name = 'NameTag' .. Number
                        _BillboardGui4.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui4.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui4.Adornee = u12
                        _BillboardGui4.AlwaysOnTop = true
                        _TextLabel7.Name = 'NameText'
                        _TextLabel7.Parent = _BillboardGui4
                        _TextLabel7.AnchorPoint = Vector2.new(0.5, 0.5)
                        _TextLabel7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel7.BackgroundTransparency = 1
                        _TextLabel7.Position = UDim2.new(0.5, 0, 0.5, 0)
                        _TextLabel7.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel7.TextYAlignment = 'Top'
                        _TextLabel7.Font = Enum.Font.SourceSansBold

                        if u12.Name == 'Flower1' then
                            _TextLabel7.Text = 'Blue Flower'
                            _TextLabel7.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u12.Name == 'Flower2' then
                            _TextLabel7.Text = 'Red Flower'
                            _TextLabel7.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end

                        _TextLabel7.TextSize = 20
                        _TextLabel7.TextStrokeTransparency = 0.5
                        _TextLabel7.TextWrapped = true
                        _TextLabel8.Name = 'NumberText'
                        _TextLabel8.Parent = _BillboardGui4
                        _TextLabel8.AnchorPoint = Vector2.new(0.5, 0.5)
                        _TextLabel8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel8.BackgroundTransparency = 1
                        _TextLabel8.Position = UDim2.new(0.5, 0, 1, 0)
                        _TextLabel8.Size = UDim2.new(1, 0, 0.699999988, 0)
                        _TextLabel8.TextYAlignment = 'Top'
                        _TextLabel8.Font = Enum.Font.SourceSansBold
                        _TextLabel8.Text = u8((game:GetService('Players').LocalPlayer.Character.Head.Position - u12.Position).Magnitude / 3) .. ' M'
                        _TextLabel8.TextColor3 = Color3.fromRGB(255, 128, 0)
                        _TextLabel8.TextSize = 20
                        _TextLabel8.TextStrokeTransparency = 0.5
                        _TextLabel8.TextWrapped = true
                    end
                elseif u12:FindFirstChild('NameTag' .. Number) then
                    u12:FindFirstChild('NameTag' .. Number):Destroy()
                end
            end
        end)
    end
end

task.spawn(function()
    while wait() do
        repeat
            wait()
        until game.CoreGui:FindFirstChild('RobloxPromptGui')

        local _ = game:GetService('Players').LocalPlayer
        local _promptOverlay = game.CoreGui.RobloxPromptGui.promptOverlay
        local _TeleportService = game:GetService('TeleportService')

        _promptOverlay.ChildAdded:connect(function(p26)
            if p26.Name == 'ErrorPrompt' then
                repeat
                    _TeleportService:Teleport(game.PlaceId)
                    wait(2)
                until false
            end
        end)
    end
end)
task.spawn(function()
    game:GetService('RunService').Heartbeat:Connect(function()
        pcall(function()
            if _G.Auto_Farm_Level or (_G.Auto_New_World or _G.Auto_Third_World) or (_G.Auto_Farm_Max_Mastery_All_Sword or _G.Auto_Cursed_Dual_Katana or (_G.Auto_Pirate_Raid or _G.Auto_Soul_Guitar)) or (_G.Auto_Farm_Boss or _G.Auto_Farm_Devil_Fruit_Mastery or (_G.Auto_Farm_Gun_Mastery or _G.Auto_Elite_Hunter) or (_G.Auto_Cake_Prince or _G.Auto_Farm_Material or (_G.Auto_Farm_All_Boss or _G.Auto_Saber))) or (_G.Auto_Pole or _G.Auto_Factory_Farm or (_G.Auto_Bartilo_Quest or _G.Auto_Rengoku) or (_G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or (_G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper)) or (_G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or (_G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch) or (_G.Auto_Canvander or _G.Auto_Twin_Hook or (_G.Auto_Serpent_Bow or _G.Auto_Death_Step)))) or (_G.Auto_SharkMan_Karate or _G.Auto_Fully_God_Human or (_G.Auto_Farm_Observation_Haki or _G.Teleport_to_Player) or (_G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or (_G.Start_Tween_Island or _G.Auto_Next_Island)) or (_G.Auto_Kill_Law or _G.Auto_Find_Mirage_Island or (_G.Auto_Tween_Chest or _G.Auto_Tween_To_Advance_Fruit_Dealer))) then
                if syn then
                    setfflag('HumanoidParallelRemoveNoPhysics', 'False')
                    setfflag('HumanoidParallelRemoveNoPhysicsNoSimulate2', 'False')
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                else
                    for _, v76 in pairs(game.Players.LocalPlayer.Character:GetDescendants())do
                        if v76:IsA('BasePart') then
                            v76.CanCollide = false
                        end
                    end

                    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                        local _BodyVelocity = Instance.new('BodyVelocity')

                        _BodyVelocity.Name = 'BodyClip'
                        _BodyVelocity.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                        _BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                        _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                    end
                    if game:GetService('Workspace'):FindFirstChild('LOL') then
                        if game:GetService('Workspace'):FindFirstChild('LOL') then
                            player = game.Players.LocalPlayer
                            character = player.Character

                            for _, v77 in pairs(character:GetDescendants())do
                                if v77:IsA('BasePart') then
                                    v77.CanCollide = false
                                end
                            end

                            game.Workspace.LOL.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 5, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        end
                    else
                        local _Part = Instance.new('Part')

                        _Part.Name = 'LOL'
                        _Part.Parent = game.Workspace
                        _Part.Anchored = true
                        _Part.Transparency = 1
                        _Part.Size = Vector3.new(10, 0.5, 10)
                    end
                end
            else
                if game:GetService('Workspace'):FindFirstChild('LOL') then
                    game:GetService('Workspace'):FindFirstChild('LOL'):Destroy()
                end
                if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
                end
            end
        end)
    end)
end)
task.spawn(function()
    while wait() do
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)

            game.Players.LocalPlayer.SimulationRadius = math.huge
        end
    end
end)
task.spawn(function()
    while wait() do
        for _, v78 in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
            if v78:IsA('Tool') then
                if v78:FindFirstChild('RemoteFunctionShoot') then
                    SelectToolWeaponGun = v78.Name
                end
            end
        end
        for _, v79 in pairs(game.Players.LocalPlayer.Character:GetChildren())do
            if v79:IsA('Tool') then
                if v79:FindFirstChild('RemoteFunctionShoot') then
                    SelectToolWeaponGun = v79.Name
                end
            end
        end
    end
end)

UseBringMob = function(p27, p28)
    for _, v80 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
        if v80:FindFirstChild('Humanoid') then
            if v80:FindFirstChild('HumanoidRootPart') then
                if v80.Name == p28 then
                    if (v80.HumanoidRootPart.Position - p27.Position).Magnitude <= _G.Distance_Bring_Mob then
                        v80.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                        v80.Humanoid.Sit = true
                        v80.Humanoid.WalkSpeed = 0
                        v80.Humanoid.PlatformStand = true

                        v80.Humanoid:ChangeState(11)

                        v80.HumanoidRootPart.CanCollide = false
                        v80.HumanoidRootPart.CFrame = p27
                    end
                end
            end
        end
    end
end

task.spawn(function()
    local v81 = getrawmetatable(game)
    local ___namecall = v81.__namecall

    setreadonly(v81, false)

    v81.__namecall = newcclosure(function(...)
        local v82 = getnamecallmethod()
        local v83 = {...}

        if tostring(v82) == 'FireServer' and (tostring(v83[1]) == 'RemoteEvent' and tostring(v83[2]) ~= 'true') and tostring(v83[2]) ~= 'false' then
            if UseSkillMasteryDevilFruit then
                v83[2] = PositionSkillMasteryDevilFruit

                return ___namecall(unpack(v83))
            end
            if AimSkillNearest then
                v83[2] = AimBotSkillPosition

                return ___namecall(unpack(v83))
            end
        end

        return ___namecall(...)
    end)
end)
task.spawn(function()
    while wait() do
        if UseGun then
            pcall(function()
                for _, v84 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                    if v84.Name == Ms then
                        local v85 = {
                            v84.HumanoidRootPart.Position,
                            v84.HumanoidRootPart,
                        }

                        game:GetService('Players').LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(v85))
                    end
                end
            end)
        end
    end
end)
task.spawn(function()
    while wait() do
        if UseGunKillPlayer then
            pcall(function()
                for _, v86 in pairs(game:GetService('Workspace').Characters:GetChildren())do
                    if v86.Name == _G.Select_Player then
                        local v87 = {
                            v86.HumanoidRootPart.Position,
                            v86.HumanoidRootPart,
                        }

                        game:GetService('Players').LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(v87))
                    end
                end
            end)
        end
    end
end)

local u13 = game:GetService('Players').LocalPlayer:GetMouse()

task.spawn(function()
    while wait() do
        if _G.Aimbot_Skill_Fov then
            pcall(function()
                local _huge = math.huge

                for _, v88 in pairs(game:GetService('Players'):GetChildren())do
                    local _HumanoidRootPart = v88.Character:FindFirstChild('HumanoidRootPart')
                    local v89, _ = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, _HumanoidRootPart.Position)
                    local v90 = Vector2.new(u13.X, u13.Y)
                    local _Magnitude = (Vector2.new(v89.X, v89.Y) - v90).Magnitude

                    if _Magnitude < _huge then
                        if _Magnitude <= _G.Select_Size_Fov then
                            if v88.Name ~= game.Players.LocalPlayer.Name then
                                _G.Aim_Players = v88
                                _huge = _Magnitude
                            end
                        end
                    end
                end
            end)
        end
    end
end)
task.spawn(function()
    local v91 = getrawmetatable(game)
    local ___namecall2 = v91.__namecall

    setreadonly(v91, false)

    v91.__namecall = newcclosure(function(...)
        local v92 = getnamecallmethod()
        local v93 = {...}

        if tostring(v92) ~= 'FireServer' or (tostring(v93[1]) ~= 'RemoteEvent' or tostring(v93[2]) == 'true') or (tostring(v93[2]) == 'false' or not _G.Aimbot_Skill_Fov) then
            return ___namecall2(...)
        end

        v93[2] = _G.Aim_Players.Character.HumanoidRootPart.Position

        return ___namecall2(unpack(v93))
    end)
end)
game:GetService('NetworkClient'):SetOutgoingKBPSLimit(math.huge)

local _VirtualUser = game:GetService('VirtualUser')

task.spawn(function()
    game:GetService('Players').LocalPlayer.Idled:connect(function()
        pcall(function()
            _VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            task.wait(1)
            _VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
    end)
end)

local v94 = {
    [game.PlaceId] = {
        Title = 'Blox Fruits',
        Icons = '',
        Welcome = function()
            return tostring('Sponser By Unique Hub\n Discord : https://discord.gg/uniquehub')
        end,
    },
}

if v94[game.PlaceId] and v94[game.PlaceId].Title == 'Blox Fruits' then
    local v95 = function(p29, ...)
        if p29 == 'Notify' then
            require(game.ReplicatedStorage.Notification).new(...):Display()
        end
    end

    v95('Notify', v94[game.PlaceId].Welcome())
    task.wait(3)
    v95('Notify', 'Buy Script Unique Hub :)')
end

local u14 = loadstring(game:HttpGet('https://raw.githubusercontent.com/xDestinyx/UiLibrary/main/LinoriaLib/Library.lua'))()
local v96 = loadstring(game:HttpGet('https://raw.githubusercontent.com/hajibeza/GUISTORAGE/main/RIPPERGui.lua'))()
local v97 = loadstring(game:HttpGet('https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/addons/SaveManager.lua'))()
local v98 = u14

u14.Notify(v98, 'Script : Loading')

local v99 = u14
local v100 = u14.CreateWindow(v99, {
    Title = 'RIPPER HUB V3 [Ramake BETA] Sponser By Unique Hub',
    Center = true,
    AutoShow = true,
})
local v101 = {
    Main = v100:AddTab('Main'),
    Player = v100:AddTab('Player'),
    BuyItem = v100:AddTab('Shop'),
    Settings = v100:AddTab('Settings'),
}

v96:SetLibrary(u14)
v96:ApplyToTab(v101.Settings)
v97:SetLibrary(u14)
v97:BuildConfigSection(v101.Settings)

UpdateTime = function()
    local v102 = math.floor(workspace.DistributedGameTime + 0.5)

    u14:SetWatermark('RIPEPR HUB | Server Time | Hour : ' .. math.floor(v102 / 3600) % 24 .. ' Minute : ' .. math.floor(v102 / 60) % 60 .. ' Second : ' .. math.floor(v102 / 1) % 60)
end

task.spawn(function()
    while true do
        UpdateTime()
        wait()
    end
end)

local v103 = v101.Main:AddLeftTabbox()
local _Main = v103:AddTab('Main')

_Main:AddToggle('Auto_Farm_Level', {
    Text = 'Auto Farm Level',
    Default = getgenv().Setting.Auto_Farm_Level,
})
Toggles.Auto_Farm_Level:OnChanged(function(p30)
    _G.Auto_Farm_Level = p30
    getgenv().Setting.Auto_Farm_Level = p30

    StopTween(_G.Auto_Farm_Level)
    saveSettings()
end)

FastFarmLevel = function()
    if game.Players.LocalPlayer.Data.Level.Value < 20 or game.Players.LocalPlayer.Data.Level.Value > 120 then
        if game.Players.LocalPlayer.Data.Level.Value <= 120 or game.Players.LocalPlayer.Data.Level.Value > 300 or not string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PlayerHunter'), 'We heard some news') then
            return
        end
        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
            for _, v104 in pairs(game:GetService('Workspace').Characters:GetChildren())do
                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v104.Name) then
                end
            end
        else
            wait(0.5)
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PlayerHunter')
        end
    else
    end

    return
end
Double_Quest = true
NormalFarmLevel = function()
    local _Value = game.Players.LocalPlayer.Data.Level.Value

    if not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
        if Double_Quest then
            local v105, v106 = u3:GetQuest()

            u5 = v106
            u4 = v105

            if not u3.DataData[u4].Used then
                u3.DataData[u4].Used = true
            end
            if _Value > 10 then
                repeat
                    wait(0.1)
                    TP(u5[u4].CFrameQuest)
                until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u5[u4].CFrameQuest.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
            end

            wait(0.5)

            if _G.Auto_Farm_Level then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', u5[u4].NameQuest, u5[u4].NumberQuest)
            end

            wait(0.5)
        else
            local v107, v108 = u3:GetQuest()

            u5 = v108
            u4 = v107

            if _Value > 10 then
                repeat
                    wait(0.1)
                    TP(u5[u4].CFrameQuest)
                until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u5[u4].CFrameQuest.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
            end

            wait(0.5)

            if _G.Auto_Farm_Level then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', u5[u4].NameQuest, u5[u4].NumberQuest)
            end

            wait(0.5)
        end
    end

    local v110 = function()
        for _, v109 in pairs(workspace.Enemies:GetChildren())do
            if v109.Name == u5[u4].Mon or v109.Name:match(u5[u4].Mon) then
                return v109
            end
        end

        return false
    end

    if not v110() then
        for _, v111 in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren())do
            if v111.Name == u5[u4].Mon or v111.Name:match(u5[u4].Mon) then
                while true do
                    task.wait(0.1)

                    if not _G.Auto_Farm_Level then
                        break
                    end

                    TP(v111.CFrame * CFrame.new(0, 30, 0))

                    if v110() then
                        break
                    end
                    if (v111.CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).magnitude <= 70 then
                        break
                    end
                end
            end
        end
    end
    if u5[u4].Mon and (u5[u4].CFrameMon or v110()) then
        if v110() then
            for _, v112 in pairs(workspace.Enemies:GetChildren())do
                if v112.Name == v110().Name then
                    if v112:FindFirstChild('Humanoid') then
                        if v112:FindFirstChild('HumanoidRootPart') then
                            if v112.Humanoid.Health > 0 then
                                while true do
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)
                                    UseBringMob(v112.HumanoidRootPart.CFrame, v112.Name)

                                    v112.HumanoidRootPart.Transparency = 1
                                    v112.HumanoidRootPart.CanCollide = false
                                    v112.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                    v112.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                    TP(v112.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                    Attack()

                                    if not _G.Auto_Farm_Level then
                                        break
                                    end
                                    if not v112 then
                                        break
                                    end
                                    if v112.Humanoid.Health <= 0 then
                                        break
                                    end
                                    if not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        return
    else
        return
    end
end
NoQuestFarm = function()
    CheckQuest()

    if game.Workspace.Enemies:FindFirstChild(Ms) then
        for _, v113 in pairs(game.Workspace.Enemies:GetChildren())do
            if v113.Name == Ms then
                if v113:FindFirstChild('HumanoidRootPart') then
                    if v113:FindFirstChild('Humanoid') then
                        if v113.Humanoid.Health > 0 then
                            while true do
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.Select_Weapon)
                                UseBringMob(v113.HumanoidRootPart.CFrame, v113.Name)

                                v113.HumanoidRootPart.Transparency = 1
                                v113.HumanoidRootPart.CanCollide = false
                                v113.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                v113.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                TP(v113.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                Attack()

                                if not v113.Parent then
                                    break
                                end
                                if v113.Humanoid.Health <= 0 then
                                    break
                                end
                                if _G.Auto_Farm_Level == false then
                                    break
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        for _, v114 in pairs(game.Workspace._WorldOrigin.EnemySpawns:GetChildren())do
            if v114.Name == NameMon or v114.Name:match(NameMon) then
                while true do
                    wait()

                    if not _G.Auto_Farm_Level then
                        break
                    end

                    TP(v114.CFrame * CFrame.new(0, 20, 0))

                    if game:GetService('Workspace').Enemies:FindFirstChild(Ms) then
                        break
                    end
                    if (v114.CFrame.Position - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).magnitude <= 30 then
                        break
                    end
                end
            end
        end
    end
end

task.spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Farm_Level then
                if _G.Mode_Farm ~= 'Default Mode' then
                    if _G.Mode_Farm == 'No Quest' then
                        NoQuestFarm()
                    end
                elseif game.Players.LocalPlayer.Data.Level.Value < 20 or game.Players.LocalPlayer.Data.Level.Value > 120 then
                    if game.Players.LocalPlayer.Data.Level.Value <= 120 or game.Players.LocalPlayer.Data.Level.Value > 300 or not string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PlayerHunter'), 'We heard some news') then
                        NormalFarmLevel()
                    else
                        FastFarmLevel()
                    end
                else
                    FastFarmLevel()
                end
            end
        end)
    end
end)
_Main:AddToggle('Auto_Farm_Chest', {
    Text = 'Auto Farm Chest [Risk]',
    Default = getgenv().Setting.Auto_Farm_Chest,
})
Toggles.Auto_Farm_Chest:OnChanged(function(p31)
    _G.Auto_Farm_Chest = p31
    getgenv().Setting.Auto_Farm_Chest = p31

    StopTween(_G.Auto_Farm_Chest)
    saveSettings()
end)
task.spawn(function()
    while task.wait() do
        if _G.Auto_Farm_Chest then
            pcall(function()
                if game:GetService('Workspace'):FindFirstChild('Chest1') or (game:GetService('Workspace'):FindFirstChild('Chest2') or game:GetService('Workspace'):FindFirstChild('Chest3')) then
                    for _, v115 in pairs(game:GetService('Workspace'):GetChildren())do
                        if v115.Name == 'Chest1' or v115.Name == 'Chest2' or v115.Name == 'Chest3' then
                            if not (game.Workspace:FindFirstChild('Chest4') or game.Workspace:FindFirstChild('Chest3') or (game.Workspace:FindFirstChild('Chest2') or game.Workspace:FindFirstChild('Chest1'))) then
                                game.Workspace:FindFirstChild('Chest')
                            end

                            local _CrewBBG = game.Players.LocalPlayer.Character:FindFirstChild('CrewBBG', true)

                            if _CrewBBG then
                                _CrewBBG:Destroy()
                            end
                            if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v115.CFrame

                                firesignal(v115.Touched, game.Players.LocalPlayer.Character.HumanoidRootPart)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

if World1 then
    _Main:AddToggle('Auto_New_World', {
        Text = 'Auto New World',
        Default = getgenv().Setting.Auto_New_World,
    })
    Toggles.Auto_New_World:OnChanged(function(p32)
        _G.Auto_New_World = p32
        getgenv().Setting.Auto_New_World = p32

        StopTween(_G.Auto_New_World)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_New_World then
                pcall(function()
                    if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
                        if getgenv().Setting.Auto_Farm_Level == true then
                            _G.Auto_Farm_Level = false
                        end
                        if game.Workspace.Map.Ice.Door.CanCollide ~= true or game.Workspace.Map.Ice.Door.Transparency ~= 0 then
                            if game.Workspace.Map.Ice.Door.CanCollide ~= false or game.Workspace.Map.Ice.Door.Transparency ~= 1 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                            elseif game:GetService('Workspace').Enemies:FindFirstChild('Ice Admiral [Lv. 700] [Boss]') then
                                for _, v116 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                    if v116.Name == 'Ice Admiral [Lv. 700] [Boss]' then
                                        if v116:FindFirstChild('Humanoid') then
                                            if v116:FindFirstChild('HumanoidRootPart') then
                                                if v116.Humanoid.Health > 0 then
                                                    repeat
                                                        wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)

                                                        v116.HumanoidRootPart.Transparency = 1
                                                        v116.HumanoidRootPart.CanCollide = false
                                                        v116.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                        v116.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                        TP(v116.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                        Attack()
                                                    until v116.Humanoid.Health <= 0 or not v116.Parent or not _G.Auto_New_World

                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        else
                            repeat
                                wait()
                                TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World

                            wait(3)

                            if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
                                wait(1)
                                EquipWeapon('Key')
                            end
                        end
                    end
                end)
            end
        end
    end)
elseif World2 then
    _Main:AddToggle('Auto_Open_Swan_Room', {
        Text = 'Auto Open Swan Room',
        Default = getgenv().Setting.Auto_Open_Swan_Room,
    })
    Toggles.Auto_Open_Swan_Room:OnChanged(function(p33)
        _G.Auto_Open_Swan_Room = p33
        getgenv().Setting.Auto_Open_Swan_Room = p33

        StopTween(_G.Auto_Open_Swan_Room)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Open_Swan_Room and World2 then
                pcall(function()
                    LoadFruit()

                    _G.Auto_Bring_Fruit = true

                    wait(10)

                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Quake Fruit') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Human-Human: Buddha Fruit')) or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Human-Human: Buddha Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('String Fruit') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('String Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird: Phoenix Fruit'))) or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird: Phoenix Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rumble Fruit') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Paw Fruit')) or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Paw Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Gravity Fruit') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Gravity Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dough Fruit')))) or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Venom Fruit') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Venom Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Control Fruit')) or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Control Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Fruit') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Fruit') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Soul Fruit'))) or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Soul Fruit')) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TalkTrevor', '1')
                        wait(1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TalkTrevor', '2')
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TalkTrevor', '1')
                        wait(1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TalkTrevor', '3')
                    else
                        Server_Hop()
                    end
                end)
            end
        end
    end)
    _Main:AddToggle('Auto_Third_World', {
        Text = 'Auto Third World',
        Default = getgenv().Setting.Auto_Third_World,
    })
    Toggles.Auto_Third_World:OnChanged(function(p34)
        _G.Auto_Third_World = p34
        getgenv().Setting.Auto_Third_World = p34

        StopTween(_G.Auto_Third_World)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Third_World then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1500 and World2 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'Check') == 0 then
                        if getgenv().Setting.Auto_Farm_Level then
                            _G.Auto_Farm_Level = false
                        end

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'Begin')

                        if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra [Lv. 1500] [Boss]') then
                            local _rip_indraLv1500Boss = game:GetService('Workspace').Enemies['rip_indra [Lv. 1500] [Boss]']

                            if _rip_indraLv1500Boss:FindFirstChild('Humanoid') and _rip_indraLv1500Boss:FindFirstChild('HumanoidRootPart') and _rip_indraLv1500Boss.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)

                                    _rip_indraLv1500Boss.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                    _rip_indraLv1500Boss.HumanoidRootPart.CanCollide = false
                                    _rip_indraLv1500Boss.Humanoid.WalkSpeed = 0

                                    TP(_rip_indraLv1500Boss.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                    Attack()
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                until not _G.Auto_Third_World or _rip_indraLv1500Boss.Humanoid.Health <= 0 or not _rip_indraLv1500Boss.Parent
                            end
                        else
                            TP(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                end)
            end
        end
    end)
elseif World3 then
    _Main:AddToggle('Auto_Farm_Max_Mastery_All_Sword', {
        Text = 'Auto Max Mastery All Sword',
        Default = getgenv().Setting.Auto_Farm_Max_Mastery_All_Sword,
    })
    Toggles.Auto_Farm_Max_Mastery_All_Sword:OnChanged(function(p35)
        _G.Auto_Farm_Max_Mastery_All_Sword = p35
        getgenv().Setting.Auto_Farm_Max_Mastery_All_Sword = p35

        StopTween(_G.Auto_Farm_Max_Mastery_All_Sword)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Farm_Max_Mastery_All_Sword then
                pcall(function()
                    local v117 = false

                    for _, v118 in ipairs({
                        'Candy Rebel [Lv. 2375]',
                        'Sweet Thief [Lv. 2350]',
                        'Chocolate Bar Battler [Lv. 2325]',
                        'Cocoa Warrior [Lv. 2300]',
                    })do
                        if game.Workspace.Enemies:FindFirstChild(v118) then
                            v117 = true

                            local v119 = game.Workspace.Enemies[v118]

                            if v119:FindFirstChild('Humanoid') then
                                if v119:FindFirstChild('HumanoidRootPart') then
                                    if v119.Humanoid.Health > 0 then
                                        while true do
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(weaponSword)
                                            UseBringMob(v119.HumanoidRootPart.CFrame, v118)

                                            v119.HumanoidRootPart.CanCollide = false
                                            v119.Humanoid.WalkSpeed = 0
                                            v119.Head.CanCollide = false
                                            v119.HumanoidRootPart.Size = Vector3.new(65, 65, 65)

                                            TP(v119.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                            Attack()

                                            if not _G.Auto_Farm_Max_Mastery_All_Sword then
                                                break
                                            end
                                            if not v119.Parent then
                                                break
                                            end
                                            if v119.Humanoid.Health <= 0 then
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end

                    if not v117 then
                        TP(CFrame.new(252.35482788085938, 123.5201644897461, -12547.3564453125))
                    end
                end)
            end
        end
    end)

    local u15 = function()
        local v120 = {}

        for _, v121 in ipairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))do
            if v121.Type == 'Sword' then
                if v121.Mastery < 600 then
                    table.insert(v120, v121.Name)
                end
            end
        end

        return v120[math.random(1, #v120)]
    end

    task.spawn(function()
        while wait() do
            if _G.Auto_Farm_Max_Mastery_All_Sword then
                pcall(function()
                    local v122 = nil
                    local __continue_break_3 = false

                    for _, v123 in ipairs(game.Players.LocalPlayer.Character:GetChildren())do
                        if v123:IsA('Tool') then
                            if v123.ToolTip ~= 'Sword' then
                            else
                                v122 = v123.Name

                                break
                            end
                        end
                    end

                    if not v122 then
                        local __continue_break_4 = false

                        for _, v124 in ipairs(game.Players.LocalPlayer.Backpack:GetChildren())do
                            if v124:IsA('Tool') then
                                if v124.ToolTip ~= 'Sword' then
                                else
                                    v122 = v124.Name

                                    break
                                end
                            end
                        end
                    end
                    if v122 then
                        local v125 = game.Players.LocalPlayer.Character:FindFirstChild(v122)
                        local v126 = game.Players.LocalPlayer.Backpack:FindFirstChild(v122)

                        if v125 and v125.Level.Value == 600 then
                            local v127 = u15()

                            wait()
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LoadItem', v127)
                        elseif v126 and v126.Level.Value == 600 then
                            local v128 = u15()

                            wait()
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LoadItem', v128)
                        end
                    end
                end)
            end
        end
    end)
end

local _Boss = v103:AddTab('Boss')
local v129 = u14
local u16 = u6
local u17 = {}

for _, v130 in pairs(game:GetService('ReplicatedStorage'):GetChildren())do
    if string.find(v130.Name, 'Boss') then
        if not v130.Name == 'Ice Admiral [Lv. 700] [Boss]' then
            table.insert(u17, v130.Name)
        end
    end
end

local _Select_Boss = _Boss:AddDropdown('Select_Boss', {
    Values = u17,
    Default = getgenv().Setting.Select_Boss,
    Multi = false,
    Text = 'Boss',
})

Options.Select_Boss:OnChanged(function(p36)
    _G.Select_Boss = p36
    getgenv().Setting.Select_Boss = p36

    saveSettings()
end)
_Boss:AddButton('Refresh Boss', function()
    table.clear(u17)

    for _, v131 in pairs(game:GetService('ReplicatedStorage'):GetChildren())do
        if string.find(v131.Name, 'Boss') then
            if v131.Name ~= 'Ice Admiral [Lv. 700] [Boss]' then
                table.insert(u17, v131.Name)
            end
        end
    end

    _Select_Boss:SetValues(u17)
end)
_Boss:AddToggle('Auto_Farm_Boss', {
    Text = 'Auto Farm Boss',
    Default = getgenv().Setting.Auto_Farm_Boss,
})
Toggles.Auto_Farm_Boss:OnChanged(function(p37)
    _G.Auto_Farm_Boss = p37
    getgenv().Setting.Auto_Farm_Boss = p37

    StopTween(_G.Auto_Farm_Boss)
    saveSettings()
end)
_Boss:AddToggle('Auto_Quest_Boss', {
    Text = 'Auto Quest Boss',
    Default = getgenv().Setting.Auto_Quest_Boss,
})
Toggles.Auto_Quest_Boss:OnChanged(function(p38)
    _G.Auto_Quest_Boss = p38
    getgenv().Setting.Auto_Quest_Boss = p38

    StopTween(_G.Auto_Quest_Boss)
    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Farm_Boss then
            pcall(function()
                CheckBossQuest()

                if MsBoss == 'Soul Reaper [Lv. 2100] [Raid Boss]' or (MsBoss == 'Longma [Lv. 2000] [Boss]' or MsBoss == 'Don Swan [Lv. 1000] [Boss]') or (MsBoss == 'Cursed Captain [Lv. 1325] [Raid Boss]' or MsBoss == 'Order [Lv. 1250] [Raid Boss]' or MsBoss == 'rip_indra True Form [Lv. 5000] [Raid Boss]') then
                    if game:GetService('Workspace').Enemies:FindFirstChild(MsBoss) then
                        for _, v132 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                            if v132.Name == MsBoss then
                                if v132:FindFirstChild('HumanoidRootPart') then
                                    if v132:FindFirstChild('Humanoid') then
                                        if v132.Humanoid.Health > 0 then
                                            while true do
                                                wait()
                                                EquipWeapon(_G.Select_Weapon)
                                                AutoHaki()
                                                TP(v132.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))

                                                v132.HumanoidRootPart.CanCollide = false
                                                v132.HumanoidRootPart.Size = Vector3.new(65, 65, 65)

                                                Attack()

                                                if _G.Auto_Farm_Boss == false then
                                                    break
                                                end
                                                if not v132.Parent then
                                                    break
                                                end
                                                if v132.Humanoid.Health <= 0 then
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    else
                        TP(CFrameBoss)
                    end
                elseif _G.Auto_Quest_Boss then
                    CheckBossQuest()

                    if not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    end
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService('Workspace').Enemies:FindFirstChild(MsBoss) then
                                for _, v133 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                    if v133.Name == MsBoss then
                                        if v133:FindFirstChild('HumanoidRootPart') then
                                            if v133:FindFirstChild('Humanoid') then
                                                if v133.Humanoid.Health > 0 then
                                                    while true do
                                                        wait()

                                                        if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                                                            EquipWeapon(_G.Select_Weapon)
                                                            AutoHaki()
                                                            TP(v133.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))

                                                            v133.HumanoidRootPart.CanCollide = false
                                                            v133.HumanoidRootPart.Size = Vector3.new(65, 65, 65)

                                                            Attack()
                                                        else
                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                                        end
                                                        if _G.Auto_Farm_Boss == false then
                                                            break
                                                        end
                                                        if not v133.Parent then
                                                            break
                                                        end
                                                        if v133.Humanoid.Health <= 0 then
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                TP(CFrameBoss)
                            end
                        end
                    else
                        TP(CFrameQuestBoss)

                        if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuestBoss, LevelQuestBoss)
                        end
                    end
                elseif game:GetService('Workspace').Enemies:FindFirstChild(MsBoss) then
                    for _, v134 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                        if v134.Name == MsBoss then
                            if v134:FindFirstChild('HumanoidRootPart') then
                                if v134:FindFirstChild('Humanoid') then
                                    if v134.Humanoid.Health > 0 then
                                        while true do
                                            wait()
                                            EquipWeapon(_G.Select_Weapon)
                                            AutoHaki()
                                            TP(v134.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))

                                            v134.HumanoidRootPart.CanCollide = false
                                            v134.HumanoidRootPart.Size = Vector3.new(65, 65, 65)

                                            Attack()

                                            if _G.Auto_Farm_Boss == false then
                                                break
                                            end
                                            if not v134.Parent then
                                                break
                                            end
                                            if v134.Humanoid.Health <= 0 then
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                else
                    TP(CFrameBoss)
                end
            end)
        end
    end
end)
_Boss:AddToggle('Auto_Farm_All_Boss', {
    Text = 'Auto Farm All Boss',
    Default = getgenv().Setting.Auto_Farm_All_Boss,
})
Toggles.Auto_Farm_All_Boss:OnChanged(function(p39)
    _G.Auto_Farm_All_Boss = p39
    getgenv().Setting.Auto_Farm_All_Boss = p39

    StopTween(_G.Auto_Farm_All_Boss)
    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Farm_All_Boss then
            pcall(function()
                for _, v135 in pairs(game.ReplicatedStorage:GetChildren())do
                    if string.find(v135.Name, 'Boss') then
                        if v135:FindFirstChild('HumanoidRootPart') then
                            if v135:FindFirstChild('Humanoid') then
                                if v135.Humanoid.Health > 0 then
                                    while true do
                                        wait()

                                        if v135:FindFirstChild('HumanoidRootPart') and v135:FindFirstChild('Humanoid') and (v135.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                                            TP(v135.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                        elseif v135:FindFirstChild('HumanoidRootPart') and v135:FindFirstChild('Humanoid') and (v135.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)

                                            v135.Humanoid.WalkSpeed = 0
                                            v135.HumanoidRootPart.CanCollide = false
                                            v135.Head.CanCollide = false
                                            v135.HumanoidRootPart.Size = Vector3.new(65, 65, 65)

                                            TP(v135.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                            Attack()
                                        end
                                        if v135.Humanoid.Health <= 0 then
                                            break
                                        end
                                        if _G.Auto_Farm_All_Boss == false then
                                            break
                                        end
                                        if not v135.Parent then
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local _Mastery = v103:AddTab('Mastery')

if getgenv().Setting.Select_Health == nil then
    getgenv().Setting.Select_Health = 20
end

_Mastery:AddSlider('Select_Health', {
    Text = 'Health',
    Default = getgenv().Setting.Select_Health,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = false,
})
Options.Select_Health:OnChanged(function(p40)
    _G.Select_Health = p40
    getgenv().Setting.Select_Health = p40

    saveSettings()
end)
_Mastery:AddToggle('Auto_Farm_Devil_Fruit_Mastery', {
    Text = 'Auto Farm Devil Fruit Mastery',
    Default = getgenv().Setting.Auto_Farm_Devil_Fruit_Mastery,
})
Toggles.Auto_Farm_Devil_Fruit_Mastery:OnChanged(function(p41)
    _G.Auto_Farm_Devil_Fruit_Mastery = p41
    getgenv().Setting.Auto_Farm_Devil_Fruit_Mastery = p41

    StopTween(_G.Auto_Farm_Devil_Fruit_Mastery)
    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Farm_Devil_Fruit_Mastery then
            pcall(function()
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()

                        if not game:GetService('Workspace').Enemies:FindFirstChild(Ms) then
                            if game:GetService('ReplicatedStorage'):FindFirstChild(Ms) then
                                TP(game:GetService('ReplicatedStorage'):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            else
                                TP(CFrameMon)
                            end
                        else
                            CheckQuest()

                            repeat
                                wait()
                                TP(CFrameQuest)
                            until (CFrameQuest.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Devil_Fruit_Mastery

                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.1)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
_Mastery:AddToggle('Auto_Farm_Gun_Mastery', {
    Text = 'Auto Farm Gun Mastery',
    Default = getgenv().Setting.Auto_Farm_Gun_Mastery,
})
Toggles.Auto_Farm_Gun_Mastery:OnChanged(function(p42)
    _G.Auto_Farm_Gun_Mastery = p42
    getgenv().Setting.Auto_Farm_Gun_Mastery = p42

    StopTween(_G.Auto_Farm_Gun_Mastery)
    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Farm_Gun_Mastery then
            pcall(function()
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()

                        if not game:GetService('Workspace').Enemies:FindFirstChild(Ms) then
                            if game:GetService('ReplicatedStorage'):FindFirstChild(Ms) then
                                TP(game:GetService('ReplicatedStorage'):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            else
                                TP(CFrameMon)
                            end

                            local v136

                            if v136.Name ~= Ms then
                                UseGun = false

                                local v137

                                v137, v136 = UNNAMED_2598415500552(UNNAMED_2598415501896, v137)

                                if v137 ~= nil then
                                end
                            end

                            while true do
                                if true then
                                    task.wait()

                                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMin = v136.Humanoid.MaxHealth * _G.Select_Health / 100

                                        if v136.Humanoid.Health > HealthMin or not v136:FindFirstChild('HumanoidRootPart') or (not v136:FindFirstChild('Humanoid') or 0 >= v136.Humanoid.Health) then
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)

                                            v136.Head.CanCollide = false
                                            v136.HumanoidRootPart.CanCollide = false
                                            v136.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                            TP(v136.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))

                                            UseGun = false

                                            game:GetService('VirtualUser'):CaptureController()
                                            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 670), workspace.CurrentCamera.CFrame)
                                        else
                                            AutoHaki()
                                            EquipWeapon(SelectToolWeaponGun)

                                            v136.HumanoidRootPart.CanCollide = false

                                            TP(v136.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))

                                            UseGun = true
                                            game:GetService('Players').LocalPlayer.Character[SelectToolWeaponGun].Cooldown.Value = 0

                                            game:GetService('VirtualUser'):CaptureController()
                                            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 670), workspace.CurrentCamera.CFrame)
                                        end

                                        UseBringMob(v136.HumanoidRootPart.CFrame, v136.Name)
                                    else
                                        UseGun = false

                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                    end
                                end
                                if v136.Humanoid.Health <= 0 or _G.Auto_Farm_Gun_Mastery == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    break
                                end
                            end
                        else
                            CheckQuest()

                            repeat
                                wait()
                                TP(CFrameQuest)
                            until (CFrameQuest.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Gun_Mastery

                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.1)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                            end

                            return
                        end
                    end
                end
            end)
        end
    end
end)

if World3 then
    local v138 = v101.Main:AddLeftTabbox()
    local _EliteHunter = v138:AddTab('Elite Hunter')
    local u18 = _EliteHunter:AddLabel('')
    local u19 = _EliteHunter:AddLabel('')

    task.spawn(function()
        while wait() do
            pcall(function()
                u18:SetText('Total Elite Hunter : ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo [Lv. 1750]') or (game:GetService('ReplicatedStorage'):FindFirstChild('Deandre [Lv. 1750]') or game:GetService('ReplicatedStorage'):FindFirstChild('Urban [Lv. 1750]')) or (game:GetService('Workspace').Enemies:FindFirstChild('Diablo [Lv. 1750]') or game:GetService('Workspace').Enemies:FindFirstChild('Deandre [Lv. 1750]') or game:GetService('Workspace').Enemies:FindFirstChild('Urban [Lv. 1750]')) then
                    u19:SetText('Status : Spawned')
                else
                    u19:SetText('Status : Not Spawn yet')
                end
            end)
        end
    end)
    _EliteHunter:AddToggle('Auto_Elite_Hunter', {
        Text = 'Auto Elite Hunter',
        Default = getgenv().Setting.Auto_Elite_Hunter,
    })
    Toggles.Auto_Elite_Hunter:OnChanged(function(p43)
        _G.Auto_Elite_Hunter = p43
        getgenv().Setting.Auto_Elite_Hunter = p43

        StopTween(_G.Auto_Elite_Hunter)
        saveSettings()
    end)
    _EliteHunter:AddToggle('Auto_Elite_Hunter_Hop', {
        Text = 'Auto Elite Hunter Hop',
        Default = getgenv().Setting.Auto_Elite_Hunter_Hop,
    })
    Toggles.Auto_Elite_Hunter_Hop:OnChanged(function(p44)
        _G.Auto_Elite_Hunter_Hop = p44
        getgenv().Setting.Auto_Elite_Hunter_Hop = p44

        StopTween(_G.Auto_Elite_Hunter_Hop)
        saveSettings()
    end)
    _EliteHunter:AddToggle('Stop_when_have_God_Chalice', {
        Text = 'Stop when have God Chalice',
        Default = getgenv().Setting.Stop_when_have_God_Chalice,
    })
    Toggles.Stop_when_have_God_Chalice:OnChanged(function(p45)
        _G.Stop_when_have_God_Chalice = p45
        getgenv().Setting.Stop_when_have_God_Chalice = p45

        StopTween(_G.Stop_when_have_God_Chalice)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Elite_Hunter and World3 then
                pcall(function()
                    if not (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and _G.Stop_when_have_God_Chalice) then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                            if _G.Auto_Elite_Hunter_Hop and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter') == "I don't have anything for you right now. Come back later." then
                                Server_Hop()
                            else
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                            end
                        elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban') then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Diablo [Lv. 1750]') or game:GetService('Workspace').Enemies:FindFirstChild('Deandre [Lv. 1750]') or game:GetService('Workspace').Enemies:FindFirstChild('Urban [Lv. 1750]') then
                                for _, v139 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                    if v139.Name == 'Diablo [Lv. 1750]' or v139.Name == 'Deandre [Lv. 1750]' or v139.Name == 'Urban [Lv. 1750]' then
                                        if v139:FindFirstChild('Humanoid') then
                                            if v139:FindFirstChild('HumanoidRootPart') then
                                                if v139.Humanoid.Health > 0 then
                                                    while true do
                                                        wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)

                                                        v139.HumanoidRootPart.CanCollide = false
                                                        v139.Humanoid.WalkSpeed = 0
                                                        v139.HumanoidRootPart.Size = Vector3.new(65, 65, 65)

                                                        TP(v139.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                        Attack()

                                                        if _G.Auto_Elite_Hunter == false then
                                                            break
                                                        end
                                                        if v139.Humanoid.Health <= 0 then
                                                            break
                                                        end
                                                        if not v139.Parent then
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo [Lv. 1750]') then
                                TP(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo [Lv. 1750]').HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre [Lv. 1750]') then
                                TP(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre [Lv. 1750]').HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban [Lv. 1750]') then
                                TP(game:GetService('ReplicatedStorage'):FindFirstChild('Urban [Lv. 1750]').HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                            end
                        end
                    end
                end)
            end
        end
    end)

    local _CakePrince = v138:AddTab('Cake Prince')
    local u20 = _CakePrince:AddLabel('')

    task.spawn(function()
        while wait() do
            pcall(function()
                local v140 = string.match(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), '%d+')

                if v140 then
                    u20:SetText('Kill : ' .. tostring(v140) .. ' : More!!!')
                else
                    u20:SetText('Cake Prince Is Spawned')
                end
            end)
        end
    end)
    _CakePrince:AddToggle('Auto_Cake_Prince', {
        Text = 'Auto Cake Prince',
        Default = getgenv().Setting.Auto_Cake_Prince,
    })
    Toggles.Auto_Cake_Prince:OnChanged(function(p46)
        _G.Auto_Cake_Prince = p46
        getgenv().Setting.Auto_Cake_Prince = p46

        StopTween(_G.Auto_Cake_Prince)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Cake_Prince then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') then
                            for _, v141 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                if v141.Name == 'Cake Prince [Lv. 2300] [Raid Boss]' then
                                    if v141:FindFirstChild('Humanoid') then
                                        if v141:FindFirstChild('HumanoidRootPart') then
                                            if v141.Humanoid.Health > 0 then
                                                while true do
                                                    task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v141.HumanoidRootPart.Transparency = 1
                                                    v141.HumanoidRootPart.CanCollide = false
                                                    v141.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v141.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    Tween(v141.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if _G.Auto_Cake_Prince == false then
                                                        break
                                                    end
                                                    if not v141.Parent then
                                                        break
                                                    end
                                                    if v141.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                        end
                    elseif game.Workspace.Enemies:FindFirstChild('Baking Staff [Lv. 2250]') or game.Workspace.Enemies:FindFirstChild('Head Baker [Lv. 2275]') or (game.Workspace.Enemies:FindFirstChild('Cake Guard [Lv. 2225]') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter [Lv. 2200]')) then
                        for _, v142 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                            if v142.Name == 'Baking Staff [Lv. 2250]' or v142.Name == 'Head Baker [Lv. 2275]' or (v142.Name == 'Cake Guard [Lv. 2225]' or v142.Name == 'Cookie Crafter [Lv. 2200]') then
                                if v142:FindFirstChild('Humanoid') then
                                    if v142:FindFirstChild('HumanoidRootPart') then
                                        if v142.Humanoid.Health > 0 then
                                            while true do
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)

                                                v142.HumanoidRootPart.Transparency = 1
                                                v142.HumanoidRootPart.CanCollide = false
                                                v142.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                v142.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                UseBringMob(v142.HumanoidRootPart.CFrame, v142.Name)
                                                TP(v142.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                Attack()

                                                if _G.Auto_Cake_Prince == false then
                                                    break
                                                end
                                                if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') then
                                                    break
                                                end
                                                if not v142.Parent then
                                                    break
                                                end
                                                if v142.Humanoid.Health <= 0 then
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    else
                        TP(CFrame.new(-2100.2373046875, 146.08944702148438, -12237.853515625))
                    end
                end)
            end
        end
    end)
end
if World1 then
    Material = {
        'Fish Tail',
        'Scrap Metal',
        'Angel Wings',
        'Magma Ore',
    }
elseif World2 then
    Material = {
        'Magma Ore',
        'Radioactive',
        'Scrap Metal',
        'Vampire Fang',
        'Mystic Droplet',
        'Ectoplasm',
    }
elseif World3 then
    Material = {
        'Scrap Metal',
        'Conjured Cocoa',
        'Fish Tail',
        'Mini Tusk',
        'Dragon Scale',
        'Demonic Wisp',
        'Bones',
        'Gunpowder',
    }
end

local v143 = v101.Main:AddLeftTabbox()
local _Material = v143:AddTab('Material')
local u21 = _Material:AddLabel('')
local u22 = _Material:AddLabel('')

task.spawn(function()
    while wait() do
        pcall(function()
            u21:SetText('Material : ' .. _G.Select_Material)
            u22:SetText('Total Material : ' .. CheckMaterial(_G.Select_Material))
        end)
    end
end)

if getgenv().Setting.Select_Material == nil then
    getgenv().Setting.Select_Material = 'Scrap Metal & Leather'
end

_Material:AddDropdown('Select Material', {
    Values = Material,
    Default = getgenv().Setting.Select_Material,
    Multi = false,
    Text = '',
})
Options['Select Material']:OnChanged(function(p47)
    _G.Select_Material = p47
    getgenv().Setting.Select_Material = p47

    saveSettings()
end)
_Material:AddToggle('Auto Farm Material', {
    Text = 'Auto Farm Material',
    Default = getgenv().Setting.Auto_Farm_Material,
})
Toggles['Auto Farm Material']:OnChanged(function(p48)
    _G.Auto_Farm_Material = p48
    getgenv().Setting.Auto_Farm_Material = p48

    StopTween(_G.Auto_Farm_Material)
    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Farm_Material then
            pcall(function()
                CheckMonMaterial()

                if UseRemote and (PositionRemote - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > DistanceMagnitude then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', PositionRemote)
                    wait(0.5)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetSpawnPoint')
                end
                if TableFindFirstChild(MonMaterial) then
                    for _, v144 in pairs(game.Workspace.Enemies:GetChildren())do
                        if table.find(MonMaterial, v144.Name) then
                            if v144:FindFirstChild('HumanoidRootPart') then
                                if v144:FindFirstChild('Humanoid') then
                                    if v144.Humanoid.Health > 0 then
                                        while true do
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)

                                            v144.HumanoidRootPart.Transparency = 1
                                            v144.HumanoidRootPart.CanCollide = false
                                            v144.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                            v144.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                            UseBringMob(v144.HumanoidRootPart.CFrame, v144.Name)
                                            TP(v144.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                            Attack()

                                            if not v144.Parent then
                                                break
                                            end
                                            if not TableFindFirstChild(MonMaterial) then
                                                break
                                            end
                                            if v144.Humanoid.Health <= 0 then
                                                break
                                            end
                                            if _G.Auto_Farm_Material == false then
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                else
                    repeat
                        wait(0.1)
                        TP(CFrameMon1)
                    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon1.Position).Magnitude <= 3 or TableFindFirstChild(MonMaterial) or _G.Auto_Farm_Material == false
                    repeat
                        wait(0.1)
                        TP(CFrameMon2)
                    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon2.Position).Magnitude <= 3 or TableFindFirstChild(MonMaterial) or _G.Auto_Farm_Material == false
                end
            end)
        end
    end
end)

if World1 then
    local _Other = v143:AddTab('Other')

    _Other:AddToggle('Auto_Saber', {
        Text = 'Auto Saber',
        Default = getgenv().Setting.Auto_Saber,
    })
    Toggles.Auto_Saber:OnChanged(function(p49)
        _G.Auto_Saber = p49
        getgenv().Setting.Auto_Saber = p49

        StopTween(_G.Auto_Saber)
        saveSettings()
    end)
    _Other:AddToggle('Auto_Saber_Hop', {
        Text = 'Auto Saber Hop',
        Default = getgenv().Setting.Auto_Saber_Hop,
    })
    Toggles.Auto_Saber_Hop:OnChanged(function(p50)
        _G.Auto_Saber_Hop = p50
        getgenv().Setting.Auto_Saber_Hop = p50

        StopTween(_G.Auto_Saber_Hop)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Saber then
                pcall(function()
                    if game.Players.LocalPlayer.Data.Level.Value > 200 and CheckWeapon('Saber') == false then
                        if getgenv().Setting.Auto_Farm_Level then
                            _G.Auto_Farm_Level = false
                        end
                        if game:GetService('Workspace').Map.Jungle.Final.Part.Transparency ~= 0 then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert [Lv. 200] [Boss]') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert [Lv. 200] [Boss]') then
                                TP(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-8, 0.513301849, -8.55007443e-8, 1, -2.77243419e-8, -0.513301849, -2.00944328e-8, 0.85820812))

                                for _, v145 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                    if v145.Name == 'Saber Expert [Lv. 200] [Boss]' then
                                        if v145:FindFirstChild('Humanoid') then
                                            if v145:FindFirstChild('HumanoidRootPart') then
                                                if v145.Humanoid.Health > 0 then
                                                    while true do
                                                        wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)

                                                        v145.HumanoidRootPart.Transparency = 1
                                                        v145.HumanoidRootPart.CanCollide = false
                                                        v145.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                        v145.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                        TP(v145.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                        Attack()

                                                        if v145.Parent then
                                                            break
                                                        end
                                                        if v145.Humanoid.Health <= 0 then
                                                            break
                                                        end
                                                        if _G.Auto_Saber == false then
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        elseif game:GetService('Workspace').Map.Jungle.QuestPlates.Door.Transparency ~= 0 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan') == 0 then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= nil then
                                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= 0 then
                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') == 1 then
                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                            wait(0.5)
                                            EquipWeapon('Relic')
                                            wait(0.5)
                                            TP(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-9, 0.481375456, 2.53851997e-8, 1, -5.79995607e-8, -0.481375456, 6.30572643e-8, 0.876514494))
                                        end
                                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader [Lv. 120] [Boss]') then
                                        for _, v146 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                            if v146.Name == 'Mob Leader [Lv. 120] [Boss]' then
                                                if v146:FindFirstChild('Humanoid') then
                                                    if v146:FindFirstChild('HumanoidRootPart') then
                                                        if v146.Humanoid.Health > 0 then
                                                            while true do
                                                                wait()
                                                                AutoHaki()
                                                                EquipWeapon(_G.Select_Weapon)

                                                                v146.HumanoidRootPart.Transparency = 1
                                                                v146.HumanoidRootPart.CanCollide = false
                                                                v146.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                                v146.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                                TP(v146.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                                Attack()

                                                                if v146.Humanoid.Health <= 0 then
                                                                    break
                                                                end
                                                                if _G.Auto_Saber == false then
                                                                    break
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        TP(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                end
                            else
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService('Workspace').Map.Jungle.Torch, 0)
                                wait(0.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'DestroyTorch')
                                wait(0.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'GetCup')
                                wait(0.5)
                                EquipWeapon('Cup')
                                wait(0.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'FillCup', game:GetService('Players').LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan')
                            end
                        else
                            for _, v147 in pairs(game:GetService('Workspace').Map.Jungle.QuestPlates:GetChildren())do
                                if v147.Button:FindFirstChild('TouchInterest') then
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v147:FindFirstChild('Button'), 0)
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    _Other:AddToggle('Auto_Pole_V1', {
        Text = 'Auto Pole V1',
        Default = getgenv().Setting.Auto_Pole_V1,
    })
    Toggles.Auto_Pole_V1:OnChanged(function(p51)
        _G.Auto_Pole_V1 = p51
        getgenv().Setting.Auto_Pole_V1 = p51

        StopTween(_G.Auto_Pole_V1)
        saveSettings()
    end)
    _Other:AddToggle('Auto_Pole_Hop', {
        Text = 'Auto Pole V1 Hop',
        Default = getgenv().Setting.Auto_Pole_Hop,
    })
    Toggles.Auto_Pole_Hop:OnChanged(function(p52)
        _G.Auto_Pole_Hop = p52
        getgenv().Setting.Auto_Pole_Hop = p52

        StopTween(_G.Auto_Pole_Hop)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Pole then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Thunder God [Lv. 575] [Boss]') or game.Workspace.Enemies:FindFirstChild('Thunder God [Lv. 575] [Boss]') then
                        if game.Workspace.Enemies:FindFirstChild('Thunder God [Lv. 575] [Boss]') then
                            for _, v148 in pairs(game.Workspace.Enemies:GetChildren())do
                                if v148.Name == 'Thunder God [Lv. 575] [Boss]' then
                                    if v148:FindFirstChild('Humanoid') then
                                        if v148:FindFirstChild('HumanoidRootPart') then
                                            if v148.Humanoid.Health > 0 then
                                                while true do
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v148.HumanoidRootPart.Transparency = 1
                                                    v148.HumanoidRootPart.CanCollide = false
                                                    v148.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v148.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    TP(v148.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if not _G.Auto_Pole then
                                                        break
                                                    end
                                                    if v148.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                    if not v148.Parent then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(-7900.66406, 5606.90918, -2267.46436))
                        end
                    elseif _G.Auto_Pole_Hop then
                        Server_Hop()
                    end
                end)
            end
        end
    end)
elseif World2 then
    local _Other2 = v143:AddTab('Other')

    _Other2:AddToggle('Auto_Factory_Farm', {
        Text = 'Auto Factory Farm',
        Default = getgenv().Setting.Auto_Factory_Farm,
    })
    Toggles.Auto_Factory_Farm:OnChanged(function(p53)
        _G.Auto_Factory_Farm = p53
        getgenv().Setting.Auto_Factory_Farm = p53

        StopTween(_G.Auto_Factory_Farm)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Factory_Farm then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Core') or game.Workspace.Enemies:FindFirstChild('Core') then
                        if game.Workspace.Enemies:FindFirstChild('Core') then
                            for _, v149 in pairs(game.Workspace.Enemies:GetChildren())do
                                if v149.Name == 'Core' then
                                    if v149:FindFirstChild('Humanoid') then
                                        if v149:FindFirstChild('HumanoidRootPart') then
                                            if v149.Humanoid.Health > 0 then
                                                while true do
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v149.HumanoidRootPart.Transparency = 1
                                                    v149.HumanoidRootPart.CanCollide = false
                                                    v149.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v149.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    TP(v149.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10))
                                                    Attack()

                                                    if v149.Parent then
                                                        break
                                                    end
                                                    if v149.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                    if _G.Auto_Factory_Farm == false then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
                        end
                    elseif getgenv().Setting.Auto_Farm_Level then
                        _G.Auto_Farm_Level = true
                    end
                end)
            end
        end
    end)
    _Other2:AddToggle('Auto_Bartilo_Quest', {
        Text = 'Auto Bartilo Quest',
        Default = getgenv().Setting.Auto_Bartilo_Quest,
    })
    Toggles.Auto_Bartilo_Quest:OnChanged(function(p54)
        _G.Auto_Bartilo_Quest = p54
        getgenv().Setting.Auto_Bartilo_Quest = p54

        StopTween(_G.Auto_Bartilo_Quest)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Bartilo_Quest then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Data.Level.Value >= 850 then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') ~= 0 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') ~= 1 then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') == 2 then
                                    repeat
                                        TP(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                        wait()
                                    until not _G.Auto_Bartilo_Quest or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10

                                    wait(1)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)

                                    wait(1)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)

                                    wait(1)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)

                                    wait(1)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)

                                    wait(1)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)

                                    wait(1)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)

                                    wait(1)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)

                                    wait(1)

                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                                end
                            elseif game:GetService('Workspace').Enemies:FindFirstChild('Jeremy [Lv. 850] [Boss]') then
                                for _, v150 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                    if v150.Name == 'Jeremy [Lv. 850] [Boss]' then
                                        if v150:FindFirstChild('Humanoid') then
                                            if v150:FindFirstChild('HumanoidRootPart') then
                                                if v150.Humanoid.Health > 0 then
                                                    while true do
                                                        wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)

                                                        v150.HumanoidRootPart.Transparency = 1
                                                        v150.HumanoidRootPart.CanCollide = false
                                                        v150.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                        v150.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                        TP(v150.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                        Attack()

                                                        if not v150.Parent then
                                                            break
                                                        end
                                                        if v150.Humanoid.Health <= 0 then
                                                            break
                                                        end
                                                        if _G.Auto_Bartilo_Quest == false then
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Jeremy [Lv. 850] [Boss]') then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo')
                                TP(ame:GetService('ReplicatedStorage'):FindFirstChild('Jeremy [Lv. 850] [Boss]').HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            end
                        elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Swan Pirates') and string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Swan Pirate [Lv. 775]') then
                                for _, v151 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                    if v151.Name == 'Swan Pirate [Lv. 775]' then
                                        if v151:FindFirstChild('Humanoid') then
                                            if v151:FindFirstChild('HumanoidRootPart') then
                                                if v151.Humanoid.Health > 0 then
                                                    while true do
                                                        task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)

                                                        v151.HumanoidRootPart.Transparency = 1
                                                        v151.HumanoidRootPart.CanCollide = false
                                                        v151.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                        v151.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                        UseBringMob(v151.HumanoidRootPart.CFrame, v151.Name)
                                                        TP(v151.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                        Attack()

                                                        if not v151.Parent then
                                                            break
                                                        end
                                                        if v151.Humanoid.Health <= 0 then
                                                            break
                                                        end
                                                        if _G.Auto_Bartilo_Quest == false then
                                                            break
                                                        end
                                                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                TP(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-8, -0.230443969, 2.67024713e-8, 1, 8.47491108e-8, 0.230443969, 7.63147128e-8, -0.973085582))
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'BartiloQuest', 1)
                        end
                    end
                end)
            end
        end
    end)
    _Other2:AddToggle('Auto_Rengoku', {
        Text = 'Auto Rengoku',
        Default = getgenv().Setting.Auto_Rengoku,
    })
    Toggles.Auto_Rengoku:OnChanged(function(p55)
        _G.Auto_Rengoku = p55
        getgenv().Setting.Auto_Rengoku = p55

        StopTween(_G.Auto_Rengoku)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Rengoku then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hidden Key') then
                        EquipWeapon('Hidden Key')
                        Tween(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Snow Lurker [Lv. 1375]') or game:GetService('Workspace').Enemies:FindFirstChild('Arctic Warrior [Lv. 1350]') then
                        for _, v152 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                            if v152.Name == 'Snow Lurker [Lv. 1375]' or v152.Name == 'Arctic Warrior [Lv. 1350]' then
                                if v152:FindFirstChild('Humanoid') then
                                    if v152:FindFirstChild('HumanoidRootPart') then
                                        if v152.Humanoid.Health > 0 then
                                            while true do
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)

                                                v152.HumanoidRootPart.Transparency = 1
                                                v152.HumanoidRootPart.CanCollide = false
                                                v152.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                v152.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                UseBringMob(v152.HumanoidRootPart.CFrame, v152.Name)
                                                TP(v152.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                Attack()

                                                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') then
                                                    break
                                                end
                                                if _G.Auto_Rengoku == false then
                                                    break
                                                end
                                                if not v152.Parent then
                                                    break
                                                end
                                                if v152.Humanoid.Health <= 0 then
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    else
                        TP(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end)
            end
        end
    end)
    _Other2:AddToggle('Auto_Evo_Race_V2', {
        Text = 'Auto Evo Race V2',
        Default = getgenv().Setting.Auto_Evo_Race_V2,
    })
    Toggles.Auto_Evo_Race_V2:OnChanged(function(p56)
        _G.Auto_Evo_Race_V2 = p56
        getgenv().Setting.Auto_Evo_Race_V2 = p56

        StopTween(_G.Auto_Evo_Race_V2)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Evo_Race_V2 then
                pcall(function()
                    if not game:GetService('Players').LocalPlayer.Data.Race:FindFirstChild('Evolved') then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 0 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 1 then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') == 2 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '3')
                                end
                            elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 1') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 1') then
                                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 2') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 2') then
                                    if not (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 3')) then
                                        if game:GetService('Workspace').Enemies:FindFirstChild('Swan Pirate [Lv. 775]') then
                                            for _, v153 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                                if v153.Name == 'Swan Pirate [Lv. 775]' then
                                                    if v153:FindFirstChild('Humanoid') then
                                                        if v153:FindFirstChild('HumanoidRootPart') then
                                                            if v153.Humanoid.Health > 0 then
                                                                while true do
                                                                    task.wait()
                                                                    AutoHaki()
                                                                    EquipWeapon(_G.Select_Weapon)

                                                                    v153.HumanoidRootPart.Transparency = 1
                                                                    v153.HumanoidRootPart.CanCollide = false
                                                                    v153.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                                    v153.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                                    UseBringMob(v153.HumanoidRootPart.CFrame, v153.Name)
                                                                    Tween(v153.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                                    Attack()

                                                                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') then
                                                                        break
                                                                    end
                                                                    if not v153.Parent then
                                                                        break
                                                                    end
                                                                    if v153.Humanoid.Health <= 0 then
                                                                        break
                                                                    end
                                                                    if _G.Auto_Evo_Race_V2 == false then
                                                                        break
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        else
                                            Tween(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
                                        end
                                    end
                                else
                                    Tween(game:GetService('Workspace').Flower2.CFrame)
                                end
                            else
                                Tween(game:GetService('Workspace').Flower1.CFrame)
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '2')
                        end
                    end
                end)
            end
        end
    end)
    _Other2:AddToggle('Auto_Swan_Glasses', {
        Text = 'Auto Swan Glasses',
        Default = getgenv().Setting.Auto_Swan_Glasses,
    })
    Toggles.Auto_Swan_Glasses:OnChanged(function(p57)
        _G.Auto_Swan_Glasses = p57
        getgenv().Setting.Auto_Swan_Glasses = p57

        StopTween(_G.Auto_Swan_Glasses)
        saveSettings()
    end)
    _Other2:AddToggle('Auto_Swan_Glasses_Hop', {
        Text = 'Auto Swan Glasses Hop',
        Default = getgenv().Setting.Auto_Swan_Glasses_Hop,
    })
    Toggles.Auto_Swan_Glasses_Hop:OnChanged(function(p58)
        _G.Auto_Swan_Glasses_Hop = p58
        getgenv().Setting.Auto_Swan_Glasses_Hop = p58

        StopTween(_G.Auto_Swan_Glasses_Hop)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Swan_Glasses then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Don Swan [Lv. 1000] [Boss]') or game.Workspace.Enemies:FindFirstChild('Don Swan [Lv. 1000] [Boss]') then
                        if game.Workspace.Enemies:FindFirstChild('Don Swan [Lv. 1000] [Boss]') then
                            for _, v154 in pairs(game.Workspace.Enemies:GetChildren())do
                                if v154.Name == 'Don Swan [Lv. 1000] [Boss]' then
                                    if v154:FindFirstChild('HumanoidRootPart') then
                                        if v154:FindFirstChild('Humanoid') then
                                            if v154.Humanoid.Health > 0 then
                                                while true do
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v154.HumanoidRootPart.Transparency = 1
                                                    v154.HumanoidRootPart.CanCollide = false
                                                    v154.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v154.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    TP(v154.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if not _G.Auto_Swan_Glasses then
                                                        break
                                                    end
                                                    if v154.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                    if not v154.Parent then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125))
                        end
                    elseif _G.Auto_Swan_Glasses_Hop then
                        Server_Hop()
                    end
                end)
            end
        end
    end)
    _Other2:AddToggle('Auto_Dragon_Trident', {
        Text = 'Auto Dragon Trident',
        Default = getgenv().Setting.Auto_Dragon_Trident,
    })
    Toggles.Auto_Dragon_Trident:OnChanged(function(p59)
        _G.Auto_Dragon_Trident = p59
        getgenv().Setting.Auto_Dragon_Trident = p59

        StopTween(_G.Auto_Dragon_Trident)
        saveSettings()
    end)
    _Other2:AddToggle('Auto_Dragon_Trident_Hop', {
        Text = 'Auto Dragon Trident Hop',
        Default = getgenv().Setting.Auto_Dragon_Trident_Hop,
    })
    Toggles.Auto_Dragon_Trident_Hop:OnChanged(function(p60)
        _G.Auto_Dragon_Trident_Hop = p60
        getgenv().Setting.Auto_Dragon_Trident_Hop = p60

        StopTween(_G.Auto_Dragon_Trident_Hop)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Dragon_Trident then
                pcall(function()
                    if _G.Auto_Dragon_Trident and game.ReplicatedStorage:FindFirstChild('Tide Keeper [Lv. 1475] [Boss]') or game.Workspace.Enemies:FindFirstChild('Tide Keeper [Lv. 1475] [Boss]') then
                        if game.Workspace.Enemies:FindFirstChild('Tide Keeper [Lv. 1475] [Boss]') then
                            for _, v155 in pairs(game.Workspace.Enemies:GetChildren())do
                                if v155.Name == 'Tide Keeper [Lv. 1475] [Boss]' then
                                    if v155:FindFirstChild('HumanoidRootPart') then
                                        if v155:FindFirstChild('Humanoid') then
                                            if v155.Humanoid.Health > 0 then
                                                if v155:FindFirstChild('HumanoidRootPart') then
                                                    if v155:FindFirstChild('Humanoid') then
                                                        if v155.Humanoid.Health > 0 then
                                                            while true do
                                                                wait()
                                                                AutoHaki()
                                                                EquipWeapon(_G.Select_Weapon)

                                                                v155.HumanoidRootPart.Transparency = 1
                                                                v155.HumanoidRootPart.CanCollide = false
                                                                v155.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                                v155.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                                TP(v155.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                                Attack()

                                                                if not _G.Auto_Swan_Glasses then
                                                                    break
                                                                end
                                                                if v155.Humanoid.Health <= 0 then
                                                                    break
                                                                end
                                                                if not v155.Parent then
                                                                    break
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
                        end
                    elseif _G.Auto_Dragon_Trident_Hop then
                        Server_Hop()
                    end
                end)
            end
        end
    end)
    _Other2:AddToggle('Auto_Buy_Legendary_Sword', {
        Text = 'Auto Buy Legendary Sword',
        Default = getgenv().Setting.Auto_Buy_Legendary_Sword,
    })
    Toggles.Auto_Buy_Legendary_Sword:OnChanged(function(p61)
        _G.Auto_Buy_Legendary_Sword = p61
        getgenv().Setting.Auto_Buy_Legendary_Sword = p61

        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Buy_Legendary_Sword then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '1')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '2')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '3')
            end
        end
    end)
    _Other2:AddToggle('Auto_Buy_Enchancement', {
        Text = 'Auto Buy Enchancement',
        Default = getgenv().Setting.Auto_Buy_Enchancement,
    })
    Toggles.Auto_Buy_Enchancement:OnChanged(function(p62)
        _G.Auto_Buy_Enchancement = p62
        getgenv().Setting.Auto_Buy_Enchancement = p62

        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Buy_Enchancement then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ColorsDealer', 2)
            end
        end
    end)
elseif World3 then
    local _Other3 = v143:AddTab('Other')

    _Other3:AddToggle('Auto_Soul_Reaper', {
        Text = 'Auto Soul Reaper',
        Default = getgenv().Setting.Auto_Soul_Reaper,
    })
    Toggles.Auto_Soul_Reaper:OnChanged(function(p63)
        _G.Auto_Soul_Reaper = p63
        getgenv().Setting.Auto_Soul_Reaper = p63

        StopTween(_G.Auto_Soul_Reaper)
        saveSettings()
    end)
    _Other3:AddToggle('Auto_Soul_Reaper_Hop', {
        Text = 'Auto Soul Reaper Hop',
        Default = getgenv().Setting.Auto_Soul_Reaper_Hop,
    })
    Toggles.Auto_Soul_Reaper_Hop:OnChanged(function(p64)
        _G.Auto_Soul_Reaper_Hop = p64
        getgenv().Setting.Auto_Soul_Reaper_Hop = p64

        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Soul_Reaper then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper [Lv. 2100] [Raid Boss]') or game.ReplicatedStorage:FindFirstChild('Soul Reaper [Lv. 2100] [Raid Boss]') then
                        if game.Workspace.Enemies:FindFirstChild('Soul Reaper [Lv. 2100] [Raid Boss]') then
                            for _, v156 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                if v156.Name == 'Soul Reaper [Lv. 2100] [Raid Boss]' then
                                    if v156:FindFirstChild('HumanoidRootPart') then
                                        if v156:FindFirstChild('Humanoid') then
                                            if v156.Humanoid.Health > 0 then
                                                while true do
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v156.HumanoidRootPart.Transparency = 1
                                                    v156.HumanoidRootPart.CanCollide = false
                                                    v156.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v156.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    TP(v156.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if not _G.Auto_Soul_Reaper then
                                                        break
                                                    end
                                                    if not v156.Parent then
                                                        break
                                                    end
                                                    if v156.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game.Players.LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                        Tween(CFrame.new(-8932.83789, 144.098709, 6059.34229, -0.999290943, 7.956234779999999e-9, -0.0376505218, 4.4684243e-9, 1, 9.27205832e-8, 0.0376505218, 9.24866086e-8, -0.999290943))
                    elseif _G.Auto_Soul_Reaper_Hop then
                        Server_Hop()
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
                    end
                end)
            end
        end
    end)
    _Other3:AddToggle('Auto_Pirate_Raid', {
        Text = 'Auto Pirate Raid',
        Default = getgenv().Setting.Auto_Pirate_Raid,
    })
    Toggles.Auto_Pirate_Raid:OnChanged(function(p65)
        _G.Auto_Pirate_Raid = p65
        getgenv().Setting.Auto_Pirate_Raid = p65

        StopTween(_G.Auto_Pirate_Raid)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Pirate_Raid then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                        TP(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                    else
                        for _, v157 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                            if v157:FindFirstChild('HumanoidRootPart') then
                                if v157:FindFirstChild('Humanoid') then
                                    if v157.Humanoid.Health > 0 then
                                        if (v157.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                            while true do
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)

                                                v157.HumanoidRootPart.Transparency = 1
                                                v157.HumanoidRootPart.CanCollide = false
                                                v157.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                v157.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                TP(v157.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                Attack()

                                                if v157.Humanoid.Health <= 0 then
                                                    break
                                                end
                                                if not v157.Parent then
                                                    break
                                                end
                                                if _G.Auto_Pirate_Raid == false then
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    _Other3:AddToggle('Auto_Open_Dough_Dungeon', {
        Text = 'Auto Open Dough Dungeon',
        Default = getgenv().Setting.Auto_Open_Dough_Dungeon,
    })
    Toggles.Auto_Open_Dough_Dungeon:OnChanged(function(p66)
        _G.Auto_Open_Dough_Dungeon = p66
        getgenv().Setting.Auto_Open_Dough_Dungeon = p66

        StopTween(_G.Auto_Open_Dough_Dungeon)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Open_Dough_Dungeon then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                        if CheckMaterial('Conjured Cocoa') >= 10 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc')
                        elseif game:GetService('Workspace').Enemies:FindFirstChild('Cocoa Warrior [Lv. 2300]') or game:GetService('Workspace').Enemies:FindFirstChild('Chocolate Bar Battler [Lv. 2325]') then
                            for _, v158 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                if v158.Name == 'Cocoa Warrior [Lv. 2300]' or v158.Name == 'Chocolate Bar Battler [Lv. 2325]' then
                                    if v158:FindFirstChild('HumanoidRootPart') then
                                        if v158:FindFirstChild('Humanoid') then
                                            if v158.Humanoid.Health > 0 then
                                                while true do
                                                    task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v158.HumanoidRootPart.Transparency = 1
                                                    v158.HumanoidRootPart.CanCollide = false
                                                    v158.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v158.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    UseBringMob(v158.HumanoidRootPart.CFrame, v158.Name)
                                                    TP(v158.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if _G.Auto_Open_Dough_Dungeon == false then
                                                        break
                                                    end
                                                    if not v158.Parent then
                                                        break
                                                    end
                                                    if v158.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(402.7189025878906, 81.06050109863281, -12259.54296875))
                        end
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Sweet Chalice') or game.Players.LocalPlayer.Character:FindFirstChild('Sweet Chalice') then
                        if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 'Do you want to open the portal now?') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')
                        elseif game.Workspace.Enemies:FindFirstChild('Baking Staff [Lv. 2250]') or game.Workspace.Enemies:FindFirstChild('Head Baker [Lv. 2275]') or (game.Workspace.Enemies:FindFirstChild('Cake Guard [Lv. 2225]') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter [Lv. 2200]')) then
                            for _, v159 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                if v159.Name == 'Baking Staff [Lv. 2250]' or v159.Name == 'Head Baker [Lv. 2275]' or (v159.Name == 'Cake Guard [Lv. 2225]' or v159.Name == 'Cookie Crafter [Lv. 2200]') then
                                    if v159:FindFirstChild('HumanoidRootPart') then
                                        if v159:FindFirstChild('Humanoid') then
                                            if v159.Humanoid.Health > 0 then
                                                while true do
                                                    task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v159.HumanoidRootPart.Transparency = 1
                                                    v159.HumanoidRootPart.CanCollide = false
                                                    v159.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v159.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    UseBringMob(v159.HumanoidRootPart.CFrame, v159.Name)
                                                    TP(v159.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if _G.Auto_Open_Dough_Dungeon == false then
                                                        break
                                                    end
                                                    if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') then
                                                        break
                                                    end
                                                    if not v159.Parent then
                                                        break
                                                    end
                                                    if v159.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                        end
                    elseif game.ReplicatedStorage:FindFirstChild('Dough King [Lv. 2300] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King [Lv. 2300] [Raid Boss]') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Dough King [Lv. 2300] [Raid Boss]') then
                            for _, v160 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                if v160.Name == 'Dough King [Lv. 2300] [Raid Boss]' then
                                    if v160:FindFirstChild('HumanoidRootPart') then
                                        if v160:FindFirstChild('Humanoid') then
                                            if v160.Humanoid.Health > 0 then
                                                while true do
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v160.HumanoidRootPart.Transparency = 1
                                                    v160.HumanoidRootPart.CanCollide = false
                                                    v160.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v160.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    TP(v160.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if _G.Auto_Open_Dough_Dungeon == false then
                                                        break
                                                    end
                                                    if not v160.Parent then
                                                        break
                                                    end
                                                    if v160.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                        end
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Red Key') or game.Players.LocalPlayer.Character:FindFirstChild('Red Key') then
                        wait(0.5)
                        EquipWeapon('Red Key')
                        wait(0.5)
                        TP(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.8790219199999998e-8, 0.98883605, 3.60619588e-8, 1, 1.35681812e-8, -0.98883605, 3.3637601099999994e-8, 0.149007782))
                    elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Diablo [Lv. 1750]') or game:GetService('Workspace').Enemies:FindFirstChild('Deandre [Lv. 1750]') or game:GetService('Workspace').Enemies:FindFirstChild('Urban [Lv. 1750]') then
                            for _, v161 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                if v161.Name == 'Diablo [Lv. 1750]' or v161.Name == 'Deandre [Lv. 1750]' or v161.Name == 'Urban [Lv. 1750]' then
                                    if v161:FindFirstChild('Humanoid') then
                                        if v161:FindFirstChild('HumanoidRootPart') then
                                            if v161.Humanoid.Health > 0 then
                                                while true do
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v161.HumanoidRootPart.Transparency = 1
                                                    v161.HumanoidRootPart.CanCollide = false
                                                    v161.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v161.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    TP(v161.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if _G.Auto_Open_Dough_Dungeon == false then
                                                        break
                                                    end
                                                    if v161.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                    if not v161.Parent then
                                                        break
                                                    end
                                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") then
                                                        break
                                                    end
                                                    if game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo [Lv. 1750]') then
                            TP(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo [Lv. 1750]').HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre [Lv. 1750]') then
                            TP(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre [Lv. 1750]').HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban [Lv. 1750]') then
                            TP(game:GetService('ReplicatedStorage'):FindFirstChild('Urban [Lv. 1750]').HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                        end
                    end
                end)
            end
        end
    end)
    _Other3:AddToggle('Auto_Soul_Guitar', {
        Text = 'Auto Soul Guitar',
        Default = getgenv().Setting.Auto_Soul_Guitar,
    })
    Toggles.Auto_Soul_Guitar:OnChanged(function(p67)
        _G.Auto_Soul_Guitar = p67
        getgenv().Setting.Auto_Soul_Guitar = p67

        StopTween(_G.Auto_Soul_Guitar)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if StartSoulGuitarMagnt then
                pcall(function()
                    for _, v162 in pairs(game.Workspace.Enemies:GetChildren())do
                        if v162.Name == 'Living Zombie [Lv. 2000]' then
                            v162.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
                            v162.Head.CanCollide = false
                            v162.Humanoid.Sit = false
                            v162.HumanoidRootPart.CanCollide = false
                            v162.Humanoid.JumpPower = 0
                            v162.Humanoid.WalkSpeed = 0

                            if not v162.HumanoidRootPart:FindFirstChild('BodyVelocity') then
                                local _BodyVelocity2 = Instance.new('BodyVelocity', v162.HumanoidRootPart)

                                _BodyVelocity2.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                _BodyVelocity2.Velocity = Vector3.new(0, 0, 0)
                            end
                        end
                    end
                end)
            end
        end
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Soul_Guitar then
                pcall(function()
                    if CheckWeapon('Soul Guitar') == false then
                        if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                            if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Error') then
                                print('Go to Grave')
                                TP(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                            elseif string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Nothing') then
                                print('Wait Next Night')
                            else
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)
                            end
                        else
                            local _CommF_ = game.ReplicatedStorage:WaitForChild('Remotes'):WaitForChild('CommF_')
                            local _GuitarPuzzleProgress = _CommF_:InvokeServer('GuitarPuzzleProgress', 'Check')

                            if not _GuitarPuzzleProgress then
                                if game.ReplicatedStorage.Remotes.CommF_:InvokeServer('gravestoneEvent', 2) ~= true then
                                    if _G.Settings.Main['Auto Quest Soul Guitar Hop'] then
                                        Fast_Hop()
                                    end
                                else
                                    _CommF_:InvokeServer('gravestoneEvent', 2, true)
                                end
                            end
                            if _GuitarPuzzleProgress then
                                local _Swamp = _GuitarPuzzleProgress.Swamp
                                local _Gravestones = _GuitarPuzzleProgress.Gravestones
                                local _Ghost = _GuitarPuzzleProgress.Ghost
                                local _Trophies = _GuitarPuzzleProgress.Trophies
                                local _Pipes = _GuitarPuzzleProgress.Pipes
                                local _ = _GuitarPuzzleProgress.CraftedOnce

                                if _Swamp and _Gravestones and (_Ghost and _Trophies) and _Pipes then
                                    _G.Settings.Main['Auto Quest Soul Guitar'] = false
                                end
                                if not _Swamp then
                                    repeat
                                        wait()
                                        TP(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0, 30, 0))
                                    until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100

                                    for _, v163 in pairs(game.Workspace.Enemies:GetChildren())do
                                        if v163.Name == 'Living Zombie [Lv. 2000]' then
                                            if v163:FindFirstChild('Humanoid') then
                                                if v163:FindFirstChild('HumanoidRootPart') then
                                                    if game.Players.LocalPlayer:DistanceFromCharacter(v163.HumanoidRootPart.Position) <= 2000 then
                                                        repeat
                                                            wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.Select_Weapon)

                                                            StartSoulGuitarMagnt = true
                                                            v163.HumanoidRootPart.Transparency = 1
                                                            v163.HumanoidRootPart.CanCollide = false
                                                            v163.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                            v163.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                            TP(v163.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                            Attack()
                                                        until not v163.Parent or v163.Humanoid.Health <= 0 or not (v163:FindFirstChild('HumanoidRootPart') and v163:FindFirstChild('Humanoid')) or _G.Auto_Soul_Guitar == false

                                                        StartSoulGuitarMagnt = false
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end

                                wait(1)

                                if _Swamp and not _Gravestones then
                                    _CommF_:InvokeServer('GuitarPuzzleProgress', 'Gravestones')
                                end

                                wait(1)

                                if _Swamp and _Gravestones and not _Ghost then
                                    _CommF_:InvokeServer('GuitarPuzzleProgress', 'Ghost')
                                end

                                wait(1)

                                if _Swamp and _Gravestones and (_Ghost and not _Trophies) then
                                    _CommF_:InvokeServer('GuitarPuzzleProgress', 'Trophies')
                                end

                                wait(1)

                                if _Swamp and _Gravestones and (_Ghost and _Trophies) and not _Pipes then
                                    _CommF_:InvokeServer('GuitarPuzzleProgress', 'Pipes')
                                end
                                if _Swamp and _Gravestones and (_Ghost and _Trophies) and _Pipes then
                                    TP(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    _Other3:AddToggle('Auto_Yama', {
        Text = 'Auto Yama',
        Default = getgenv().Setting.Auto_Yama,
    })
    Toggles.Auto_Yama:OnChanged(function(p68)
        _G.Auto_Yama = p68
        getgenv().Setting.Auto_Yama = p68

        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Yama then
                pcall(function()
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress') >= 30 then
                        fireclickdetector(game:GetService('Workspace').Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    end
                end)
            end
        end
    end)
    _Other3:AddToggle('Auto_Rainbow_Haki', {
        Text = 'Auto Rainbow Haki',
        Default = getgenv().Setting.Auto_Rainbow_Haki,
    })
    Toggles.Auto_Rainbow_Haki:OnChanged(function(p69)
        _G.Auto_Rainbow_Haki = p69
        getgenv().Setting.Auto_Rainbow_Haki = p69

        StopTween(_G.Auto_Rainbow_Haki)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Rainbow_Haki then
                pcall(function()
                    ListBossRainBow = {
                        'Stone [Lv. 1550] [Boss]',
                        'Island Empress [Lv. 1675] [Boss]',
                        'Kilo Admiral [Lv. 1750] [Boss]',
                        'Captain Elephant [Lv. 1875] [Boss]',
                        'Beautiful Pirate [Lv. 1950] [Boss]',
                    }

                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Stone') then
                            NameBoss = ListBossRainBow[1]
                        elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Island Empress') then
                            NameBoss = ListBossRainBow[2]
                        elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Kilo Admiral') then
                            NameBoss = ListBossRainBow[3]
                        elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') then
                            NameBoss = ListBossRainBow[4]
                        elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Beautiful Pirate') then
                            NameBoss = ListBossRainBow[5]
                        end
                        if game.ReplicatedStorage:FindFirstChild(NameBoss) or game.Workspace.Enemies:FindFirstChild(NameBoss) then
                            if game.Workspace.Enemies:FindFirstChild(NameBoss) then
                                for _, v164 in pairs(game.Workspace.Enemies:GetChildren())do
                                    if v164.Name == NameBoss then
                                        if v164:FindFirstChild('Humanoid') then
                                            if v164:FindFirstChild('HumanoidRootPart') then
                                                if v164.Humanoid.Health > 0 then
                                                    while true do
                                                        wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)

                                                        v164.HumanoidRootPart.Transparency = 1
                                                        v164.HumanoidRootPart.CanCollide = false
                                                        v164.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                        v164.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                        TP(v164.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                        Attack()

                                                        if v164.Humanoid.Health <= 0 then
                                                            break
                                                        end
                                                        if _G.Auto_Rainbow_Haki == false then
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                TP(game.ReplicatedStorage:FindFirstChild(NameBoss).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            end
                        else
                            TP(CFrame.new(-11891.810546875, 930.551025390625, -8760.212890625))
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                    end
                end)
            end
        end
    end)

    local _Other22 = v143:AddTab('Other2')

    _Other22:AddToggle('Auto_Musketeer_Hat', {
        Text = 'Auto Musketeer Hat',
        Default = getgenv().Setting.Auto_Musketeer_Hat,
    })
    Toggles.Auto_Musketeer_Hat:OnChanged(function(p70)
        _G.Auto_Musketeer_Hat = p70
        getgenv().Setting.Auto_Musketeer_Hat = p70

        StopTween(_G.Auto_Musketeer_Hat)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Musketeer_Hat then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBandits ~= false then
                        if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBoss ~= false then
                            if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1800 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') == 2 then
                                TP(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                            end
                        elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant [Lv. 1875] [Boss]') then
                                for _, v165 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                    if v165.Name == 'Captain Elephant [Lv. 1875] [Boss]' then
                                        if v165:FindFirstChild('Humanoid') then
                                            if v165:FindFirstChild('HumanoidRootPart') then
                                                if v165.Humanoid.Health > 0 then
                                                    while true do
                                                        wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)

                                                        v165.HumanoidRootPart.Transparency = 1
                                                        v165.HumanoidRootPart.CanCollide = false
                                                        v165.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                        v165.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                        TP(v165.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                        Attack()

                                                        if _G.Auto_Musketeer_Hat == false then
                                                            break
                                                        end
                                                        if v165.Humanoid.Health <= 0 then
                                                            break
                                                        end
                                                        if not v165.Parent then
                                                            break
                                                        end
                                                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                TP(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Forest Pirate') and string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate [Lv. 1825]') then
                            for _, v166 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                if v166.Name == 'Forest Pirate [Lv. 1825]' then
                                    if v166:FindFirstChild('Humanoid') then
                                        if v166:FindFirstChild('HumanoidRootPart') then
                                            if v166.Humanoid.Health > 0 then
                                                while true do
                                                    task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v166.HumanoidRootPart.Transparency = 1
                                                    v166.HumanoidRootPart.CanCollide = false
                                                    v166.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v166.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    UseBringMob(v166.HumanoidRootPart.CFrame, v166.Name)
                                                    TP(v166.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if _G.Auto_Musketeer_Hat == false then
                                                        break
                                                    end
                                                    if not v166.Parent then
                                                        break
                                                    end
                                                    if v166.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
                    end
                end)
            end
        end
    end)
    _Other22:AddToggle('Auto_Holy_Torch', {
        Text = 'Auto Holy Torch',
        Default = getgenv().Setting.Auto_Musketeer_Hat,
    })
    Toggles.Auto_Holy_Torch:OnChanged(function(p71)
        _G.Auto_Holy_Torch = p71
        getgenv().Setting.Auto_Holy_Torch = p71

        StopTween(_G.Auto_Holy_Torch)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Holy_Torch then
                pcall(function()
                    wait(1)

                    repeat
                        Tween(CFrame.new(-10752, 417, -9366))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10752, 417, -9366)).Magnitude <= 10

                    wait(1)

                    repeat
                        Tween(CFrame.new(-11672, 334, -9474))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-11672, 334, -9474)).Magnitude <= 10

                    wait(1)

                    repeat
                        Tween(CFrame.new(-12132, 521, -10655))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12132, 521, -10655)).Magnitude <= 10

                    wait(1)

                    repeat
                        Tween(CFrame.new(-13336, 486, -6985))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13336, 486, -6985)).Magnitude <= 10

                    wait(1)

                    repeat
                        Tween(CFrame.new(-13489, 332, -7925))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                end)
            end
        end
    end)
    _Other22:AddToggle('Auto_Canvander', {
        Text = 'Auto Canvander',
        Default = getgenv().Setting.Auto_Canvander,
    })
    Toggles.Auto_Canvander:OnChanged(function(p72)
        _G.Auto_Canvander = p72
        getgenv().Setting.Auto_Canvander = p72

        StopTween(_G.Auto_Canvander)
        saveSettings()
    end)
    _Other22:AddToggle('Auto_Canvander_Hop', {
        Text = 'Auto Canvander Hop',
        Default = getgenv().Setting.Auto_Canvander_Hop,
    })
    Toggles.Auto_Canvander_Hop:OnChanged(function(p73)
        _G.Auto_Canvander_Hop = p73
        getgenv().Setting.Auto_Canvander_Hop = p73

        StopTween(_G.Auto_Canvander_Hop)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Canvander then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Beautiful Pirate [Lv. 1950] [Boss]') or game.Workspace.Enemies:FindFirstChild('Beautiful Pirate [Lv. 1950] [Boss]') then
                        if game.Workspace.Enemies:FindFirstChild('Beautiful Pirate [Lv. 1950] [Boss]') then
                            for _, v167 in pairs(game.Workspace.Enemies:GetChildren())do
                                if v167.Name == 'Beautiful Pirate [Lv. 1950] [Boss]' then
                                    if v167:FindFirstChild('HumanoidRootPart') then
                                        if v167:FindFirstChild('Humanoid') then
                                            if v167.Humanoid.Health > 0 then
                                                while true do
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v167.HumanoidRootPart.Transparency = 1
                                                    v167.HumanoidRootPart.CanCollide = false
                                                    v167.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                    v167.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                    TP(v167.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                    Attack()

                                                    if _G.Auto_Canvander == false then
                                                        break
                                                    end
                                                    if v167.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                    if not v167.Parent then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(5240.40869140625, 22.536449432373047, 17.463970184326172))
                        end
                    elseif _G.Auto_Canvander_Hop then
                        Server_Hop()
                    end
                end)
            end
        end
    end)
    _Other22:AddToggle('Auto_Twin_Hook', {
        Text = 'Auto Twin Hook',
        Default = getgenv().Setting.Auto_Twin_Hook,
    })
    Toggles.Auto_Twin_Hook:OnChanged(function(p74)
        _G.Auto_Twin_Hook = p74
        getgenv().Setting.Auto_Twin_Hook = p74

        StopTween(_G.Auto_Twin_Hook)
        saveSettings()
    end)
    _Other22:AddToggle('Auto_Twin_Hook_Hop', {
        Text = 'Auto Twin Hook Hop',
        Default = getgenv().Setting.Auto_Twin_Hook_Hop,
    })
    Toggles.Auto_Twin_Hook_Hop:OnChanged(function(p75)
        _G.Auto_Twin_Hook_Hop = p75
        getgenv().Setting.Auto_Twin_Hook_Hop = p75

        StopTween(_G.Auto_Twin_Hook_Hop)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Twin_Hook then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Captain Elephant [Lv. 1875] [Boss]') or game.Workspace.Enemies:FindFirstChild('Captain Elephant [Lv. 1875] [Boss]') then
                        if game.Workspace.Enemies:FindFirstChild('Captain Elephant [Lv. 1875] [Boss]') then
                            for _, v168 in pairs(game.Workspace.Enemies:GetChildren())do
                                if v168.Name == 'Captain Elephant [Lv. 1875] [Boss]' then
                                    if v168:FindFirstChild('HumanoidRootPart') then
                                        if v168:FindFirstChild('Humanoid') then
                                            if v168.Humanoid.Health > 0 then
                                                if v168:FindFirstChild('HumanoidRootPart') then
                                                    if v168:FindFirstChild('Humanoid') then
                                                        if v168.Humanoid.Health > 0 then
                                                            while true do
                                                                wait()
                                                                AutoHaki()
                                                                EquipWeapon(_G.Select_Weapon)

                                                                v168.HumanoidRootPart.Transparency = 1
                                                                v168.HumanoidRootPart.CanCollide = false
                                                                v168.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                                v168.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                                TP(v168.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                                Attack()

                                                                if _G.Auto_Twin_Hook == false then
                                                                    break
                                                                end
                                                                if v168.Humanoid.Health <= 0 then
                                                                    break
                                                                end
                                                                if not v168.Parent then
                                                                    break
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                        end
                    elseif _G.Auto_Twin_Hook_Hop then
                        Server_Hop()
                    end
                end)
            end
        end
    end)
    _Other22:AddToggle('Auto_Serpent_Bow', {
        Text = 'Auto Serpent Bow',
        Default = getgenv().Setting.Auto_Serpent_Bow,
    })
    Toggles.Auto_Serpent_Bow:OnChanged(function(p76)
        _G.Auto_Serpent_Bow = p76
        getgenv().Setting.Auto_Serpent_Bow = p76

        StopTween(_G.Auto_Serpent_Bow)
        saveSettings()
    end)
    _Other22:AddToggle('Auto_Serpent_Bow_Hop', {
        Text = 'Auto Serpent Bow Hop',
        Default = getgenv().Setting.Auto_Serpent_Bow_Hop,
    })
    Toggles.Auto_Serpent_Bow_Hop:OnChanged(function(p77)
        _G.Auto_Serpent_Bow_Hop = p77
        getgenv().Setting.Auto_Serpent_Bow_Hop = p77

        StopTween(_G.Auto_Serpent_Bow_Hop)
        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Serpent_Bow then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Island Empress [Lv. 1675] [Boss]') or game.Workspace.Enemies:FindFirstChild('Island Empress [Lv. 1675] [Boss]') then
                        if game.Workspace.Enemies:FindFirstChild('Island Empress [Lv. 1675] [Boss]') then
                            for _, v169 in pairs(game.Workspace.Enemies:GetChildren())do
                                if v169.Name == 'Island Empress [Lv. 1675] [Boss]' then
                                    if v169:FindFirstChild('HumanoidRootPart') then
                                        if v169:FindFirstChild('Humanoid') then
                                            if v169.Humanoid.Health > 0 then
                                                if v169:FindFirstChild('HumanoidRootPart') then
                                                    if v169:FindFirstChild('Humanoid') then
                                                        if v169.Humanoid.Health > 0 then
                                                            while true do
                                                                wait()
                                                                AutoHaki()
                                                                EquipWeapon(_G.Select_Weapon)

                                                                v169.HumanoidRootPart.Transparency = 1
                                                                v169.HumanoidRootPart.CanCollide = false
                                                                v169.HumanoidRootPart.Size = Vector3.new(65, 65, 65)
                                                                v169.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)

                                                                TP(v169.HumanoidRootPart.CFrame * CFrame.new(_G.Distance_X, _G.Distance_Y, _G.Distance_Z))
                                                                Attack()

                                                                if _G.Auto_Serpent_Bow == false then
                                                                    break
                                                                end
                                                                if v169.Humanoid.Health <= 0 then
                                                                    break
                                                                end
                                                                if not v169.Parent then
                                                                    break
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(CFrame.new(5764.1826171875, 700.425537109375, 141.11996459960938))
                        end
                    elseif _G.Auto_Serpent_Bow_Hop then
                        Server_Hop()
                    end
                end)
            end
        end
    end)
end

local v170 = v101.Main:AddRightTabbox()
local _Setting = v170:AddTab('Setting')

_Setting:AddDropdown('Mode_Farm', {
    Values = {
        'Default Mode',
        'No Quest',
    },
    Default = getgenv().Setting.Mode_Farm,
    Multi = false,
    Text = 'Mode Farm',
})
Options.Mode_Farm:OnChanged(function(p78)
    _G.Mode_Farm = p78
    getgenv().Setting.Mode_Farm = p78

    saveSettings()
end)

if getgenv().Setting.Distance_Bring_Mob == nil then
    getgenv().Setting.Distance_Bring_Mob = 300
end

_Setting:AddSlider('Distance_Bring_Mob', {
    Text = 'Distance Bring Mob',
    Default = getgenv().Setting.Distance_Bring_Mob,
    Min = 1,
    Max = 1000,
    Rounding = 0,
    Compact = false,
})
Options.Distance_Bring_Mob:OnChanged(function(p79)
    _G.Distance_Bring_Mob = p79
    getgenv().Setting.Distance_Bring_Mob = p79

    saveSettings()
end)

if getgenv().Setting.Type_Fast_Attack == nil then
    getgenv().Setting.Type_Fast_Attack = 'Safe Fast Attack'
end

_Setting:AddDropdown('Type_Fast_Attack', {
    Values = {
        '[Fast] Fast Attack',
        '[Safe] Fast Attack',
        '[Slow] Fast Attack',
    },
    Default = getgenv().Setting.Type_Fast_Attack,
    Text = 'Type Fast Attack',
})
Options.Type_Fast_Attack:OnChanged(function(p80)
    _G.Type_Fast_Attack = p80
    getgenv().Setting.Type_Fast_Attack = p80

    saveSettings()
end)
_Setting:AddToggle('Fast_Attack', {
    Text = 'Fast Attack',
    Default = getgenv().Setting.Fast_Attack,
})
Toggles.Fast_Attack:OnChanged(function(p81)
    _G.Fast_Attack = p81
    getgenv().Setting.Fast_Attack = p81

    saveSettings()
end)
task.spawn(function()
    while task.wait() do
        if _G.Fast_Attack and u16.activeController then
            u16.activeController.timeToNextAttack = 0
            u16.activeController.focusStart = 0
            u16.activeController.hitboxMagnitude = 100
            u16.activeController.humanoid.AutoRotate = true
            u16.activeController.increment = 2
        end
    end
end)

CurveCoolDown = 0.051793500000002
bs = tick()

task.spawn(function()
    while task.wait(CurveCoolDown) do
        pcall(function()
            if _G.Fast_Attack then
                if _G.Type_Fast_Attack ~= '[Fast] Fast Attack' then
                    if _G.Type_Fast_Attack ~= '[Safe] Fast Attack' then
                        if _G.Type_Fast_Attack == '[Slow] Fast Attack' then
                            CurveCoolDown = 0.0075
                        end
                    else
                        CurveCoolDown = 0.051793500000002
                    end
                else
                    CurveCoolDown = 0.0036789000000113
                end
                if bs - tick() > 0.75 then
                    wait()

                    bs = tick()
                end

                for _, v171 in pairs(game.Workspace.Enemies:GetChildren())do
                    if v171.Humanoid.Health > 0 then
                        if (v171.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60 then
                            FastAttack()
                            wait()
                            Boost()
                        end
                    end
                end
                for _, v172 in pairs(game:GetService('Workspace').Characters:GetChildren())do
                    if v172.Humanoid.Health > 0 then
                        if v172.Name ~= game.Players.LocalPlayer.Name then
                            if (v172.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60 then
                                v172.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v172.HumanoidRootPart.Transparency = 0.5

                                FastAttack()
                                wait()
                                Boost()
                            end
                        end
                    end
                end
            end
        end)
    end
end)

k = tick()

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Fast_Attack then
                if k - tick() > 0.75 then
                    wait()

                    k = tick()
                end

                for _, v173 in pairs(game.Workspace.Enemies:GetChildren())do
                    if v173.Humanoid.Health > 0 then
                        if (v173.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60 then
                            wait(0.000025)
                            Unboost()
                        end
                    end
                end
                for _, v174 in pairs(game:GetService('Workspace').Characters:GetChildren())do
                    if v174.Humanoid.Health > 0 then
                        if v174.Name ~= game.Players.LocalPlayer.Name then
                            if (v174.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60 then
                                wait(0.000025)
                                Unboost()
                            end
                        end
                    end
                end
            end
        end)
    end
end)

tjw1 = true

local _LocalPlayer = game.Players.LocalPlayer
local u23 = require(_LocalPlayer.PlayerScripts.CombatFramework.Particle)
local u24 = require(game:GetService('ReplicatedStorage').CombatFramework.RigLib)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if not shared.orl then
                shared.orl = u24.wrapAttackAnimationAsync
            end
            if not shared.cpc then
                shared.cpc = u23.play
            end

            u24.wrapAttackAnimationAsync = function(p82, p83, p84, p85, p86)
                local v175 = u24.getBladeHits(p83, p84, p85)

                if v175 then
                    if tjw1 then
                        u23.play = function() end

                        p82:Play(0.01, 0.01, 0.01)
                        p86(v175)

                        u23.play = shared.cpc

                        wait(p82.length * 0.5)
                        p82:Stop()
                    else
                        p82:Play()
                    end
                end
            end
        end)
    end
end)
_Setting:AddToggle('Fast_TP', {
    Text = 'Fast TP',
    Default = false,
})
Toggles.Fast_TP:OnChanged(function(p87)
    _G.Fast_TP = p87
    getgenv().Setting.Fast_TP = p87

    saveSettings()
end)
_Setting:AddToggle('Remove_Effect', {
    Text = 'Less Lag [Beta]',
    Default = getgenv().Setting.Remove_Effect,
})
Toggles.Remove_Effect:OnChanged(function(p88)
    _G.Remove_Effect = p88
    getgenv().Setting.Remove_Effect = p88

    saveSettings()
end)
task.spawn(function()
    while task.wait() do
        if _G.Remove_Effect then
            for _, v176 in pairs(game:GetService('Players').LocalPlayer.PlayerGui.Notifications:GetChildren())do
                if v176.Name == 'NotificationTemplate' then
                    v176:Destroy()
                end
            end
            for _, v177 in pairs(game.Workspace._WorldOrigin:GetChildren())do
                if v177.Name == 'Dust' or v177.Name == 'eff' or (v177.Name == 'CurvedRing' or v177.Name == 'SwordSlash') or (v177.Name == 'Sounds' or v177.Name == 'SlashHit' or v177.Name == 'DamageCounter') then
                    v177:Destroy()
                end
            end
        end
    end
end)
_Setting:AddToggle('Mob Spawn Faster', {
    Text = 'Mob Spawn Faster [Beta]',
    Default = getgenv().Setting.Faster_Spawn_Mob,
})
Toggles['Mob Spawn Faster']:OnChanged(function(p89)
    _G.Faster_Spawn_Mob = p89
    getgenv().Setting.Faster_Spawn_Mob = p89

    saveSettings()
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Faster_Spawn_Mob and not _G.Auto_Next_Island then
                for _, v178 in pairs(game.Workspace.Enemies:GetChildren())do
                    if v178.Humanoid.Health <= 0 then
                        v178:Destroy()
                    end
                end
            end
        end)
    end
end)
_Setting:AddDropdown('Select_Weapon', {
    Values = {
        'Melee',
        'Sword',
    },
    Default = getgenv().Setting.Select_Type_Weapon,
    Multi = false,
    Text = 'Weapon',
})
Options.Select_Weapon:OnChanged(function(p90)
    _G.Select_Type_Weapon = p90
    getgenv().Setting.Select_Type_Weapon = p90

    saveSettings()
end)
task.spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Select_Type_Weapon ~= 'Melee' then
                if _G.Select_Type_Weapon ~= 'Sword' then
                    for _, v179 in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
                        if v179.ToolTip == 'Melee' then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v179.Name)) then
                                _G.Select_Weapon = v179.Name
                            end
                        end
                    end
                else
                    for _, v180 in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
                        if v180.ToolTip == 'Sword' then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v180.Name)) then
                                _G.Select_Weapon = v180.Name
                            end
                        end
                    end
                end
            else
                for _, v181 in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
                    if v181.ToolTip == 'Melee' then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v181.Name)) then
                            _G.Select_Weapon = v181.Name
                        end
                    end
                end
            end
        end)
    end
end)

local _Setting2 = v170:AddTab('Setting 2')

if getgenv().Setting.Distance_X == nil then
    getgenv().Setting.Distance_X = 0
end

_Setting2:AddSlider('Distance_X', {
    Text = 'Distance X',
    Default = getgenv().Setting.Distance_X,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false,
})
Options.Distance_X:OnChanged(function(p91)
    _G.Distance_X = p91
    getgenv().Setting.Distance_X = p91

    saveSettings()
end)

if getgenv().Setting.Distance_Y == nil then
    getgenv().Setting.Distance_Y = 30
end

_Setting2:AddSlider('Distance_Y', {
    Text = 'Distance Y',
    Default = getgenv().Setting.Distance_Y,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false,
})
Options.Distance_Y:OnChanged(function(p92)
    _G.Distance_Y = p92
    getgenv().Setting.Distance_Y = p92

    saveSettings()
end)

if getgenv().Setting.Distance_Z == nil then
    getgenv().Setting.Distance_Z = 0
end

_Setting2:AddSlider('Distance_Z', {
    Text = 'Distance Z',
    Default = getgenv().Setting.Distance_Z,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false,
})
Options.Distance_Z:OnChanged(function(p93)
    _G.Distance_Z = p93
    getgenv().Setting.Distance_Z = p93

    saveSettings()
end)
_Setting2:AddToggle('White_Screen', {
    Text = 'White Screen',
    Default = getgenv().Setting.White_Screen,
})
Toggles.White_Screen:OnChanged(function(p94)
    _G.White_Screen = p94
    getgenv().Setting.White_Screen = p94

    saveSettings()

    if _G.White_Screen then
        game:GetService('RunService'):Set3dRenderingEnabled(false)
    else
        game:GetService('RunService'):Set3dRenderingEnabled(true)
    end
end)

local _Lighting = game.Lighting
local _ColorCorrectionEffect = Instance.new('ColorCorrectionEffect', _Lighting)
local _ColorCorrectionEffect2 = Instance.new('ColorCorrectionEffect', _Lighting)

OldAmbient = _Lighting.Ambient
OldBrightness = _Lighting.Brightness
OldColorShift_Top = _Lighting.ColorShift_Top
OldBrightnessc = _ColorCorrectionEffect.Brightness
OldContrastc = _ColorCorrectionEffect.Contrast
OldTintColorc = _ColorCorrectionEffect.TintColor
OldTintColore = _ColorCorrectionEffect2.TintColor

_Setting2:AddToggle('Black_Screen', {
    Text = 'Black Screen',
    Default = getgenv().Setting.Black_Screen,
})
Toggles.Black_Screen:OnChanged(function(p95)
    _G.Black_Screen = p95
    getgenv().Setting.Black_Screen = p95

    saveSettings()

    if _G.Black_Screen then
        while _G.Black_Screen do
            wait()

            _Lighting.Ambient = Color3.fromRGB(0, 0, 0)
            _Lighting.Brightness = 0.3
            _ColorCorrectionEffect.Brightness = 0.176
            _ColorCorrectionEffect.Contrast = 0.39
            _ColorCorrectionEffect.TintColor = Color3.fromRGB(0, 0, 0)
            game.Lighting.FogEnd = 999

            if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('PointLight') then
                local _PointLight = Instance.new('PointLight')

                _PointLight.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                _PointLight.Range = 15
                _PointLight.Color = Color3.fromRGB(0, 0, 0)
            end
            if not _G.Black_Screen then
                _Lighting.Ambient = OldAmbient
                _Lighting.Brightness = OldBrightness
                _Lighting.ColorShift_Top = OldColorShift_Top
                _ColorCorrectionEffect.Contrast = OldContrastc
                _ColorCorrectionEffect.Brightness = OldBrightnessc
                _ColorCorrectionEffect.TintColor = OldTintColorc
                _ColorCorrectionEffect2.TintColor = OldTintColore
                game.Lighting.FogEnd = 2500

                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('PointLight'):Destroy()
            end
        end

        return
    else
        return
    end
end)
_Setting2:AddDivider()
_Setting2:AddToggle('Skill_Z', {
    Text = 'Skill Z',
    Default = getgenv().Setting.Skill_Z,
})
Toggles.Skill_Z:OnChanged(function(p96)
    _G.Skill_Z = p96
    getgenv().Setting.Skill_Z = p96

    saveSettings()
end)
_Setting2:AddToggle('Skill_X', {
    Text = 'Skill X',
    Default = getgenv().Setting.Skill_X,
})
Toggles.Skill_X:OnChanged(function(p97)
    _G.Skill_X = p97
    getgenv().Setting.Skill_X = p97

    saveSettings()
end)
_Setting2:AddToggle('Skill_C', {
    Text = 'Skill C',
    Default = getgenv().Setting.Skill_C,
})
Toggles.Skill_C:OnChanged(function(p98)
    _G.Skill_C = p98
    getgenv().Setting.Skill_C = p98

    saveSettings()
end)
_Setting2:AddToggle('Skill_V', {
    Text = 'Skill V',
    Default = getgenv().Setting.Skill_V,
})
Toggles.Skill_V:OnChanged(function(p99)
    _G.Skill_V = p99
    getgenv().Setting.Skill_V = p99

    saveSettings()
end)

local _Setting3 = v170:AddTab('Setting 3')

Code = {
    'EXP_5B',
    'CONTROL',
    'UPDATE11',
    'XMASEXP',
    '1BILLION',
    'ShutDownFix2',
    'UPD14',
    'STRAWHATMAINE',
    'TantaiGaming',
    'Colosseum',
    'Axiore',
    'Sub2Daigrock',
    'Sky Island 3',
    'Sub2OfficialNoobie',
    'SUB2NOOBMASTER123',
    'THEGREATACE',
    'Fountain City',
    'BIGNEWS',
    'FUDD10',
    'SUB2GAMERROBOT_EXP1',
    'UPD15',
    '2BILLION',
    'UPD16',
    '3BVISITS',
    'fudd10_v2',
    'Starcodeheo',
    'Magicbus',
    'JCWK',
    'Bluxxy',
    'Sub2Fer999',
    'Enyu_is_Pro',
    'GAMER_ROBOT_1M',
    'ADMINGIVEAWAY',
    'GAMERROBOT_YT',
    'kittgaming',
    'ADMIN_TROLL',
    'staffbattle',
    'youtuber_shipbattle',
    'Sub2CaptainMaui',
    'DEVSCOOKING',
}

if getgenv().Setting.Select_Level_to_Redeem_All_Code == nil then
    getgenv().Setting.Select_Level_to_Redeem_All_Code = 1
end

_Setting3:AddSlider('Select_Level_to_Redeem_All_Code', {
    Text = 'Redeem All Code At Level',
    Default = getgenv().Setting.Select_Level_to_Redeem_All_Code,
    Min = 1,
    Max = 2400,
    Rounding = 0,
    Compact = false,
})
Options.Select_Level_to_Redeem_All_Code:OnChanged(function(p100)
    _G.Select_Level_to_Redeem_All_Code = p100
    getgenv().Setting.Select_Level_to_Redeem_All_Code = p100

    saveSettings()
end)
_Setting3:AddToggle('Auto_Redeem_All_Code', {
    Text = 'Auto Redeem All Code',
    Default = getgenv().Setting.Auto_Redeem_All_Code,
})
Toggles.Auto_Redeem_All_Code:OnChanged(function(p101)
    _G.Auto_Redeem_All_Code = p101
    getgenv().Setting.Auto_Redeem_All_Code = p101

    saveSettings()
end)
task.spawn(function()
    while wait(1) do
        pcall(function()
            if _G.Auto_Redeem_All_Code then
                MyLevel = game.Players.localPlayer.Data.Level.value

                if MyLevel >= _G.Select_Level_to_Redeem_All_Code then
                    for _, v182 in pairs(Code)do
                        game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(v182)
                    end
                end
            end
        end)
    end
end)
_Setting3:AddButton('Redeem All Code', function()
    for _, v183 in pairs(Code)do
        UseCode(v183)
    end
end)

local v184 = v101.Main:AddRightTabbox()
local _Melee = v184:AddTab('Melee')

_Melee:AddToggle('Auto_Superhuman', {
    Text = 'Auto Superhuman',
    Default = getgenv().Setting.Auto_Superhuman,
})
Toggles.Auto_Superhuman:OnChanged(function(p102)
    _G.Auto_Superhuman = p102
    getgenv().Setting.Auto_Superhuman = p102

    saveSettings()
end)
task.spawn(function()
    while wait(0.5) do
        pcall(function()
            if _G.Auto_Superhuman and (game.Players.LocalPlayer.Backpack:FindFirstChild('Combat') or game.Players.LocalPlayer.Character:FindFirstChild('Combat') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') or game.Players.LocalPlayer.Character:FindFirstChild('Black Leg')) or (game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') or game.Players.LocalPlayer.Character:FindFirstChild('Electro') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') or game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate'))) or (game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') or game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw') or (game.Players.LocalPlayer.Character:FindFirstChild('Superhuman') or game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman')))) then
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Combat') or game.Players.LocalPlayer.Character:FindFirstChild('Combat') then
                    _G.Select_Weapon = 'Combat'

                    if game:GetService('Players').LocalPlayer.Data.Beli.Value >= 150000 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') or game.Players.LocalPlayer.Character:FindFirstChild('Black Leg') then
                    _G.Select_Weapon = 'Black Leg'

                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild('Black Leg').Level.Value >= 300 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') or game.Players.LocalPlayer.Character:FindFirstChild('Electro') then
                    _G.Select_Weapon = 'Electro'

                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild('Electro').Level.Value >= 300 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') or game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate') then
                    _G.Select_Weapon = 'Fishman Karate'

                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate').Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate').Level.Value >= 300 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') or game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw') then
                    _G.Select_Weapon = 'Dragon Claw'

                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw').Level.Value >= 300 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman') or game.Players.LocalPlayer.Character:FindFirstChild('Superhuman') then
                    _G.Select_Weapon = 'Superhuman'
                end
            end
        end)
    end
end)
_Melee:AddToggle('Auto_Death_Step', {
    Text = 'Auto Death Step',
    Default = getgenv().Setting.Auto_Death_Step,
})
Toggles.Auto_Death_Step:OnChanged(function(p103)
    _G.Auto_Death_Step = p103
    getgenv().Setting.Auto_Death_Step = p103

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Death_Step then
            pcall(function()
                if not (game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') and (game.Players.LocalPlayer.Character:FindFirstChild('Black Leg') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Death Step')) and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Death Step')) then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
                end
                if game:GetService('Workspace').Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency ~= 0 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Library Key') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Library Key') then
                    EquipWeapon('Library Key')
                    Tween(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375))

                    if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        wait(1.2)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep', true)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
                        wait(0.5)
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') and game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild('Black Leg') and game.Players.LocalPlayer.Character:FindFirstChild('Black Leg').Level.Value >= 450 then
                    if game:GetService('ReplicatedStorage'):FindFirstChild('Awakened Ice Admiral [Lv. 1400] [Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Awakened Ice Admiral [Lv. 1400] [Boss]') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Awakened Ice Admiral [Lv. 1400] [Boss]') then
                            for _, v185 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                if v185.Name == 'Awakened Ice Admiral [Lv. 1400] [Boss]' then
                                    if v185:FindFirstChild('Humanoid') then
                                        if v185:FindFirstChild('HumanoidRootPart') then
                                            if v185.Humanoid.Health > 0 then
                                                while true do
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)

                                                    v185.Head.CanCollide = false
                                                    v185.Humanoid.WalkSpeed = 0
                                                    v185.HumanoidRootPart.CanCollide = false
                                                    v185.HumanoidRootPart.Size = Vector3.new(65, 65, 65)

                                                    TP(v185.HumanoidRootPart.CFrame * CFrame.new(0, _G.Select_Distance, 0))
                                                    Attack()

                                                    if not v185.Parent then
                                                        break
                                                    end
                                                    if v185.Humanoid.Health <= 0 then
                                                        break
                                                    end
                                                    if _G.Auto_Death_Step == false then
                                                        break
                                                    end
                                                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Library Key') then
                                                        break
                                                    end
                                                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Library Key') then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            TP(game:GetService('ReplicatedStorage'):FindFirstChild('Awakened Ice Admiral [Lv. 1400] [Boss]').HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
                        end
                    else
                        Server_Hop()
                    end
                end
            end)
        end
    end
end)
_Melee:AddToggle('Auto_SharkMan_Karate', {
    Text = 'Auto SharkMan Karate',
    Default = getgenv().Setting.Auto_SharkMan_Karate,
})
Toggles.Auto_SharkMan_Karate:OnChanged(function(p104)
    _G.Auto_SharkMan_Karate = p104
    getgenv().Setting.Auto_SharkMan_Karate = p104

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_SharkMan_Karate then
            pcall(function()
                if not (game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') and game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate')) then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
                end
                if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate'), 'keys') then
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Water Key') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Water Key') then
                        wait(1.2)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                        wait(0.5)
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') and game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate').Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') and game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate').Level.Value >= 400 then
                        if game:GetService('ReplicatedStorage'):FindFirstChild('Tide Keeper [Lv. 1475] [Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Tide Keeper [Lv. 1475] [Boss]') then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Tide Keeper [Lv. 1475] [Boss]') then
                                for _, v186 in pairs(game:GetService('Workspace').Enemies:GetChildren())do
                                    if v186.Name == 'Tide Keeper [Lv. 1475] [Boss]' then
                                        if v186:FindFirstChild('Humanoid') then
                                            if v186:FindFirstChild('HumanoidRootPart') then
                                                if v186.Humanoid.Health > 0 then
                                                    while true do
                                                        wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)

                                                        v186.Head.CanCollide = false
                                                        v186.Humanoid.WalkSpeed = 0
                                                        v186.HumanoidRootPart.CanCollide = false
                                                        v186.HumanoidRootPart.Size = Vector3.new(65, 65, 65)

                                                        TP(v186.HumanoidRootPart.CFrame * CFrame.new(0, _G.Select_Distance, 0))
                                                        Attack()

                                                        if not v186.Parent then
                                                            break
                                                        end
                                                        if v186.Humanoid.Health <= 0 then
                                                            break
                                                        end
                                                        if _G.Auto_SharkMan_Karate == false then
                                                            break
                                                        end
                                                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Water Key') then
                                                            break
                                                        end
                                                        if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Water Key') then
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                TP(game:GetService('ReplicatedStorage'):FindFirstChild('Tide Keeper [Lv. 1475] [Boss]').HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            end
                        else
                            Server_Hop()
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                end
            end)
        end
    end
end)

local _Observation = v184:AddTab('Observation')
local u25 = _Observation:AddLabel('')

task.spawn(function()
    while wait(0.1) do
        u25:SetText('Observation Level : ' .. tostring(math.round(game.Players.LocalPlayer.VisionRadius.Value)))
    end
end)
_Observation:AddToggle('Auto_Farm_Observation_Haki', {
    Text = 'Auto Farm Observation Haki',
    Default = getgenv().Setting.Auto_Farm_Observation_Haki,
})
Toggles.Auto_Farm_Observation_Haki:OnChanged(function(p105)
    _G.Auto_Farm_Observation_Haki = p105
    getgenv().Setting.Auto_Farm_Observation_Haki = p105

    StopTween(_G.Auto_Farm_Observation_Haki)
    saveSettings()

    if _G.Auto_Farm_Observation_Haki then
        game:GetService('VirtualUser'):CaptureController()
        game:GetService('VirtualUser'):SetKeyDown('0x65')
        wait(2)
        game:GetService('VirtualUser'):SetKeyUp('0x65')
    end
end)
_Observation:AddToggle('Auto_Farm_Observation_Haki_Hop', {
    Text = 'Auto Farm Observation Haki Hop',
    Default = getgenv().Setting.Auto_Farm_Observation_Haki_Hop,
})
Toggles.Auto_Farm_Observation_Haki_Hop:OnChanged(function(p106)
    _G.Auto_Farm_Observation_Haki_Hop = p106
    getgenv().Setting.Auto_Farm_Observation_Haki_Hop = p106

    saveSettings()
end)
task.spawn(function()
    while wait() do
        wait(40)
        pcall(function()
            if _G.Auto_Farm_Observation_Haki and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                game:GetService('VirtualUser'):CaptureController()
                game:GetService('VirtualUser'):SetKeyDown('0x65')
                wait(2)
                game:GetService('VirtualUser'):SetKeyUp('0x65')
            end
        end)
    end
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Farm_Observation_Haki then
            pcall(function()
                if World2 then
                    if game.Workspace.Enemies:FindFirstChild('Snow Lurker [Lv. 1375]') then
                        if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                            repeat
                                wait()
                                TP(game.Workspace.Enemies:FindFirstChild('Snow Lurker [Lv. 1375]').HumanoidRootPart.CFrame * CFrame.new(0, 0, -5))
                            until _G.Auto_Farm_Observation_Haki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel')

                            if _G.Auto_Farm_Observation_Haki_Hop and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                                game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
                            end
                        else
                            repeat
                                wait()
                                TP(game.Workspace.Enemies:FindFirstChild('Snow Lurker [Lv. 1375]').HumanoidRootPart.CFrame * CFrame.new(0, 25, 10))
                            until _G.Auto_Farm_Observation_Haki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel')
                        end
                    else
                        repeat
                            wait()
                            TP(CFrame.new(5567.3129882813, 262.92590332031, -6780.9545898438))
                        until (CFrame.new(5567.3129882813, 262.92590332031, -6780.9545898438).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetSpawnPoint')
                    end
                elseif World1 then
                    if game.Workspace.Enemies:FindFirstChild('Galley Captain [Lv. 650]') then
                        if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                            repeat
                                wait()
                                TP(game.Workspace.Enemies:FindFirstChild('Galley Captain [Lv. 650]').HumanoidRootPart.CFrame * CFrame.new(0, 0, -5))
                            until _G.Auto_Farm_Observation_Haki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel')

                            if _G.Auto_Farm_Observation_Haki_Hop and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                                game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
                            end
                        else
                            repeat
                                wait()
                                TP(game.Workspace.Enemies:FindFirstChild('Galley Captain [Lv. 650]').HumanoidRootPart.CFrame * CFrame.new(0, 25, 10))
                            until _G.Auto_Farm_Observation_Haki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel')
                        end
                    else
                        repeat
                            wait()
                            TP(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                        until (CFrame.new(5533.29785, 88.1079102, 4852.3916).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetSpawnPoint')
                    end
                elseif World3 then
                    if game.Workspace.Enemies:FindFirstChild('Marine Commodore [Lv. 1700]') then
                        if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                            repeat
                                wait()
                                TP(game.Workspace.Enemies:FindFirstChild('Marine Commodore [Lv. 1700]').HumanoidRootPart.CFrame * CFrame.new(0, 0, -5))
                            until _G.Auto_Farm_Observation_Haki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel')

                            if _G.Auto_Farm_Observation_Haki_Hop and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                                game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
                            end
                        else
                            wait()
                            TP(game.Workspace.Enemies:FindFirstChild('Marine Commodore [Lv. 1700]').HumanoidRootPart.CFrame * CFrame.new(0, 25, 10))

                            if _G.Auto_Farm_Observation_Haki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                            else
                                repeat
                                    wait()
                                    TP(CFrame.new(2445.59204, 273.184479, -7087.646))
                                until (CFrame.new(2445.59204, 273.184479, -7087.646).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3

                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetSpawnPoint')
                            end
                        end

                        return
                    end

                    repeat
                        wait()
                        TP(CFrame.new(2445.59204, 273.184479, -7087.646))
                    until (CFrame.new(2445.59204, 273.184479, -7087.646).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetSpawnPoint')
                end

                return
            end)
        end
    end
end)

if World3 then
    local _Mirage = v184:AddTab('Mirage')
    local u26 = _Mirage:AddLabel('')
    local u27 = _Mirage:AddLabel('')

    task.spawn(function()
        while wait(0.1) do
            pcall(function()
                if game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709149431' then
                    if game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709149052' then
                        if game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709143733' then
                            if game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709150401' then
                                if game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709149680' then
                                    u27:SetText('Full Moon Status : \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}')
                                else
                                    u27:SetText('Full Moon Status : \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}')
                                end
                            else
                                u27:SetText('Full Moon Status : \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd} ')
                            end
                        else
                            u27:SetText('Full Moon Status : \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd} ')
                        end
                    else
                        u27:SetText('Full Moon Status : \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd} ')
                    end
                else
                    u27:SetText('Full Moon Status : \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd} [Full Moon Now]')
                end
                if game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                    u26:SetText('Mirage Status : Spawned')
                else
                    u26:SetText('Mirage Status : Not Spawn yet')
                end
            end)
        end
    end)
    _Mirage:AddToggle('Auto_Find_Full_Moon', {
        Text = 'Auto Find Full Moon',
        Default = getgenv().Setting.Auto_Find_Full_Moon,
    })
    Toggles.Auto_Find_Full_Moon:OnChanged(function(p107)
        _G.Auto_Find_Full_Moon = p107
        getgenv().Setting.Auto_Find_Full_Moon = p107

        StopTween(_G.Auto_Find_Full_Moon)
        saveSettings()
    end)
    _Mirage:AddToggle('Auto_Find_Mirage_Island', {
        Text = 'Auto Find Mirage Island',
        Default = getgenv().Setting.Auto_Find_Mirage_Island,
    })
    Toggles.Auto_Find_Mirage_Island:OnChanged(function(p108)
        _G.Auto_Find_Mirage_Island = p108
        getgenv().Setting.Auto_Find_Mirage_Island = p108

        StopTween(_G.Auto_Find_Mirage_Island)
        saveSettings()
    end)
    _Mirage:AddToggle('Auto_Find_Mirage_Island_Hop', {
        Text = 'Auto Find Mirage Island Hop',
        Default = getgenv().Setting.Auto_Find_Mirage_Island_Hop,
    })
    Toggles.Auto_Find_Mirage_Island_Hop:OnChanged(function(p109)
        _G.Auto_Find_Mirage_Island_Hop = p109
        getgenv().Setting.Auto_Find_Mirage_Island_Hop = p109

        StopTween(_G.Auto_Find_Mirage_Island_Hop)
        saveSettings()
    end)
    _Mirage:AddToggle('Auto_Find_Full_Moon_Mirage', {
        Text = 'Auto Find Full Moon With Mirage',
        Default = getgenv().Setting.Auto_Find_Full_Moon_Mirage,
    })
    Toggles.Auto_Find_Full_Moon_Mirage:OnChanged(function(p110)
        _G.Auto_Find_Full_Moon_Mirage = p110
        getgenv().Setting.Auto_Find_Full_Moon_Mirage = p110

        StopTween(_G.Auto_Find_Full_Moon_Mirage)
        saveSettings()
    end)
    task.spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Auto_Find_Mirage_Island and game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                    TP(game:GetService('Workspace').Map:FindFirstChild('MysticIsland').HumanoidRootPart.CFrame * CFrame.new(0, 500, -100))
                end
            end)
        end
    end)
    task.spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Auto_Find_Full_Moon_Mirage and (not game:GetService('Workspace').Map:FindFirstChild('MysticIsland') and game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709149431') then
                    wait(10)

                    if not game:GetService('Workspace').Map:FindFirstChild('MysticIsland') and (game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709149431' and _G.Auto_Find_Full_Moon_Mirage) then
                        repeat
                            wait()
                        until game:IsLoaded()

                        local u28 = {}

                        game:GetService('HttpService')

                        local u29 = 'ripperhubjoin.json'

                        SaveSettings = function()
                            local _HttpService2 = game:GetService('HttpService')

                            if not isfolder('RipperHop') then
                                makefolder('RipperHop')
                            end

                            writefile('RipperHop/' .. u29, _HttpService2:JSONEncode(u28))
                        end
                        ReadSetting = function()
                            local v187, v188 = pcall(function()
                                local _HttpService3 = game:GetService('HttpService')

                                if not isfolder('RipperHop') then
                                    makefolder('RipperHop')
                                end

                                return _HttpService3:JSONDecode(readfile('RipperHop/' .. u29))
                            end)

                            if v187 then
                                return v188
                            end

                            SaveSettings()

                            return ReadSetting()
                        end
                        u28 = ReadSetting()
                        HopServer = function()
                            local v193 = function()
                                for v189 = 1, 100 do
                                    local v190 = game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer(v189)

                                    for v191, v192 in pairs(v190)do
                                        if v191 == game.JobId then
                                        elseif v192.Count >= 10 then
                                        elseif u28[v191] and 600 >= tick() - u28[v191].Time then
                                            if tick() - u28[v191].Time > 3600 then
                                                u28[v191] = nil
                                            end
                                        else
                                            u28[v191] = {
                                                Time = tick(),
                                            }

                                            SaveSettings()
                                            game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer('teleport', v191)

                                            return true
                                        end
                                    end
                                end

                                return false
                            end

                            if not getgenv().Loaded then
                                local v194 = function(p111)
                                    if p111.Name == 'ErrorPrompt' then
                                        if p111.Visible and p111.TitleFrame.ErrorTitle.Text == 'Teleport Failed' then
                                            HopServer()
                                        end

                                        p111:GetPropertyChangedSignal('Visible'):Connect(function()
                                            if p111.Visible and p111.TitleFrame.ErrorTitle.Text == 'Teleport Failed' then
                                                HopServer()
                                            end
                                        end)
                                    end
                                end

                                for _, v195 in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren())do
                                    v194(v195)
                                end

                                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(v194)

                                getgenv().Loaded = true
                            end

                            while not v193() do
                                wait()
                            end

                            SaveSettings()
                        end

                        HopServer()
                    end
                end
            end)
        end
    end)
    task.spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Auto_Find_Mirage_Island_Hop and not game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                    wait(10)

                    if not game:GetService('Workspace').Map:FindFirstChild('MysticIsland') and _G.Auto_Find_Mirage_Island_Hop then
                        repeat
                            wait()
                        until game:IsLoaded()

                        local u30 = {}

                        game:GetService('HttpService')

                        local u31 = 'ripperhubjoin.json'

                        SaveSettings = function()
                            local _HttpService4 = game:GetService('HttpService')

                            if not isfolder('RipperHop') then
                                makefolder('RipperHop')
                            end

                            writefile('RipperHop/' .. u31, _HttpService4:JSONEncode(u30))
                        end
                        ReadSetting = function()
                            local v196, v197 = pcall(function()
                                local _HttpService5 = game:GetService('HttpService')

                                if not isfolder('RipperHop') then
                                    makefolder('RipperHop')
                                end

                                return _HttpService5:JSONDecode(readfile('RipperHop/' .. u31))
                            end)

                            if v196 then
                                return v197
                            end

                            SaveSettings()

                            return ReadSetting()
                        end
                        u30 = ReadSetting()
                        HopServer = function()
                            local v202 = function()
                                for v198 = 1, 100 do
                                    local v199 = game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer(v198)

                                    for v200, v201 in pairs(v199)do
                                        if v200 == game.JobId then
                                        elseif v201.Count >= 10 then
                                        elseif u30[v200] and 600 >= tick() - u30[v200].Time then
                                            if tick() - u30[v200].Time > 3600 then
                                                u30[v200] = nil
                                            end
                                        else
                                            u30[v200] = {
                                                Time = tick(),
                                            }

                                            SaveSettings()
                                            game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer('teleport', v200)

                                            return true
                                        end
                                    end
                                end

                                return false
                            end

                            if not getgenv().Loaded then
                                local v203 = function(p112)
                                    if p112.Name == 'ErrorPrompt' then
                                        if p112.Visible and p112.TitleFrame.ErrorTitle.Text == 'Teleport Failed' then
                                            HopServer()
                                        end

                                        p112:GetPropertyChangedSignal('Visible'):Connect(function()
                                            if p112.Visible and p112.TitleFrame.ErrorTitle.Text == 'Teleport Failed' then
                                                HopServer()
                                            end
                                        end)
                                    end
                                end

                                for _, v204 in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren())do
                                    v203(v204)
                                end

                                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(v203)

                                getgenv().Loaded = true
                            end

                            while not v202() do
                                wait()
                            end

                            SaveSettings()
                        end

                        HopServer()
                    end
                end
            end)
        end
    end)
    task.spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Auto_Find_Full_Moon and game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709149431' then
                    wait(10)

                    if game:GetService('Lighting').Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=9709149431' and _G.Auto_Find_Full_Moon then
                        repeat
                            wait()
                        until game:IsLoaded()

                        local u32 = {}

                        game:GetService('HttpService')

                        local u33 = 'ripperhubjoin.json'

                        SaveSettings = function()
                            local _HttpService6 = game:GetService('HttpService')

                            if not isfolder('RipperHop') then
                                makefolder('RipperHop')
                            end

                            writefile('RipperHop/' .. u33, _HttpService6:JSONEncode(u32))
                        end
                        ReadSetting = function()
                            local v205, v206 = pcall(function()
                                local _HttpService7 = game:GetService('HttpService')

                                if not isfolder('RipperHop') then
                                    makefolder('RipperHop')
                                end

                                return _HttpService7:JSONDecode(readfile('RipperHop/' .. u33))
                            end)

                            if v205 then
                                return v206
                            end

                            SaveSettings()

                            return ReadSetting()
                        end
                        u32 = ReadSetting()
                        HopServer = function()
                            local v211 = function()
                                for v207 = 1, 100 do
                                    local v208 = game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer(v207)

                                    for v209, v210 in pairs(v208)do
                                        if v209 == game.JobId then
                                        elseif v210.Count >= 10 then
                                        elseif u32[v209] and 600 >= tick() - u32[v209].Time then
                                            if tick() - u32[v209].Time > 3600 then
                                                u32[v209] = nil
                                            end
                                        else
                                            u32[v209] = {
                                                Time = tick(),
                                            }

                                            SaveSettings()
                                            game:GetService('ReplicatedStorage').__ServerBrowser:InvokeServer('teleport', v209)

                                            return true
                                        end
                                    end
                                end

                                return false
                            end

                            if not getgenv().Loaded then
                                local v212 = function(p113)
                                    if p113.Name == 'ErrorPrompt' then
                                        if p113.Visible and p113.TitleFrame.ErrorTitle.Text == 'Teleport Failed' then
                                            HopServer()
                                        end

                                        p113:GetPropertyChangedSignal('Visible'):Connect(function()
                                            if p113.Visible and p113.TitleFrame.ErrorTitle.Text == 'Teleport Failed' then
                                                HopServer()
                                            end
                                        end)
                                    end
                                end

                                for _, v213 in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren())do
                                    v212(v213)
                                end

                                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(v212)

                                getgenv().Loaded = true
                            end

                            while not v211() do
                                wait()
                            end

                            SaveSettings()
                        end

                        HopServer()
                    end
                end
            end)
        end
    end)
    _Mirage:AddToggle('Auto_Tween_Chest', {
        Text = 'Auto Tween Chest',
        Default = getgenv().Setting.Auto_Tween_Chest,
    })
    Toggles.Auto_Tween_Chest:OnChanged(function(p114)
        _G.Auto_Tween_Chest = p114
        getgenv().Setting.Auto_Tween_Chest = p114

        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            if _G.Auto_Tween_Chest then
                pcall(function()
                    for _, v214 in pairs(game:GetService('Workspace').Map.MysticIsland.Chests:GetChildren())do
                        if v214.Name == 'FragChest' or v214.Name == 'DiamondChest' then
                            while true do
                                wait()

                                v214.CanCollide = false

                                TP(v214.CFrame)

                                if not v214 then
                                    break
                                end
                                if _G.Auto_Tween_Chest == false then
                                    break
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    _Mirage:AddToggle('Auto_Tween_To_Advance_Fruit_Dealer', {
        Text = 'Auto Tween To Advanced Fruit Dealer',
        Default = getgenv().Setting.Auto_Tween_Chest,
    })
    Toggles.Auto_Tween_To_Advance_Fruit_Dealer:OnChanged(function(p115)
        _G.Auto_Tween_To_Advance_Fruit_Dealer = p115
        getgenv().Setting.Auto_Tween_To_Advance_Fruit_Dealer = p115

        saveSettings()
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Tween_To_Advance_Fruit_Dealer then
                    for _, v215 in pairs(game:GetService('Workspace').NPCs:GetChildren())do
                        if v215.Name == 'Advanced Fruit Dealer' then
                            v215.CanCollide = false

                            TP(v215.HumanoidRootPart.CFrame)
                        end
                    end
                end
            end)
        end
    end)
end

local _Stats = v101.Main:AddRightTabbox():AddTab('Stats')

_Stats:AddToggle('Auto_Stats_Kaitun', {
    Text = 'Auto Stats Kaitun',
    Default = getgenv().Setting.Auto_Stats_Kaitun,
})
Toggles.Auto_Stats_Kaitun:OnChanged(function(p116)
    _G.Auto_Stats_Kaitun = p116
    getgenv().Setting.Auto_Stats_Kaitun = p116

    saveSettings()
end)
_Stats:AddToggle('Auto_Stats_Melee', {
    Text = 'Auto Stats Melee',
    Default = getgenv().Setting.Auto_Stats_Melee,
})
Toggles.Auto_Stats_Melee:OnChanged(function(p117)
    _G.Auto_Stats_Melee = p117
    getgenv().Setting.Auto_Stats_Melee = p117

    saveSettings()
end)
_Stats:AddToggle('Auto_Stats_Defense', {
    Text = 'Auto Stats Defense',
    Default = getgenv().Setting.Auto_Stats_Defense,
})
Toggles.Auto_Stats_Defense:OnChanged(function(p118)
    _G.Auto_Stats_Defense = p118
    getgenv().Setting.Auto_Stats_Defense = p118

    saveSettings()
end)
_Stats:AddToggle('Auto_Stats_Sword', {
    Text = 'Auto Stats Sword',
    Default = getgenv().Setting.Auto_Stats_Sword,
})
Toggles.Auto_Stats_Sword:OnChanged(function(p119)
    _G.Auto_Stats_Sword = p119
    getgenv().Setting.Auto_Stats_Sword = p119

    saveSettings()
end)
_Stats:AddToggle('Auto_Stats_Gun', {
    Text = 'Auto Stats Gun',
    Default = getgenv().Setting.Auto_Stats_Gun,
})
Toggles.Auto_Stats_Gun:OnChanged(function(p120)
    _G.Auto_Stats_Gun = p120
    getgenv().Setting.Auto_Stats_Gun = p120

    saveSettings()
end)
_Stats:AddToggle('Auto_Stats_Devil_Fruit', {
    Text = 'Auto Stats Devil Fruit',
    Default = getgenv().Setting.Auto_Stats_Devil_Fruit,
})
Toggles.Auto_Stats_Devil_Fruit:OnChanged(function(p121)
    _G.Auto_Stats_Devil_Fruit = p121
    getgenv().Setting.Auto_Stats_Devil_Fruit = p121
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Stats_Kaitun then
                if game:GetService('Players').LocalPlayer.Data.Stats.Melee.Level.Value ~= 2450 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', 'Melee', 100)
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', 'Defense', 100)
                end
            end
            if _G.Auto_Stats_Melee then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', 'Melee', 100)
            end
            if _G.Auto_Stats_Defense then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', 'Defense', 100)
            end
            if _G.Auto_Stats_Sword then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', 'Sword', 100)
            end
            if _G.Auto_Stats_Gun then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', 'Gun', 100)
            end
            if _G.Auto_Stats_Devil_Fruit then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', 'Demon Fruit', 100)
            end
        end)
    end
end)

local _KillPlayerLegit = v101.Player:AddRightTabbox():AddTab('Kill Player [Legit]')
local _Circle = Drawing.new('Circle')

_Circle.Color = Color3.fromRGB(52, 190, 255)
_Circle.Thickness = 1
_Circle.Radius = 250
_Circle.NumSides = 460
_Circle.Filled = false
_Circle.Transparency = 1

game:GetService('RunService').Stepped:Connect(function()
    _Circle.Radius = _G.Select_Size_Fov
    _Circle.Thickness = 1
    _Circle.NumSides = 460
    _Circle.Position = game:GetService('UserInputService'):GetMouseLocation()

    if _G.Show_Fov then
        _Circle.Visible = true
    else
        _Circle.Visible = false
    end
end)

if getgenv().Setting.Select_Size_Fov == nil then
    getgenv().Setting.Select_Size_Fov = 200
end

_KillPlayerLegit:AddSlider('Select_Size_Fov', {
    Text = 'Fov Size',
    Default = getgenv().Setting.Select_Size_Fov,
    Min = 1,
    Max = 1000,
    Rounding = 0,
    Compact = false,
})
Options.Select_Size_Fov:OnChanged(function(p122)
    _G.Select_Size_Fov = p122
    getgenv().Setting.Select_Size_Fov = p122

    saveSettings()
end)
_KillPlayerLegit:AddToggle('Show_Fov', {
    Text = 'Show Fov',
    Default = getgenv().Setting.Show_Fov,
})
Toggles.Show_Fov:OnChanged(function(p123)
    _G.Show_Fov = p123
    getgenv().Setting.Show_Fov = p123

    saveSettings()
end)
_KillPlayerLegit:AddToggle('Aimbot_Skill_Fov', {
    Text = 'Aimbot Skill Fov',
    Default = getgenv().Setting.Aimbot_Skill_Fov,
})
Toggles.Aimbot_Skill_Fov:OnChanged(function(p124)
    _G.Aimbot_Skill_Fov = p124
    getgenv().Setting.Aimbot_Skill_Fov = p124

    saveSettings()
end)

local _KillPlayerRage = v101.Player:AddRightTabbox():AddTab('Kill Player [Rage]')

PlayerName = {}

for _, v216 in pairs(game.Players:GetChildren())do
    if v216.Name ~= game.Players.LocalPlayer.Name then
        table.insert(PlayerName, v216.Name)
    end
end

local _Select_Player = _KillPlayerRage:AddDropdown('Select_Player', {
    Values = PlayerName,
    Default = getgenv().Setting.Select_Player,
    Multi = false,
    Text = 'Player',
})

Options.Select_Player:OnChanged(function(p125)
    _G.Select_Player = p125
    getgenv().Setting.Select_Player = p125

    saveSettings()
end)
_KillPlayerRage:AddButton('Refresh Player', function()
    table.clear(PlayerName)

    for _, v217 in pairs(game.Players:GetChildren())do
        if v217.Name ~= game.Players.LocalPlayer.Name then
            table.insert(PlayerName, v217.Name)
        end
    end

    _Select_Player:SetValues(PlayerName)
end)
_KillPlayerRage:AddToggle('Spectate_Player', {
    Text = 'Spactate Player',
    Default = getgenv().Setting.Spectate_Player,
})
Toggles.Spectate_Player:OnChanged(function(p126)
    _G.Spectate_Player = p126
    getgenv().Setting.Spectate_Player = p126

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Spectate_Player then
            pcall(function()
                if game.Players:FindFirstChild(_G.Select_Player) then
                    game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(_G.Select_Player).Character.Humanoid
                end
            end)
        else
            game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        end
    end
end)
_KillPlayerRage:AddToggle('Teleport_to_Player', {
    Text = 'Teleport Player',
    Default = getgenv().Setting.Teleport_to_Player,
})
Toggles.Teleport_to_Player:OnChanged(function(p127)
    _G.Teleport_to_Player = p127
    getgenv().Setting.Teleport_to_Player = p127

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Teleport_to_Player then
            pcall(function()
                if game.Players:FindFirstChild(_G.Select_Player) then
                    TP(game.Players[_G.Select_Player].Character.HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)
_KillPlayerRage:AddToggle('Auto_Kill_Player_Melee', {
    Text = 'Auto Kill Player Melee',
    Default = getgenv().Setting.Auto_Kill_Player_Melee,
})
Toggles.Auto_Kill_Player_Melee:OnChanged(function(p128)
    _G.Auto_Kill_Player_Melee = p128
    getgenv().Setting.Auto_Kill_Player_Melee = p128

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Kill_Player_Melee then
            pcall(function()
                if game.Players:FindFirstChild(_G.Select_Player) then
                    for _, v218 in pairs(game:GetService('Workspace').Characters:GetChildren())do
                        if v218.Name == _G.Select_Player then
                            if v218:FindFirstChild('Humanoid') then
                                if v218:FindFirstChild('HumanoidRootPart') then
                                    if v218.Humanoid.Health > 0 then
                                        while true do
                                            wait()

                                            if (v218.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if (v218.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon_Kill_Player_Melee)
                                                    TP(v218.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))
                                                    game:GetService('VirtualUser'):CaptureController()
                                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                end
                                            else
                                                TP(v218.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))
                                            end
                                            if v218.Humanoid.Health <= 0 then
                                                break
                                            end
                                            if not _G.Auto_Kill_Player_Melee then
                                                break
                                            end
                                            if not game.Players:FindFirstChild(_G.Select_Player) then
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
_KillPlayerRage:AddToggle('Auto_Kill_Player_Gun', {
    Text = 'Auto Kill Player Gun',
    Default = getgenv().Setting.Auto_Kill_Player_Gun,
})
Toggles.Auto_Kill_Player_Gun:OnChanged(function(p129)
    _G.Auto_Kill_Player_Gun = p129
    getgenv().Setting.Auto_Kill_Player_Gun = p129

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Kill_Player_Gun then
            pcall(function()
                if game.Players:FindFirstChild(_G.Select_Player) then
                    for _, v219 in pairs(game:GetService('Workspace').Characters:GetChildren())do
                        if v219.Name == _G.Select_Player then
                            if v219:FindFirstChild('Humanoid') then
                                if v219:FindFirstChild('HumanoidRootPart') then
                                    if v219.Humanoid.Health > 0 then
                                        while true do
                                            wait()

                                            if (v219.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if (v219.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    AutoHaki()
                                                    EquipWeapon(SelectToolWeaponGun)

                                                    UseGunKillPlayer = true
                                                    game:GetService('Players').LocalPlayer.Character[SelectToolWeaponGun].Cooldown.Value = 0
                                                    v219.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v219.HumanoidRootPart.Transparency = 0.7

                                                    TP(v219.HumanoidRootPart.CFrame * CFrame.new(0, 50, -10))
                                                    game:GetService('VirtualUser'):CaptureController()
                                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                end
                                            else
                                                TP(v219.HumanoidRootPart.CFrame)
                                            end
                                            if game.Players:FindFirstChild(_G.Select_Player).Character.Humanoid.Health <= 0 then
                                                break
                                            end
                                            if not _G.Auto_Kill_Player_Gun then
                                                break
                                            end
                                            if not game.Players:FindFirstChild(_G.Select_Player) then
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        else
            UseGunKillPlayer = false
        end
    end
end)

local _Team = v101.Player:AddLeftTabbox():AddTab('Team')

_Team:AddButton('Join Pirate Team', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress')
end)
_Team:AddButton('Join Marin Team', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress')
end)

local _Inventory = v101.Player:AddLeftTabbox():AddTab('Inventory')

_Inventory:AddButton('Devil Fruit Shop', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')

    game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
_Inventory:AddButton('Title Name', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getTitles')

    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
_Inventory:AddButton('Color Haki', function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

local _ESP = v101.Player:AddRightTabbox():AddTab('ESP')

_ESP:AddToggle('ESP_Player', {
    Text = 'ESP Player',
    Default = getgenv().Setting.ESP_Player,
})
Toggles.ESP_Player:OnChanged(function(p130)
    _G.ESP_Player = p130
    getgenv().Setting.ESP_Player = p130

    saveSettings()
    ESP_Player()
end)
_ESP:AddToggle('ESP_Chest', {
    Text = 'ESP Chest',
    Default = getgenv().Setting.ESP_Chest,
})
Toggles.ESP_Chest:OnChanged(function(p131)
    _G.ESP_Chest = p131
    getgenv().Setting.ESP_Chest = p131

    saveSettings()
    ESP_Chest()
end)
_ESP:AddToggle('ESP_Devil_Fruit', {
    Text = 'ESP Devil Fruit',
    Default = getgenv().Setting.ESP_Devil_Fruit,
})
Toggles.ESP_Devil_Fruit:OnChanged(function(p132)
    _G.ESP_Devil_Fruit = p132
    getgenv().Setting.ESP_Devil_Fruit = p132

    saveSettings()
    ESP_Devil_Fruit()
end)
_ESP:AddToggle('ESP_Flower', {
    Text = 'ESP Flower',
    Default = getgenv().Setting.ESP_Flower,
})
Toggles.ESP_Flower:OnChanged(function(p133)
    _G.ESP_Flower = p133
    getgenv().Setting.ESP_Flower = p133

    saveSettings()
    ESP_Flower()
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if _G.ESP_Player then
                ESP_Player()
            end
            if _G.ESP_Chest then
                ESP_Chest()
            end
            if _G.ESP_Devil_Fruit then
                ESP_Devil_Fruit()
            end
            if _G.ESP_Flower then
                ESP_Flower()
            end
        end)
    end
end)

local _TeleportWorld = v101.Player:AddLeftTabbox():AddTab('Teleport World')

_TeleportWorld:AddButton('First World', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
end)
_TeleportWorld:AddButton('Second World', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
end)
_TeleportWorld:AddButton('Third World', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
end)

local _TeleportIsland = v101.Player:AddLeftTabbox():AddTab('Teleport Island')

Island_Table = {}

for _, v220 in pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())do
    table.insert(Island_Table, v220.Name)
end

_TeleportIsland:AddDropdown('Select_Island', {
    Values = Island_Table,
    Default = getgenv().Setting.Select_Island,
    Multi = false,
    Text = 'Island',
})
Options.Select_Island:OnChanged(function(p134)
    _G.Select_Island = p134
    getgenv().Setting.Select_Island = p134

    saveSettings()
end)
_TeleportIsland:AddToggle('Start_Tween_Island', {
    Text = 'Start Tween Island',
    Default = getgenv().Setting.Start_Tween_Island,
})
Toggles.Start_Tween_Island:OnChanged(function(p135)
    _G.Start_Tween_Island = p135
    getgenv().Setting.Start_Tween_Island = p135

    saveSettings()
    StopTween(_G.Start_Tween_Island)
end)
task.spawn(function()
    while wait(0.5) do
        if _G.Start_Tween_Island then
            pcall(function()
                for _, v221 in pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())do
                    if v221.Name == _G.Select_Island then
                        repeat
                            wait()
                            TP(v221.CFrame * CFrame.new(0, 40, 0))
                        until _G.Start_Tween_Island == false
                    end
                end
            end)
        end
    end
end)

local _ServerTab = v101.Player:AddRightTabbox():AddTab('Server Tab')

_ServerTab:AddButton('Rejoin', function()
    local _TeleportService2 = game:GetService('TeleportService')
    local _LocalPlayer2 = game:GetService('Players').LocalPlayer

    _TeleportService2:Teleport(game.PlaceId, _LocalPlayer2)
end)
_ServerTab:AddButton('Server Hop', function()
    Server_Hop()
end)
_ServerTab:AddButton('Server Hop [Low Players]', function()
    Server_Hop_Low()
end)

local _MainDungeon = v101.Player:AddLeftTabbox():AddTab('Main Dungeon')

if getgenv().Setting.Select_Dungeon == nil then
    getgenv().Setting.Select_Dungeon = 'Flame'
end

Dungeon = {
    'Flame',
    'Ice',
    'Quake',
    'Light',
    'Dark',
    'String',
    'Rumble',
    'Magma',
    'Human: Buddha',
    'Sand',
    'Bird: Phoenix',
    'Dough',
}

_MainDungeon:AddDropdown('Select_Dungeon', {
    Values = Dungeon,
    Default = getgenv().Setting.Select_Dungeon,
    Multi = false,
    Text = 'Dungeon',
})
Options.Select_Dungeon:OnChanged(function(p136)
    _G.Select_Dungeon = p136
    getgenv().Setting.Select_Dungeon = p136

    saveSettings()
end)
_MainDungeon:AddToggle('Auto_Buy_Chips_Dungeon', {
    Text = 'Auto Buy Chips Dungeon',
    Default = getgenv().Setting.Auto_Buy_Chips_Dungeon,
})
Toggles.Auto_Buy_Chips_Dungeon:OnChanged(function(p137)
    _G.Auto_Buy_Chips_Dungeon = p137
    getgenv().Setting.Auto_Buy_Chips_Dungeon = p137

    saveSettings()
end)
_MainDungeon:AddToggle('Auto_Buy_Chips_Dungeon_Hop', {
    Text = 'Auto Buy Chips Dungeon Hop',
    Default = getgenv().Setting.Auto_Buy_Chips_Dungeon_Hop,
})
Toggles.Auto_Buy_Chips_Dungeon_Hop:OnChanged(function(p138)
    _G.Auto_Buy_Chips_Dungeon_Hop = p138
    getgenv().Setting.Auto_Buy_Chips_Dungeon_Hop = p138

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('RaidsNpc', 'Select', _G.Select_Dungeon)
        end
    end
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon_Hop then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
                    print('Have')
                else
                    _G.Auto_Bring_Fruit = true

                    wait(30)

                    if not game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') then
                        Server_Hop()
                    end
                end
            end)
        end
    end
end)
_MainDungeon:AddToggle('Auto_Start_Dungeon', {
    Text = 'Auto Start Dungeon',
    Default = getgenv().Setting.Auto_Start_Dungeon,
})
Toggles.Auto_Start_Dungeon:OnChanged(function(p139)
    _G.Auto_Start_Dungeon = p139
    getgenv().Setting.Auto_Start_Dungeon = p139

    saveSettings()
end)
task.spawn(function()
    while wait(0.5) do
        if _G.Auto_Start_Dungeon then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
                    if World2 then
                        fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif World3 then
                        fireclickdetector(game.Workspace.Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
            end)
        end
    end
end)
_MainDungeon:AddToggle('Auto_Next_Island', {
    Text = 'Auto Next Island',
    Default = getgenv().Setting.Auto_Next_Island,
})
Toggles.Auto_Next_Island:OnChanged(function(p140)
    _G.Auto_Next_Island = p140
    getgenv().Setting.Auto_Next_Island = p140

    saveSettings()
    StopTween(_G.Auto_Next_Island)
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Next_Island then
            if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible ~= true then
                _G.Start_Next_Island = false
            else
                _G.Start_Next_Island = true

                if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 5') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace')._WorldOrigin.Locations['Island 5'].Position).Magnitude <= 3000 then
                    TP(game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 5').CFrame * CFrame.new(0, 70, 100))
                elseif game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 4') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace')._WorldOrigin.Locations['Island 4'].Position).Magnitude <= 3000 then
                    TP(game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 4').CFrame * CFrame.new(0, 70, 100))
                elseif game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 3') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace')._WorldOrigin.Locations['Island 3'].Position).Magnitude <= 3000 then
                    TP(game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 3').CFrame * CFrame.new(0, 70, 100))
                elseif game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 2') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace')._WorldOrigin.Locations['Island 2'].Position).Magnitude <= 3000 then
                    TP(game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 2').CFrame * CFrame.new(0, 70, 100))
                elseif game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace')._WorldOrigin.Locations['Island 1'].Position).Magnitude <= 3000 then
                    TP(game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1').CFrame * CFrame.new(0, 70, 100))
                end
            end
        end
    end
end)
task.spawn(function()
    while wait() do
        if _G.Start_Next_Island then
            pcall(function()
                for _, v222 in pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())do
                    if string.find(v222.Name, 'Island') then
                        if (v222.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 3000 then
                            v222:Destroy()
                        end
                    end
                end
            end)
        end
    end
end)
_MainDungeon:AddToggle('Kill_Aura', {
    Text = 'Kill Aura',
    Default = getgenv().Setting.Kill_Aura,
})
Toggles.Kill_Aura:OnChanged(function(p141)
    _G.Kill_Aura = p141
    getgenv().Setting.Kill_Aura = p141

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Kill_Aura then
            pcall(function()
                for _, v223 in pairs(game.Workspace.Enemies:GetDescendants())do
                    if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                        if v223:FindFirstChild('Humanoid') then
                            if v223:FindFirstChild('HumanoidRootPart') then
                                if v223.Humanoid.Health > 0 then
                                    while true do
                                        wait()

                                        v223.Humanoid.Health = 0
                                        v223.HumanoidRootPart.Size = Vector3.new(40, 40, 40)
                                        v223.HumanoidRootPart.CanCollide = false

                                        if _G.Kill_Aura == false then
                                            break
                                        end
                                        if not v223.Parent then
                                            break
                                        end
                                        if v223.Humanoid.Health <= 0 then
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
_MainDungeon:AddToggle('Auto_Awake', {
    Text = 'Auto Awake',
    Default = getgenv().Setting.Auto_Awake,
})
Toggles.Auto_Awake:OnChanged(function(p142)
    _G.Auto_Awake = p142
    getgenv().Setting.Auto_Awake = p142

    saveSettings()
end)
task.spawn(function()
    while wait(0.1) do
        if _G.Auto_Awake then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Check')
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Awaken')
        end
    end
end)

local _LawDungeon = v101.Player:AddRightTabbox():AddTab('Law Dungeon')

_LawDungeon:AddToggle('Auto_Buy_Law_Chip', {
    Text = 'Auto Buy Law Chip',
    Default = getgenv().Setting.Auto_Buy_Law_Chip,
})
Toggles.Auto_Buy_Law_Chip:OnChanged(function(p143)
    _G.Auto_Buy_Law_Chip = p143
    getgenv().Setting.Auto_Buy_Law_Chip = p143

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Buy_Law_Chip then
            pcall(function()
                if not (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or game:GetService('Workspace').Enemies:FindFirstChild('Order [Lv. 1250] [Raid Boss]')) or game:GetService('ReplicatedStorage'):FindFirstChild('Order [Lv. 1250] [Raid Boss]')) then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '2')
                end
            end)
        end
    end
end)
_LawDungeon:AddToggle('Auto_Start_Law_Dungeon', {
    Text = 'Auto Start Law Dungeon',
    Default = getgenv().Setting.Auto_Start_Law_Dungeon,
})
Toggles.Auto_Start_Law_Dungeon:OnChanged(function(p144)
    _G.Auto_Start_Law_Dungeon = p144
    getgenv().Setting.Auto_Start_Law_Dungeon = p144

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Start_Law_Dungeon then
            pcall(function()
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip') then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                end
            end)
        end
    end
end)
_LawDungeon:AddToggle('Auto_Kill_Law', {
    Text = 'Auto Kill Law',
    Default = getgenv().Setting.Auto_Kill_Law,
})
Toggles.Auto_Kill_Law:OnChanged(function(p145)
    _G.Auto_Kill_Law = p145
    getgenv().Setting.Auto_Kill_Law = p145

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Kill_Law then
            pcall(function()
                if game:GetService('ReplicatedStorage'):FindFirstChild('Order [Lv. 1250] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Order [Lv. 1250] [Raid Boss]') then
                    for _, v224 in pairs(game.Workspace.Enemies:GetChildren())do
                        if _G.Auto_Kill_Law then
                            if v224.Name == 'Order [Lv. 1250] [Raid Boss]' then
                                if v224:FindFirstChild('HumanoidRootPart') then
                                    if v224:FindFirstChild('Humanoid') then
                                        if v224.Humanoid.Health > 0 then
                                            while true do
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)

                                                v224.HumanoidRootPart.CanCollide = false
                                                v224.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                                TP(v224.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                Attack()

                                                if not _G.Auto_Kill_Law then
                                                    break
                                                end
                                                if v224.Humanoid.Health <= 0 then
                                                    break
                                                end
                                                if not v224.Parent then
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local _DevilFruitShop = v101.BuyItem:AddLeftTabbox():AddTab('Devil Fruit Shop')
local _GetFruits = game.ReplicatedStorage:FindFirstChild('Remotes').CommF_:InvokeServer('GetFruits')

Table_DevilFruitSniper = {}
ShopDevilSell = {}

for _, v225 in next, _GetFruits do
    table.insert(Table_DevilFruitSniper, v225.Name)

    if v225.OnSale then
        table.insert(ShopDevilSell, v225.Name)
    end
end

_DevilFruitShop:AddDropdown('Select_Devil_Fruit', {
    Values = Table_DevilFruitSniper,
    Default = getgenv().Setting.Select_Devil_Fruit,
    Multi = false,
    Text = 'Devil Fruit',
})
Options.Select_Devil_Fruit:OnChanged(function(p146)
    _G.Select_Devil_Fruit = p146
    getgenv().Setting.Select_Devil_Fruit = p146

    saveSettings()
end)
_DevilFruitShop:AddToggle('Auto_Buy_Devil_Fruit', {
    Text = 'Auto Buy Devil Fruit',
    Default = getgenv().Setting.Auto_Buy_Devil_Fruit,
})
Toggles.Auto_Buy_Devil_Fruit:OnChanged(function(p147)
    _G.Auto_Buy_Devil_Fruit = p147
    getgenv().Setting.Auto_Buy_Devil_Fruit = p147

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Buy_Devil_Fruit then
            pcall(function()
                local _Select_Devil_Fruit = _G.Select_Devil_Fruit

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', _Select_Devil_Fruit)
            end)
        end
    end
end)
_DevilFruitShop:AddToggle('Auto_Random_Fruit', {
    Text = 'Auto Random Fruit',
    Default = getgenv().Setting.Auto_Random_Fruit,
})
Toggles.Auto_Random_Fruit:OnChanged(function(p148)
    _G.Auto_Random_Fruit = p148
    getgenv().Setting.Auto_Random_Fruit = p148

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Random_Fruit then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'Cousin',
                'Buy',
            }))
        end
    end
end)
_DevilFruitShop:AddToggle('Auto_Bring_Fruit', {
    Text = 'Auto Bring Fruit',
    Default = getgenv().Setting.Auto_Bring_Fruit,
})
Toggles.Auto_Bring_Fruit:OnChanged(function(p149)
    _G.Auto_Bring_Fruit = p149
    getgenv().Setting.Auto_Bring_Fruit = p149

    saveSettings()
end)
task.spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_Bring_Fruit then
                for _, v226 in pairs(game:GetService('Workspace'):GetChildren())do
                    if string.find(v226.Name, 'Fruit') then
                        if v226:IsA('Tool') then
                            game:GetService('TweenService'):Create(v226.Handle, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
                                CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                            }):Play()
                        end
                    end
                end
            end
        end
    end)
end)
_DevilFruitShop:AddToggle('Auto_Bring_Spawn_Fruit', {
    Text = 'Auto Bring Spawn Fruit',
    Default = getgenv().Setting.Auto_Bring_Spawn_Fruit,
})
Toggles.Auto_Bring_Spawn_Fruit:OnChanged(function(p150)
    _G.Auto_Bring_Spawn_Fruit = p150
    getgenv().Setting.Auto_Bring_Spawn_Fruit = p150

    saveSettings()
end)
task.spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_Bring_Spawn_Fruit then
                for _, v227 in pairs(game:GetService('Workspace'):GetChildren())do
                    if v227.Name == 'Fruit ' then
                        if v227:FindFirstChild('Handle') then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v227.Handle.CFrame
                        end
                    end
                end
            end
        end
    end)
end)
_DevilFruitShop:AddToggle('Auto_Store_Fruit', {
    Text = 'Auto Store Fruit',
    Default = getgenv().Setting.Auto_Store_Fruit,
})
Toggles.Auto_Store_Fruit:OnChanged(function(p151)
    _G.Auto_Store_Fruit = p151
    getgenv().Setting.Auto_Store_Fruit = p151

    saveSettings()
end)
task.spawn(function()
    while wait() do
        if _G.Auto_Store_Fruit then
            pcall(function()
                for _, v228 in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
                    if string.find(v228.Name, 'Fruit') then
                        local v229 = RemoveSpaces(v228.Name)

                        if v228.Name ~= 'Bird: Falcon Fruit' then
                            if v228.Name ~= 'Bird: Phoenix Fruit' then
                                if v228.Name ~= 'Human: Buddha Fruit' then
                                    NameFruit = v229 .. '-' .. v229
                                else
                                    NameFruit = 'Human-Human: Buddha'
                                end
                            else
                                NameFruit = 'Bird-Bird: Phoenix'
                            end
                        else
                            NameFruit = 'Bird-Bird: Falcon'
                        end

                        local _CommF_2 = game:GetService('ReplicatedStorage').Remotes.CommF_

                        for _, v230 in pairs(_CommF_2:InvokeServer('getInventoryFruits'))do
                            if v230.Name == NameFruit then
                                HaveFruitInStore = true
                            end
                        end

                        if not Have then
                            local v231 = {
                                'StoreFruit',
                                NameFruit,
                                game:GetService('Players').LocalPlayer.Character:FindFirstChild(v228.Name) or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(v228.Name),
                            }

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v231))
                        end

                        HaveFruitInStore = false
                    end
                end
            end)
        end
    end
end)

local _FightingStyle = v101.BuyItem:AddLeftTabbox():AddTab('Fighting Style')

_FightingStyle:AddButton('Buy Black Leg', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
end)
_FightingStyle:AddButton('Buy Electro', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
end)
_FightingStyle:AddButton('Buy Fishman Karate', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
end)
_FightingStyle:AddButton('Buy Dragon Claw', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
end)
_FightingStyle:AddButton('Buy Superhuman', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
end)
_FightingStyle:AddButton('Buy Death Step', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
end)
_FightingStyle:AddButton('Buy Sharkman Karate', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
end)
_FightingStyle:AddButton('Buy Electric Claw', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
end)
_FightingStyle:AddButton('Buy Dragon Talon', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
end)
_FightingStyle:AddButton('Buy God Human', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodwwdhuman')
end)

local _Abilities = v101.BuyItem:AddLeftTabbox():AddTab('Abilities')

_Abilities:AddButton('Buy Geppo', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
end)
_Abilities:AddButton('Buy Buso Haki', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
end)
_Abilities:AddButton('Buy Soru', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
end)
_Abilities:AddButton('Buy Observation(Ken) Haki', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
end)

local _Sword = v101.BuyItem:AddRightTabbox():AddTab('Sword')

_Sword:AddButton('Cutlass', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
end)
_Sword:AddButton('Katana', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
end)
_Sword:AddButton('Iron Mace', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
end)
_Sword:AddButton('Duel Katana', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
end)
_Sword:AddButton('Triple Katana', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
end)
_Sword:AddButton('Pipe', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
end)
_Sword:AddButton('Dual Headed Blade', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
end)
_Sword:AddButton('Bisento', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
end)
_Sword:AddButton('Soul Cane', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')
end)

local _Gun = v101.BuyItem:AddRightTabbox():AddTab('Gun')

_Gun:AddButton('Slingshot', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Slingshot')
end)
_Gun:AddButton('Musket', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Musket')
end)
_Gun:AddButton('Flintlock', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Flintlock')
end)
_Gun:AddButton('Refined Flintlock', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Refined Flintlock')
end)
_Gun:AddButton('Cannon', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cannon')
end)
_Gun:AddButton('Kabucha', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '1')
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '2')
end)

local _Fragment = v101.BuyItem:AddRightTabbox():AddTab('Fragment')

_Fragment:AddButton('Race Ghoul', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'BuyCheck', 4)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'Change', 4)
end)
_Fragment:AddButton('Race Cyborg', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CyborgTrainer', 'Buy')
end)
_Fragment:AddButton('Random Race', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
end)
_Fragment:AddButton('Reset Stats', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
end)

local _Accessory = v101.BuyItem:AddRightTabbox():AddTab('Accessory')

_Accessory:AddButton('Tomoe Ring', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Tomoe Ring')
end)
_Accessory:AddButton('Black Cape', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Black Cape')
end)
_Accessory:AddButton('Swordsman Hat', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Swordsman Hat')
end)
v129:Notify('Script : Load Successfully')
v129:Notify('Sponser By Unique Hub')
