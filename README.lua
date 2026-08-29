-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.SelfieView.Hooks.useCameraOn
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = require(script.Parent.useTrackerMode)
return function() -- name: useCameraOn
    -- upvalues: (copy) v_u_1
    local v2 = v_u_1()
    return v2 == Enum.TrackerMode.Video and true or v2 == Enum.TrackerMode.AudioVideo
end
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.SelfieView.Components.CameraStatusIcon
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = game:GetService("CorePackages").Packages
local v_u_2 = require(v1.React)
local v3 = require(v1.UIBlox)
local v_u_4 = v3.App.ImageSet.Images
local v_u_5 = v3.Core.ImageSet.ImageSetLabel
local v_u_6 = require(script.Parent.Parent.Hooks.useCameraOn)
local v_u_7 = UDim2.fromScale(1, 1)
return function(p8) -- name: CameraStatusIcon
    -- upvalues: (copy) v_u_6, (copy) v_u_2, (copy) v_u_5, (copy) v_u_4, (copy) v_u_7
    local v9 = v_u_6()
    local v10 = v_u_2.createElement
    local v11 = {
        ["BackgroundTransparency"] = 1,
        ["Size"] = nil,
        ["Size"] = UDim2.fromScale(1, 1)
    }
    local v12 = {
        ["Icon"] = v_u_2.createElement(v_u_5, {
            ["BackgroundTransparency"] = 1,
            ["Image"] = nil,
            ["Size"] = nil,
            ["Position"] = nil,
            ["AnchorPoint"] = nil,
            ["ImageTransparency"] = nil,
            ["Image"] = v9 and v_u_4["icons/controls/video"] or v_u_4["icons/controls/videoOff"],
            ["Size"] = p8.iconSize or v_u_7,
            ["Position"] = UDim2.fromScale(0.5, 0.5),
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["ImageTransparency"] = p8.transparency or 0
        })
    }
    return v10("Frame", v11, v12)
end
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.SelfieView.Components.CameraStatusDot
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = game:GetService("CorePackages").Packages
local v_u_2 = require(v1.React)
local v_u_3 = require(v1.UIBlox).Core.Style.useStyle
local v_u_4 = UDim2.fromOffset(4, 4)
local v_u_5 = Vector2.new(0.5, 0.5)
local v_u_6 = UDim2.fromScale(0.8, 0.8)
return function(p7) -- name: CameraStatusDot
    -- upvalues: (copy) v_u_3, (copy) v_u_2, (copy) v_u_5, (copy) v_u_4, (copy) v_u_6
    local v8 = v_u_3()
    local v9 = v_u_2.createElement
    local v10 = "Frame"
    local v11 = {
        ["AnchorPoint"] = p7.AnchorPoint or v_u_5
    }
    local v12
    if p7.Size then
        v12 = p7.Size
    else
        v12 = v_u_4
    end
    v11.Size = v12
    v11.BackgroundColor3 = v8.Theme.OnlineStatus.Color
    v11.Position = p7.Position or v_u_6
    v11.ZIndex = p7.ZIndex
    return v9(v10, v11, {
        ["UICorner"] = v_u_2.createElement("UICorner", {
            ["CornerRadius"] = UDim.new(1, 0)
        })
    })
end
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.CameraSensitivityEntry
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = UserSettings():GetService("UserGameSettings")
local v2 = game:GetService("CorePackages")
local v3 = require(v2.Packages.InGameMenuDependencies)
local v_u_4 = v3.Roact
local v5 = v3.t
local v_u_6 = {
    v_u_1:GetPropertyChangedSignal("GamepadCameraSensitivity"),
    v_u_1:GetPropertyChangedSignal("MouseSensitivity"),
    v_u_1:GetPropertyChangedSignal("MouseSensitivityFirstPerson"),
    v_u_1:GetPropertyChangedSignal("MouseSensitivityThirdPerson")
}
local v7 = script.Parent.Parent.Parent
local v_u_8 = require(v7.Utility.ExternalEventConnection)
local v_u_9 = require(script.Parent.SliderEntry)
local v_u_10 = require(v7.Utility.SendAnalytics)
local v_u_11 = require(v7.Resources.Constants)
local v12 = v_u_4.PureComponent:extend("CameraSensitivityEntry")
v12.validateProps = v5.strictInterface({
    ["LayoutOrder"] = v5.integer,
    ["canCaptureFocus"] = v5.optional(v5.boolean),
    ["isMenuOpen"] = v5.optional(v5.boolean)
})
function v12.init(p_u_13) -- name: init
    -- upvalues: (copy) v_u_1
    function p_u_13.onSensitivityChanged()
        -- upvalues: (copy) p_u_13, (ref) v_u_1
        p_u_13:setState({
            ["engineSensitivity"] = v_u_1.MouseSensitivityFirstPerson.X
        })
    end
    p_u_13.onSensitivityChanged()
end
function v12.render(p14) -- name: render
    -- upvalues: (copy) v_u_4, (copy) v_u_9, (copy) v_u_1, (copy) v_u_10, (copy) v_u_11, (copy) v_u_6, (copy) v_u_8
    local v15 = {}
    local v16 = v_u_4.createElement
    local v17 = v_u_9
    local v18 = {
        ["LayoutOrder"] = nil,
        ["labelKey"] = "CoreScripts.InGameMenu.GameSettings.CameraSensitivity",
        ["value"] = nil,
        ["min"] = 0,
        ["max"] = 10,
        ["stepInterval"] = 1,
        ["keyboardInputStepInterval"] = 0.01,
        ["valueChanged"] = nil,
        ["canCaptureFocus"] = nil,
        ["isMenuOpen"] = nil,
        ["LayoutOrder"] = p14.props.LayoutOrder
    }
    local v19 = p14.state.engineSensitivity
    local v20
    if v19 <= 1 then
        v20 = (v19 - 0.01) / 0.198
    else
        v20 = (v19 + 2) / 0.6
    end
    local v21 = v20 / 0.01 + 0.5
    local v22 = math.floor(v21) * 0.01
    v18.value = math.clamp(v22, 0, 10)
    function v18.valueChanged(p23) -- name: valueChanged
        -- upvalues: (ref) v_u_1, (ref) v_u_10, (ref) v_u_11
        local v24
        if p23 <= 5 then
            v24 = 0.198 * p23 + 0.01
        else
            v24 = 0.6 * p23 - 2
        end
        local v25 = math.clamp(v24, 0, 10)
        local v26 = Vector2.new(v25, v25)
        v_u_1.MouseSensitivityFirstPerson = v26
        v_u_1.MouseSensitivityThirdPerson = v26
        v_u_10(v_u_11.AnalyticsSettingsChangeName, nil, {}, true)
    end
    v18.canCaptureFocus = p14.props.canCaptureFocus
    v18.isMenuOpen = p14.props.isMenuOpen
    v15.CameraSensitivityMouseSlider = v16(v17, v18)
    for _, v27 in ipairs(v_u_6) do
        v15[tostring(v27) .. "CameraSensitivityControlConnection"] = v_u_4.createElement(v_u_8, {
            ["event"] = v27,
            ["callback"] = p14.onSensitivityChanged
        })
    end
    return v_u_4.createFragment(v15)
end
return v12
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.CameraModeEntry
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = game:GetService("CorePackages")
local v2 = game:GetService("Players")
local v_u_3 = UserSettings():GetService("UserGameSettings")
local v_u_4 = v_u_3:GetPropertyChangedSignal("ComputerCameraMovementMode")
local v5 = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local v6 = require(v5.Modules.CoreUtility)
local v_u_7 = v2.LocalPlayer
local v_u_8 = v6.waitForChildOfClass(v_u_7, "PlayerScripts")
local v_u_9 = v_u_7:GetPropertyChangedSignal("DevComputerMovementMode")
local v10 = require(v1.Packages.InGameMenuDependencies)
local v_u_11 = v10.Roact
local v12 = v10.t
local v13 = script.Parent.Parent.Parent
local v_u_14 = require(v13.Components.DropDownSelection)
local v_u_15 = require(v13.Utility.ExternalEventConnection)
local v_u_16 = require(script.Parent.InputLabel)
local v_u_17 = require(script.Parent.DeveloperLockLabel)
local v_u_18 = require(v13.Localization.withLocalization)
local v_u_19 = require(v13.Utility.SendAnalytics)
local v_u_20 = require(v13.Resources.Constants)
local v_u_21 = {
    [Enum.ComputerCameraMovementMode.Classic] = "CoreScripts.InGameMenu.GameSettings.CameraModeClassic",
    [Enum.ComputerCameraMovementMode.Follow] = "CoreScripts.InGameMenu.GameSettings.CameraModeFollow",
    [Enum.ComputerCameraMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default",
    [Enum.ComputerCameraMovementMode.CameraToggle] = "CoreScripts.InGameMenu.GameSettings.CameraModeCameraToggle"
}
local v22 = v_u_11.PureComponent:extend("CameraModeEntry")
v22.validateProps = v12.strictInterface({
    ["LayoutOrder"] = v12.integer,
    ["canOpen"] = v12.optional(v12.boolean),
    ["canCaptureFocus"] = v12.optional(v12.boolean),
    ["ButtonRef"] = v12.optional(v12.union(v12.callback, v12.table))
})
v22.defaultProps = {
    ["canOpen"] = true
}
function v22.init(p23) -- name: init
    -- upvalues: (copy) v_u_3, (copy) v_u_8, (copy) v_u_7
    p23:setState({
        ["selectedComputerMode"] = v_u_3.ComputerCameraMovementMode,
        ["computerOptions"] = v_u_8 and v_u_8:GetRegisteredComputerCameraMovementModes() or {},
        ["developerComputerMode"] = v_u_7.DevComputerCameraMode
    })
end
function v22.render(p_u_24) -- name: render
    -- upvalues: (copy) v_u_11, (copy) v_u_15, (copy) v_u_4, (copy) v_u_3, (copy) v_u_8, (copy) v_u_9, (copy) v_u_7, (copy) v_u_21, (copy) v_u_16, (copy) v_u_18, (copy) v_u_14, (copy) v_u_19, (copy) v_u_20, (copy) v_u_17
    local v25 = {}
    local v26 = {
        ["event"] = v_u_4,
        ["callback"] = function() -- name: callback
            -- upvalues: (copy) p_u_24, (ref) v_u_3
            p_u_24:setState({
                ["selectedComputerMode"] = v_u_3.ComputerCameraMovementMode
            })
        end
    }
    v25.ComputerCameraMovementModeListener = v_u_11.createElement(v_u_15, v26)
    local v27 = v_u_8
    if v27 then
        v27 = v_u_11.createElement(v_u_15, {
            ["event"] = v_u_8.ComputerCameraMovementModeRegistered,
            ["callback"] = function() -- name: callback
                -- upvalues: (copy) p_u_24, (ref) v_u_8
                p_u_24:setState({
                    ["computerOptions"] = v_u_8:GetRegisteredComputerCameraMovementModes()
                })
            end
        })
    end
    v25.ComputerCameraMovementModeRegisteredListener = v27
    local v28 = {
        ["event"] = v_u_9,
        ["callback"] = function() -- name: callback
            -- upvalues: (copy) p_u_24, (ref) v_u_7
            p_u_24:setState({
                ["developerComputerMode"] = v_u_7.DevComputerCameraMode
            })
        end
    }
    v25.LocalPlayerComputerMovementMode = v_u_11.createElement(v_u_15, v28)
    if #p_u_24.state.computerOptions == 0 then
        return v_u_11.createFragment(v25)
    end
    local v_u_29 = p_u_24.state.developerComputerMode ~= Enum.DevComputerCameraMovementMode.UserChoice
    local v_u_30 = {}
    local v_u_31 = 0
    if not v_u_29 then
        for v32, v33 in ipairs(p_u_24.state.computerOptions) do
            v_u_30[v32] = v_u_21[v33]
            local v34 = v_u_30[v32] ~= nil
            local v35 = "Camera movement mode " .. v33.Name .. " has no localization key"
            assert(v34, v35)
            if p_u_24.state.selectedComputerMode.Value == v33.Value then
                v_u_31 = v32
            end
        end
    end
    local v36 = v_u_11.createElement
    local v37 = "Frame"
    local v38 = {
        ["Size"] = nil,
        ["BackgroundTransparency"] = 1,
        ["LayoutOrder"] = nil,
        ["ZIndex"] = 2,
        ["Size"] = UDim2.new(1, 0, 0, 120),
        ["LayoutOrder"] = p_u_24.props.LayoutOrder
    }
    local v39 = {
        ["Padding"] = v_u_11.createElement("UIPadding", {
            ["PaddingLeft"] = UDim.new(0, 24),
            ["PaddingRight"] = UDim.new(0, 24)
        }),
        ["InputLabel"] = v_u_11.createElement(v_u_16, {
            ["localizationKey"] = "CoreScripts.InGameMenu.GameSettings.CameraMode",
            ["Size"] = nil,
            ["Position"] = nil,
            ["AnchorPoint"] = nil,
            ["Size"] = UDim2.new(1, 0, 0, 56),
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["AnchorPoint"] = Vector2.new(0, 0)
        })
    }
    local v40 = v_u_18
    local v41 = {}
    local v42
    if v_u_29 then
        v42 = v_u_21[p_u_24.state.developerComputerMode] or nil
    else
        v42 = nil
    end
    v41.placeholder = v42
    v39.Dropdown = v40(v41)(function(_)
        -- upvalues: (ref) v_u_11, (ref) v_u_14, (copy) v_u_30, (ref) v_u_31, (copy) p_u_24, (copy) v_u_29, (ref) v_u_3, (ref) v_u_19, (ref) v_u_20
        return v_u_11.createElement(v_u_14, {
            ["Size"] = nil,
            ["Position"] = nil,
            ["selections"] = nil,
            ["selectedIndex"] = nil,
            ["placeHolderText"] = nil,
            ["enabled"] = nil,
            ["localize"] = true,
            ["selectionChanged"] = nil,
            ["selectionParentName"] = "cameraModeDropdown",
            ["canOpen"] = nil,
            ["canCaptureFocus"] = nil,
            ["ButtonRef"] = nil,
            ["Size"] = UDim2.new(1, 0, 0, 44),
            ["Position"] = UDim2.new(0, 0, 0, 56),
            ["selections"] = v_u_30,
            ["selectedIndex"] = v_u_31,
            ["placeHolderText"] = p_u_24.state.developerComputerMode.Name,
            ["enabled"] = not v_u_29,
            ["selectionChanged"] = function(p43) -- name: selectionChanged
                -- upvalues: (ref) v_u_3, (ref) p_u_24, (ref) v_u_19, (ref) v_u_20
                v_u_3.ComputerCameraMovementMode = p_u_24.state.computerOptions[p43]
                v_u_19(v_u_20.AnalyticsSettingsChangeName, nil, {}, true)
            end,
            ["canOpen"] = p_u_24.props.canOpen,
            ["canCaptureFocus"] = p_u_24.props.canCaptureFocus,
            ["ButtonRef"] = p_u_24.props.ButtonRef
        })
    end)
    if v_u_29 then
        v_u_29 = v_u_11.createElement(v_u_17, {
            ["AnchorPoint"] = Vector2.new(0, 1),
            ["Position"] = UDim2.new(0, 0, 1, 0),
            ["Size"] = UDim2.new(1, -72, 0.25, 0)
        })
    end
    v39.LockedLabel = v_u_29
    v25.CameraModeEntrySelector = v36(v37, v38, v39)
    return v_u_11.createFragment(v25)
end
return v22
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.InGameMenu
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = game:GetService("CoreGui")
local v2 = game:GetService("CorePackages")
local v_u_3 = game:GetService("LocalizationService")
local v_u_4 = game:GetService("GuiService")
local v5 = v_u_1:WaitForChild("RobloxGui")
local v6 = require(v2.Packages.InGameMenuDependencies)
local v_u_7 = v6.Roact
local v_u_8 = v6.RoactRodux
local v9 = v6.UIBlox
local v_u_10 = require(v2.Workspace.Packages.InteractionFeedback).FeedbackManagerInjectionContextProvider
local v_u_11 = require(v2.Workspace.Packages.RobloxAppInteractionFeedbackConfig).AppInteractionFeedbackProvider
local v_u_12 = require(v2.Workspace.Packages.InExperienceLocales).Localization
local v_u_13 = require(v2.Workspace.Packages.Localization).LocalizationProvider
local v_u_14 = v9.App.SelectionImage.SelectionCursorProvider
local v_u_15 = require(v5.Modules.Common.renderWithCoreScriptsStyleProvider)
local v_u_16 = require(script.SetupFunctions.bindMenuActions)
local v_u_17 = require(script.SetupFunctions.registerSetCores)
local v_u_18 = require(script.SetupFunctions.requestGameNameAndDescription)
local v19 = require(script.createStore)
local v_u_20 = require(script.Components.App)
local v_u_21 = require(script.Components.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local v_u_22 = require(v5.Modules.VoiceChat.initVoiceChatStore)
local v_u_23 = require(v5.Modules.TrustAndSafety)
local v_u_24 = require(script.Actions.SetLocaleId)
local v_u_25 = require(script.Actions.SetInspectMenuEnabled)
local v_u_26 = require(script.Actions.SetCurrentPage)
local v_u_27 = require(script.Actions.SetScreenSize)
local v_u_28 = require(script.Actions.SetMenuIconTooltipOpen)
local v_u_29 = require(script.Actions.SetRespawning)
local v_u_30 = require(script.Thunks.OpenMenu)
local v_u_31 = require(script.Thunks.CloseMenu)
local v_u_32 = require(script.InGameMenuPolicy)
local v_u_33 = require(script.GlobalConfig)
local v_u_34 = require(script.Resources.Constants)
local v_u_35 = require(script.Flags.GetFFlagIGMGamepadSelectionHistory)
local v_u_36 = Instance.new("BindableEvent")
local v_u_37 = Instance.new("BindableEvent")
local v_u_38 = v19()
return {
    ["mountInGameMenu"] = function() -- name: mountInGameMenu
        -- upvalues: (copy) v_u_17, (copy) v_u_38, (copy) v_u_16, (copy) v_u_18, (copy) v_u_33, (copy) v_u_7, (copy) v_u_36, (copy) v_u_37, (copy) v_u_12, (copy) v_u_3, (copy) v_u_24, (copy) v_u_25, (copy) v_u_4, (copy) v_u_22, (copy) v_u_15, (copy) v_u_13, (copy) v_u_14, (copy) v_u_35, (copy) v_u_21, (copy) v_u_20, (copy) v_u_11, (copy) v_u_10, (copy) v_u_34, (copy) v_u_27, (copy) v_u_8, (copy) v_u_32, (copy) v_u_1
        v_u_17(v_u_38)
        v_u_16(v_u_38)
        v_u_18(v_u_38)
        if v_u_33.propValidation then
            v_u_7.setGlobalConfig({
                ["propValidation"] = true
            })
        end
        if v_u_33.elementTracing then
            v_u_7.setGlobalConfig({
                ["elementTracing"] = true
            })
        end
        v_u_38.changed:connect(function(p39, p40)
            -- upvalues: (ref) v_u_36, (ref) v_u_37
            if p39.isMenuOpen ~= p40.isMenuOpen then
                v_u_36:Fire(p39.isMenuOpen)
            end
            local v41 = p39.respawn.enabled
            local v42 = p40.respawn.enabled
            local v43 = p39.respawn.customCallback
            local v44 = p40.respawn.customCallback
            if v41 ~= v42 and v43 ~= v44 then
                v_u_37:Fire(v41, v43)
            end
        end)
        local v_u_45 = v_u_12.new(v_u_3.RobloxLocaleId)
        v_u_38:dispatch(v_u_24(v_u_3.RobloxLocaleId))
        v_u_3:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function()
            -- upvalues: (copy) v_u_45, (ref) v_u_3, (ref) v_u_38, (ref) v_u_24
            v_u_45:SetLocale(v_u_3.RobloxLocaleId)
            v_u_38:dispatch(v_u_24(v_u_3.RobloxLocaleId))
        end)
        v_u_38:dispatch(v_u_25(v_u_4:GetInspectMenuEnabled()))
        v_u_4.InspectMenuEnabledChangedSignal:Connect(function(p46)
            -- upvalues: (ref) v_u_38, (ref) v_u_25
            v_u_38:dispatch(v_u_25(p46))
        end)
        v_u_22(v_u_38)
        local v47 = v_u_15
        local v48 = {}
        local v49 = v_u_7.createElement
        local v50 = v_u_13
        local v51 = {
            ["localization"] = v_u_45
        }
        local v52 = {}
        local v53 = v_u_7.createElement
        local v54 = v_u_14
        local v55 = {}
        local v56 = {}
        local v57
        if v_u_35() then
            v57 = v_u_7.createElement(v_u_21, {}, {
                ["InGameMenu"] = v_u_7.createElement(v_u_20)
            }) or nil
        else
            v57 = nil
        end
        v56.FocusHandlerContextProvider = v57
        local v58
        if v_u_35() then
            v58 = nil
        else
            v58 = v_u_7.createElement(v_u_20) or nil
        end
        v56.InGameMenu = v58
        v52.CursorProvider = v53(v54, v55, v56)
        v48.LocalizationProvider = v49(v50, v51, v52)
        local v59 = v47(v48)
        local v60 = v_u_7.createElement(v_u_11, {}, {
            ["tree"] = v_u_7.createElement(v_u_10, nil, {
                ["tree"] = v59
            })
        })
        local v62 = v_u_7.createElement("ScreenGui", {
            ["ResetOnSpawn"] = false,
            ["IgnoreGuiInset"] = true,
            ["DisplayOrder"] = v_u_34.DisplayOrder.RootMenu,
            ["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling,
            ["AutoLocalize"] = false,
            [v_u_7.Change.AbsoluteSize] = function(p61)
                -- upvalues: (ref) v_u_38, (ref) v_u_27
                v_u_38:dispatch(v_u_27(p61.AbsoluteSize))
            end
        }, {
            ["StoreProvider"] = v_u_7.createElement(v_u_8.StoreProvider, {
                ["store"] = v_u_38
            }, {
                ["PolicyProvider"] = v_u_7.createElement(v_u_32.Provider, {
                    ["policy"] = { v_u_32.Mapper }
                }, {
                    ["ThemeProvider"] = v60
                })
            })
        })
        v_u_7.mount(v62, v_u_1, "InGameMenu")
    end,
    ["openInGameMenu"] = function(p63) -- name: openInGameMenu
        -- upvalues: (copy) v_u_38, (copy) v_u_30, (copy) v_u_34
        v_u_38:dispatch(v_u_30(v_u_34.AnalyticsMenuOpenTypes.TopbarButton, p63))
    end,
    ["closeInGameMenu"] = function() -- name: closeInGameMenu
        -- upvalues: (copy) v_u_31, (copy) v_u_38
        v_u_31(v_u_38)
    end,
    ["openReportDialog"] = function(p64, p65) -- name: openReportDialog
        -- upvalues: (copy) v_u_38, (copy) v_u_30, (copy) v_u_34, (copy) v_u_23
        v_u_38:dispatch(v_u_30(v_u_34.AnalyticsMenuOpenTypes.ReportAbuseTriggered, v_u_34.ReportDialogKey))
        if p65 == nil then
            p65 = v_u_34.AnalyticsInGameMenuName
        end
        v_u_23.openReportDialogForPlayer(p64, p65)
    end,
    ["openGameSettingsPage"] = function() -- name: openGameSettingsPage
        -- upvalues: (copy) v_u_38, (copy) v_u_30, (copy) v_u_34, (copy) v_u_26
        v_u_38:dispatch(v_u_30(v_u_34.AnalyticsMenuOpenTypes.SettingsTriggered))
        v_u_38:dispatch(v_u_26("GameSettings"))
    end,
    ["openGameLeavePage"] = function() -- name: openGameLeavePage
        -- upvalues: (copy) v_u_38, (copy) v_u_30, (copy) v_u_34, (copy) v_u_26
        v_u_38:dispatch(v_u_30(v_u_34.AnalyticsMenuOpenTypes.GamepadLeaveGame))
        v_u_38:dispatch(v_u_26(v_u_34.LeaveGamePromptPageKey))
    end,
    ["openCharacterResetPage"] = function() -- name: openCharacterResetPage
        -- upvalues: (copy) v_u_38, (copy) v_u_30, (copy) v_u_34, (copy) v_u_26, (copy) v_u_29
        v_u_38:dispatch(v_u_30(v_u_34.AnalyticsMenuOpenTypes.GamepadResetCharacter))
        v_u_38:dispatch(v_u_26(v_u_34.MainPagePageKey))
        v_u_38:dispatch(v_u_29(true))
    end,
    ["openPlayersPage"] = function() -- name: openPlayersPage
        -- upvalues: (copy) v_u_38, (copy) v_u_30, (copy) v_u_34, (copy) v_u_26
        v_u_38:dispatch(v_u_30(v_u_34.AnalyticsMenuOpenTypes.PlayersTriggered))
        v_u_38:dispatch(v_u_26("Players"))
    end,
    ["getOpenChangedEvent"] = function() -- name: getOpenChangedEvent
        -- upvalues: (copy) v_u_36
        return v_u_36
    end,
    ["getOpen"] = function() -- name: getOpen
        -- upvalues: (copy) v_u_38
        return v_u_38:getState().isMenuOpen
    end,
    ["getRespawnBehaviour"] = function() -- name: getRespawnBehaviour
        -- upvalues: (copy) v_u_38
        local v66 = v_u_38:getState()
        return v66.respawn.enabled, v66.respawn.customCallback
    end,
    ["getRespawnBehaviourChangedEvent"] = function() -- name: getRespawnBehaviourChangedEvent
        -- upvalues: (copy) v_u_37
        return v_u_37
    end,
    ["setMenuIconTooltipOpen"] = function(p67) -- name: setMenuIconTooltipOpen
        -- upvalues: (copy) v_u_38, (copy) v_u_28
        v_u_38:dispatch(v_u_28(p67))
    end
}
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.VoiceChat.Helpers.displayCameraDeniedToast
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = game:GetService("CoreGui")
local v2 = game:GetService("CorePackages")
local v_u_3 = require(v2.Packages.Promise)
local v4 = v1:WaitForChild("RobloxGui")
local v_u_5 = require(v4.Modules.Tracker.TrackerMenu)
local v_u_6 = require(v4.Modules.Tracker.TrackerPromptType)
return function()
    -- upvalues: (copy) v_u_5, (copy) v_u_6, (copy) v_u_3
    v_u_5:showPrompt(v_u_6.None)
    v_u_3.delay(0.016666666666666666):andThen(function()
        -- upvalues: (ref) v_u_5, (ref) v_u_6
        v_u_5:showPrompt(v_u_6.VideoNoPermission)
    end)
end
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.VoiceChat.Components.onClickedCameraIndicator
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = game:GetService("FaceAnimatorService")
local v2 = game:GetService("CoreGui").RobloxGui.Modules
local v_u_3 = require(v2.SelfView.Analytics).new()
local v_u_4 = require(v2.SelfView.publicApi)
local v_u_5 = require(v2.SelfView.toggleSelfViewSignal)
return function()
    -- upvalues: (copy) v_u_1, (copy) v_u_3, (copy) v_u_4, (copy) v_u_5
    if v_u_1 and v_u_1:IsStarted() then
        v_u_1.VideoAnimationEnabled = not v_u_1.VideoAnimationEnabled
        v_u_3:setLastCtx("bubbleChatToggle")
        local v6 = v_u_4.getSelfViewIsOpenAndVisible()
        if v_u_1.VideoAnimationEnabled and not v6 then
            v_u_5:fire()
        end
    end
end
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.Settings.isCameraOnlyUser
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = game:GetService("AvatarChatService")
local v2 = game:GetService("CoreGui")
local v_u_3 = game:GetService("VideoCaptureService")
local v4 = game:GetService("CorePackages")
local v_u_5 = require(v4.Packages.Cryo)
local v6 = v2:WaitForChild("RobloxGui")
local v_u_7 = require(v4.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local v_u_8 = require(v6.Modules.Flags.getFFlagUseCameraDevicesListener)
local v_u_9 = require(v6.Modules.Settings.cameraDevicesHelper)
return function()
    -- upvalues: (copy) v_u_7, (copy) v_u_1, (copy) v_u_8, (copy) v_u_9, (copy) v_u_3, (copy) v_u_5
    if v_u_7() then
        local v10, v11 = pcall(v_u_1.GetClientFeaturesAsync, v_u_1)
        if v10 then
            local v12 = v_u_1:IsEnabled(v11, Enum.AvatarChatServiceFeature.PlaceVideo)
            local v13 = v_u_1:IsEnabled(v11, Enum.AvatarChatServiceFeature.UserVideo)
            local v14 = v_u_1:IsEnabled(v11, Enum.AvatarChatServiceFeature.UserVideoEligible)
            local v15 = v_u_1:IsEnabled(v11, Enum.AvatarChatServiceFeature.PlaceAudio)
            local v16 = v_u_1:IsEnabled(v11, Enum.AvatarChatServiceFeature.UserAudio)
            local v17 = v_u_1:IsEnabled(v11, Enum.AvatarChatServiceFeature.UserAudioEligible)
            local v18
            if v_u_8() then
                v18 = v_u_9.GetDevices()
            else
                v18 = v_u_3:GetCameraDevices()
            end
            if v_u_5.isEmpty(v18) then
                return false
            else
                local v19 = v16 and v17
                local v20 = v13 and v14
                if v12 then
                    if v15 and v19 then
                        return false
                    else
                        return v20 and true or false
                    end
                else
                    return false
                end
            end
        else
            warn("Unable to get Client Features from AvatarChatService")
            return false
        end
    else
        return false
    end
end
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.Settings.Integrations.SettingFields.CameraInverted
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = script:FindFirstAncestor("Settings")
local v2 = game:GetService("CorePackages")
local v_u_3 = UserSettings().GameSettings
local v4 = require(v2.Workspace.Packages.SettingsService)
local v5 = v4.ValueChangedSignal
local v6 = v4.AvailabilitySignal
local v7 = v4.SettingEnum
local v8 = require(v1.Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER
local v9 = {
    ["id"] = "camera-inverted",
    ["field_type"] = nil,
    ["label"] = "CoreScripts.InGameMenu.GameSettings.InvertedCamera",
    ["alreadyLocalized"] = false,
    ["onChanged"] = nil,
    ["availability"] = nil,
    ["layoutOrder"] = nil,
    ["field_type"] = v7.Toggle
}
local v10 = v5.new(v_u_3.CameraYInverted)
v10:connect(function(p11)
    -- upvalues: (copy) v_u_3
    if v_u_3.CameraYInverted ~= p11 then
        v_u_3.CameraYInverted = p11
    end
end, true)
v9.onChanged = v10
local v_u_12 = v6.new(v_u_3.IsUsingCameraYInverted)
v_u_3.Changed:Connect(function(p13)
    -- upvalues: (copy) v_u_12, (copy) v_u_3
    if p13 == "IsUsingCameraYInverted" then
        v_u_12:set(v_u_3.IsUsingCameraYInverted)
    end
end)
v9.availability = v_u_12
v9.layoutOrder = v8.CameraInvertedFrame
return v9
-- Script Path: game:GetService("CoreGui").RobloxGui.Modules.InGameChat.BubbleChat.Helpers.displayCameraDeniedToast
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = game:GetService("CoreGui")
local v2 = game:GetService("CorePackages")
local v_u_3 = require(v2.Packages.Promise)
local v4 = v1:WaitForChild("RobloxGui")
local v_u_5 = require(v4.Modules.Tracker.TrackerMenu)
local v_u_6 = require(v4.Modules.Tracker.TrackerPromptType)
return function()
    -- upvalues: (copy) v_u_5, (copy) v_u_6, (copy) v_u_3
    v_u_5:showPrompt(v_u_6.None)
    v_u_3.delay(0.016666666666666666):andThen(function()
        -- upvalues: (ref) v_u_5, (ref) v_u_6
        v_u_5:showPrompt(v_u_6.VideoNoPermission)
    end)
end
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.VehicleCamera.VehicleCameraCore
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = require(script.Parent.Parent.CameraUtils)
local v_u_2 = require(script.Parent.VehicleCameraConfig)
local v_u_3 = v1.map
local v_u_4 = v1.mapClamp
local v_u_5 = v1.sanitizeAngle
local v_u_6 = {}
v_u_6.__index = v_u_6
function v_u_6.new(p7, p8, p9) -- name: new
    -- upvalues: (copy) v_u_6
    local v10 = {
        ["fRising"] = p7,
        ["fFalling"] = p8,
        ["g"] = p9,
        ["p"] = p9,
        ["v"] = p9 * 0
    }
    local v11 = v_u_6
    return setmetatable(v10, v11)
end
function v_u_6.step(p12, p13) -- name: step
    local v14 = p12.fRising
    local v15 = p12.fFalling
    local v16 = p12.g
    local v17 = p12.p
    local v18 = p12.v
    local v19 = 6.283185307179586
    if v18 > 0 then
        v15 = v14 or v15
    end
    local v20 = v19 * v15
    local v21 = v17 - v16
    local v22 = -v20 * p13
    local v23 = math.exp(v22)
    local v24 = (v21 * (1 + v20 * p13) + v18 * p13) * v23 + v16
    local v25 = (v18 * (1 - v20 * p13) - v21 * (v20 * v20 * p13)) * v23
    p12.p = v24
    p12.v = v25
    return v24
end
local v_u_26 = {}
v_u_26.__index = v_u_26
function v_u_26.new(p27) -- name: new
    -- upvalues: (copy) v_u_5, (copy) v_u_6, (copy) v_u_2, (copy) v_u_26
    local v28 = typeof(p27) == "CFrame"
    assert(v28)
    local v29 = {
        ["yawG"] = nil,
        ["yawP"] = nil,
        ["yawV"] = 0,
        ["pitchG"] = nil,
        ["pitchP"] = nil,
        ["pitchV"] = 0,
        ["fSpringYaw"] = nil,
        ["fSpringPitch"] = nil
    }
    local _, v30 = p27:toEulerAnglesYXZ()
    v29.yawG = v_u_5(v30)
    local _, v31 = p27:toEulerAnglesYXZ()
    v29.yawP = v_u_5(v31)
    v29.pitchG = v_u_5((p27:toEulerAnglesYXZ()))
    v29.pitchP = v_u_5((p27:toEulerAnglesYXZ()))
    v29.fSpringYaw = v_u_6.new(v_u_2.yawReponseDampingRising, v_u_2.yawResponseDampingFalling, 0)
    v29.fSpringPitch = v_u_6.new(v_u_2.pitchReponseDampingRising, v_u_2.pitchResponseDampingFalling, 0)
    local v32 = v_u_26
    return setmetatable(v29, v32)
end
function v_u_26.setGoal(p33, p34) -- name: setGoal
    -- upvalues: (copy) v_u_5
    local v35 = typeof(p34) == "CFrame"
    assert(v35)
    local _, v36 = p34:toEulerAnglesYXZ()
    p33.yawG = v_u_5(v36)
    p33.pitchG = v_u_5((p34:toEulerAnglesYXZ()))
end
function v_u_26.getCFrame(p37) -- name: getCFrame
    return CFrame.fromEulerAnglesYXZ(p37.pitchP, p37.yawP, 0)
end
function v_u_26.step(p38, p39, p40, p41, p42) -- name: step
    -- upvalues: (copy) v_u_4, (copy) v_u_3, (copy) v_u_2, (copy) v_u_5
    local v43 = typeof(p39) == "number"
    assert(v43)
    local v44 = typeof(p41) == "number"
    assert(v44)
    local v45 = typeof(p40) == "number"
    assert(v45)
    local v46 = typeof(p42) == "number"
    assert(v46)
    local v47 = p38.fSpringYaw
    local v48 = p38.fSpringPitch
    local v49 = v_u_4
    local v50 = v_u_3(p42, 0, 1, p41, 0)
    local v51 = v_u_2.cutoffMinAngularVelYaw
    local v52 = math.rad(v51)
    local v53 = v_u_2.cutoffMaxAngularVelYaw
    v47.g = v49(v50, v52, math.rad(v53), 1, 0)
    local v54 = v_u_4
    local v55 = v_u_3(p42, 0, 1, p40, 0)
    local v56 = v_u_2.cutoffMinAngularVelPitch
    local v57 = math.rad(v56)
    local v58 = v_u_2.cutoffMaxAngularVelPitch
    v48.g = v54(v55, v57, math.rad(v58), 1, 0)
    local v59 = 6.283185307179586 * v_u_2.yawStiffness * v47:step(p39)
    local v60 = 6.283185307179586 * v_u_2.pitchStiffness * v48:step(p39) * v_u_3(p42, 0, 1, 1, v_u_2.firstPersonResponseMul)
    local v61 = v59 * v_u_3(p42, 0, 1, 1, v_u_2.firstPersonResponseMul)
    local v62 = p38.yawG
    local v63 = p38.yawP
    local v64 = p38.yawV
    local v65 = v_u_5(v63 - v62)
    local v66 = -v61 * p39
    local v67 = math.exp(v66)
    local v68 = v_u_5((v65 * (1 + v61 * p39) + v64 * p39) * v67 + v62)
    local v69 = (v64 * (1 - v61 * p39) - v65 * (v61 * v61 * p39)) * v67
    p38.yawP = v68
    p38.yawV = v69
    local v70 = p38.pitchG
    local v71 = p38.pitchP
    local v72 = p38.pitchV
    local v73 = v_u_5(v71 - v70)
    local v74 = -v60 * p39
    local v75 = math.exp(v74)
    local v76 = v_u_5((v73 * (1 + v60 * p39) + v72 * p39) * v75 + v70)
    local v77 = (v72 * (1 - v60 * p39) - v73 * (v60 * v60 * p39)) * v75
    p38.pitchP = v76
    p38.pitchV = v77
    return p38:getCFrame()
end
local v_u_78 = {}
v_u_78.__index = v_u_78
function v_u_78.new(p79) -- name: new
    -- upvalues: (copy) v_u_26, (copy) v_u_78
    local v80 = {
        ["vrs"] = v_u_26.new(p79)
    }
    local v81 = v_u_78
    return setmetatable(v80, v81)
end
function v_u_78.step(p82, p83, p84, p85, p86) -- name: step
    return p82.vrs:step(p83, p84, p85, p86)
end
function v_u_78.setTransform(p87, p88) -- name: setTransform
    p87.vrs:setGoal(p88)
end
return v_u_78
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.VehicleCamera.VehicleCameraConfig
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

return {
    ["pitchStiffness"] = 0.5,
    ["yawStiffness"] = 2.5,
    ["autocorrectDelay"] = 1,
    ["autocorrectMinCarSpeed"] = 16,
    ["autocorrectMaxCarSpeed"] = 32,
    ["autocorrectResponse"] = 0.5,
    ["cutoffMinAngularVelYaw"] = 60,
    ["cutoffMaxAngularVelYaw"] = 180,
    ["cutoffMinAngularVelPitch"] = 15,
    ["cutoffMaxAngularVelPitch"] = 60,
    ["pitchBaseAngle"] = 18,
    ["pitchDeadzoneAngle"] = 12,
    ["firstPersonResponseMul"] = 10,
    ["yawReponseDampingRising"] = 1,
    ["yawResponseDampingFalling"] = 3,
    ["pitchReponseDampingRising"] = 1,
    ["pitchResponseDampingFalling"] = 3,
    ["verticalCenterOffset"] = 0.33
}
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.VehicleCamera
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = { 0, 15, 30 }
local v2 = game:GetService("Players")
local v3 = game:GetService("RunService")
local v_u_4 = require(script.Parent:WaitForChild("BaseCamera"))
local v_u_5 = require(script.Parent:WaitForChild("CameraInput"))
local v_u_6 = require(script.Parent:WaitForChild("CameraUtils"))
require(script.Parent:WaitForChild("ZoomController"))
local v_u_7 = require(script:WaitForChild("VehicleCameraCore"))
local v_u_8 = require(script:WaitForChild("VehicleCameraConfig"))
local v_u_9 = v2.LocalPlayer
local _ = v_u_6.map
local v_u_10 = v_u_6.Spring
local v_u_11 = v_u_6.mapClamp
local v_u_12 = v_u_6.sanitizeAngle
local v_u_13 = 0.016666666666666666
v3.Stepped:Connect(function(_, p14)
    -- upvalues: (ref) v_u_13
    v_u_13 = p14
end)
local v_u_15 = setmetatable({}, v_u_4)
v_u_15.__index = v_u_15
function v_u_15.new() -- name: new
    -- upvalues: (copy) v_u_4, (copy) v_u_15
    local v16 = v_u_4.new()
    local v17 = v_u_15
    local v18 = setmetatable(v16, v17)
    v18:Reset()
    return v18
end
function v_u_15.Reset(p19) -- name: Reset
    -- upvalues: (copy) v_u_7, (copy) v_u_10, (copy) v_u_8, (copy) v_u_6, (copy) v_u_1
    p19.vehicleCameraCore = v_u_7.new(p19:GetSubjectCFrame())
    local v20 = v_u_10.new
    local v21 = v_u_8.pitchBaseAngle
    p19.pitchSpring = v20(0, -math.rad(v21))
    p19.yawSpring = v_u_10.new(0, 0)
    p19.lastPanTick = 0
    local v22 = workspace.CurrentCamera
    local v23
    if v22 then
        v23 = v22.CameraSubject
    else
        v23 = v22
    end
    assert(v22)
    assert(v23)
    assert(v23:IsA("VehicleSeat"))
    local v24 = v23:GetConnectedParts(true)
    local v25, v26 = v_u_6.getLooseBoundingSphere(v24)
    p19.assemblyRadius = math.max(v26, 5)
    p19.assemblyOffset = v23.CFrame:Inverse() * v25
    p19.gamepadZoomLevels = {}
    for _, v27 in v_u_1 do
        local v28 = p19.gamepadZoomLevels
        local v29 = v27 * p19.assemblyRadius / 10
        table.insert(v28, v29)
    end
    p19:SetCameraToSubjectDistance(p19.gamepadZoomLevels[#p19.gamepadZoomLevels])
end
function v_u_15._StepRotation(p30, p31, p32) -- name: _StepRotation
    -- upvalues: (copy) v_u_5, (copy) v_u_12, (copy) v_u_8, (copy) v_u_11
    local v33 = p30.yawSpring
    local v34 = p30.pitchSpring
    local v35 = v_u_5.getRotation(p31, true)
    local v36 = -v35.X
    local v37 = -v35.Y
    v33.pos = v_u_12(v33.pos + v36)
    local v38 = v_u_12
    local v39 = v34.pos + v37
    v34.pos = v38((math.clamp(v39, -1.3962634015954636, 1.3962634015954636)))
    if v_u_5.getRotationActivated() then
        p30.lastPanTick = os.clock()
    end
    local v40 = v_u_8.pitchBaseAngle
    local v41 = -math.rad(v40)
    local v42 = v_u_8.pitchDeadzoneAngle
    local v43 = math.rad(v42)
    if os.clock() - p30.lastPanTick > v_u_8.autocorrectDelay then
        local v44 = v_u_11(p32, v_u_8.autocorrectMinCarSpeed, v_u_8.autocorrectMaxCarSpeed, 0, v_u_8.autocorrectResponse)
        v33.freq = v44
        v34.freq = v44
        if v33.freq < 0.001 then
            v33.vel = 0
        end
        if v34.freq < 0.001 then
            v34.vel = 0
        end
        local v45 = v_u_12(v41 - v34.pos)
        if math.abs(v45) <= v43 then
            v34.goal = v34.pos
        else
            v34.goal = v41
        end
    else
        v33.freq = 0
        v33.vel = 0
        v34.freq = 0
        v34.vel = 0
        v34.goal = v41
    end
    return CFrame.fromEulerAnglesYXZ(v34:step(p31), v33:step(p31), 0)
end
function v_u_15._GetThirdPersonLocalOffset(p46) -- name: _GetThirdPersonLocalOffset
    -- upvalues: (copy) v_u_8
    local v47 = p46.assemblyOffset
    local v48 = p46.assemblyRadius * v_u_8.verticalCenterOffset
    return v47 + Vector3.new(0, v48, 0)
end
function v_u_15._GetFirstPersonLocalOffset(p49, p50) -- name: _GetFirstPersonLocalOffset
    -- upvalues: (copy) v_u_9
    local v51 = v_u_9.Character
    if v51 and v51.Parent then
        local v52 = v51:FindFirstChild("Head")
        if v52 and v52:IsA("BasePart") then
            return p50:Inverse() * v52.Position
        end
    end
    return p49:_GetThirdPersonLocalOffset()
end
function v_u_15.Update(p53) -- name: Update
    -- upvalues: (ref) v_u_13, (copy) v_u_11
    local v54 = workspace.CurrentCamera
    local v55
    if v54 then
        v55 = v54.CameraSubject
    else
        v55 = v54
    end
    local v56 = p53.vehicleCameraCore
    assert(v54)
    assert(v55)
    assert(v55:IsA("VehicleSeat"))
    local v57 = v_u_13
    v_u_13 = 0
    local v58 = p53:GetSubjectCFrame()
    local v59 = p53:GetSubjectVelocity()
    local v60 = p53:GetSubjectRotVelocity()
    local v61 = v59:Dot(v58.ZVector)
    local v62 = math.abs(v61)
    local v63 = v58.YVector:Dot(v60)
    local v64 = math.abs(v63)
    local v65 = v58.XVector:Dot(v60)
    local v66 = math.abs(v65)
    local v67 = p53:StepZoom()
    local v68 = p53:_StepRotation(v57, v62)
    local v69 = v_u_11(v67, 0.5, p53.assemblyRadius, 1, 0)
    local v70 = p53:_GetThirdPersonLocalOffset():Lerp(p53:_GetFirstPersonLocalOffset(v58), v69)
    v56:setTransform(v58)
    local v71 = v56:step(v57, v66, v64, v69)
    local v72 = CFrame.new(v58 * v70) * v71 * v68
    return v72 * CFrame.new(0, 0, v67), v72
end
function v_u_15.ApplyVRTransform(_) -- name: ApplyVRTransform end
return v_u_15
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.VRVehicleCameraDeprecated
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1, v2 = pcall(function()
    return UserSettings():IsUserFeatureEnabled("UserVRVehicleCamera2")
end)
local v_u_3 = v1 and v2
local v_u_4 = { 0, 30 }
local v_u_5 = UserSettings():GetService("UserGameSettings")
local v_u_6 = require(script.Parent:WaitForChild("VRBaseCamera"))
local v_u_7 = require(script.Parent:WaitForChild("CameraInput"))
local v_u_8 = require(script.Parent:WaitForChild("CameraUtils"))
require(script.Parent:WaitForChild("VehicleCamera"))
local v_u_9 = require(script.Parent.VehicleCamera:FindFirstChild("VehicleCameraCore"))
local v_u_10 = require(script.Parent.VehicleCamera:FindFirstChild("VehicleCameraConfig"))
local v11 = game:GetService("Players")
local v_u_12 = game:GetService("RunService")
local v_u_13 = game:GetService("VRService")
local v_u_14 = v11.LocalPlayer
local v_u_15 = v_u_8.Spring
local v_u_16 = v_u_8.mapClamp
local v_u_17 = v_u_8.sanitizeAngle
local v_u_18 = 0.016666666666666666
local v_u_19 = setmetatable({}, v_u_6)
v_u_19.__index = v_u_19
function v_u_19.new() -- name: new
    -- upvalues: (copy) v_u_6, (copy) v_u_19, (copy) v_u_12, (ref) v_u_18
    local v20 = v_u_6.new()
    local v21 = v_u_19
    local v22 = setmetatable(v20, v21)
    v22:Reset()
    v_u_12.Stepped:Connect(function(_, p23)
        -- upvalues: (ref) v_u_18
        v_u_18 = p23
    end)
    return v22
end
function v_u_19.Reset(p24) -- name: Reset
    -- upvalues: (copy) v_u_9, (ref) v_u_3, (copy) v_u_15, (copy) v_u_10, (copy) v_u_8, (copy) v_u_4
    p24.vehicleCameraCore = v_u_9.new(p24:GetSubjectCFrame())
    if v_u_3 then
        p24.pitchSpring = v_u_15.new(0, 0)
    else
        local v25 = v_u_15.new
        local v26 = v_u_10.pitchBaseAngle
        p24.pitchSpring = v25(0, -math.rad(v26))
    end
    p24.yawSpring = v_u_15.new(0, 0)
    if v_u_3 then
        p24.lastPanTick = 0
        p24.currentDriftAngle = 0
        p24.needsReset = true
    end
    local v27 = workspace.CurrentCamera
    local v28
    if v27 then
        v28 = v27.CameraSubject
    else
        v28 = v27
    end
    assert(v27, "VRVehicleCamera initialization error")
    assert(v28)
    assert(v28:IsA("VehicleSeat"))
    local v29 = v28:GetConnectedParts(true)
    local v30, v31 = v_u_8.getLooseBoundingSphere(v29)
    p24.assemblyRadius = math.max(v31, 5)
    p24.assemblyOffset = v28.CFrame:Inverse() * v30
    p24.gamepadZoomLevels = {}
    for _, v32 in v_u_4 do
        local v33 = p24.gamepadZoomLevels
        local v34 = v32 * p24.headScale * p24.assemblyRadius / 10
        table.insert(v33, v34)
    end
    p24.lastCameraFocus = nil
    p24:SetCameraToSubjectDistance(p24.gamepadZoomLevels[#p24.gamepadZoomLevels])
end
function v_u_19._StepRotation(p35, p36, p37) -- name: _StepRotation
    -- upvalues: (copy) v_u_17, (copy) v_u_7, (copy) v_u_10, (copy) v_u_16
    local v38 = p35.yawSpring
    local v39 = p35.pitchSpring
    local v40 = -p35:getRotation(p36)
    v38.pos = v_u_17(v38.pos + v40)
    local v41 = v_u_17
    local v42 = v39.pos
    v39.pos = v41((math.clamp(v42, -1.3962634015954636, 1.3962634015954636)))
    if v_u_7.getRotationActivated() then
        p35.lastPanTick = os.clock()
    end
    local v43 = v_u_10.pitchDeadzoneAngle
    local v44 = math.rad(v43)
    if os.clock() - p35.lastPanTick > v_u_10.autocorrectDelay then
        local v45 = v_u_16(p37, v_u_10.autocorrectMinCarSpeed, v_u_10.autocorrectMaxCarSpeed, 0, v_u_10.autocorrectResponse)
        v38.freq = v45
        v39.freq = v45
        if v38.freq < 0.001 then
            v38.vel = 0
        end
        if v39.freq < 0.001 then
            v39.vel = 0
        end
        local v46 = v_u_17(0 - v39.pos)
        if math.abs(v46) <= v44 then
            v39.goal = v39.pos
        else
            v39.goal = 0
        end
    else
        v38.freq = 0
        v38.vel = 0
        v39.freq = 0
        v39.vel = 0
        v39.goal = 0
    end
    return CFrame.fromEulerAnglesYXZ(v39:step(p36), v38:step(p36), 0)
end
function v_u_19._GetThirdPersonLocalOffset(p47) -- name: _GetThirdPersonLocalOffset
    -- upvalues: (copy) v_u_10
    local v48 = p47.assemblyOffset
    local v49 = p47.assemblyRadius * v_u_10.verticalCenterOffset
    return v48 + Vector3.new(0, v49, 0)
end
function v_u_19._GetFirstPersonLocalOffset(p50, p51) -- name: _GetFirstPersonLocalOffset
    -- upvalues: (copy) v_u_14
    local v52 = v_u_14.Character
    if v52 and v52.Parent then
        local v53 = v52:FindFirstChild("Head")
        if v53 and v53:IsA("BasePart") then
            return p51:Inverse() * v53.Position
        end
    end
    return p50:_GetThirdPersonLocalOffset()
end
function v_u_19.Update(p54) -- name: Update
    -- upvalues: (ref) v_u_3, (ref) v_u_18, (copy) v_u_14, (copy) v_u_13
    if v_u_3 then
        local v55 = v_u_18
        v_u_18 = 0
        p54:UpdateFadeFromBlack(v55)
        p54:UpdateEdgeBlur(v_u_14, v55)
        if v_u_13.ThirdPersonFollowCamEnabled then
            local v56, v57 = p54:UpdateStepRotation(v55)
            return v56, v57
        else
            local v58, v59 = p54:UpdateComfortCamera(v55)
            return v58, v59
        end
    else
        return p54:UpdateComfortCamera()
    end
end
function v_u_19.addDrift(p60, p61, p62) -- name: addDrift
    -- upvalues: (copy) v_u_14, (copy) v_u_13
    local v63 = workspace.CurrentCamera
    local v64 = p60:GetCameraToSubjectDistance()
    local v65 = p60:GetSubjectVelocity()
    local v66 = p60:GetSubjectCFrame()
    require(v_u_14:WaitForChild("PlayerScripts").PlayerModule:WaitForChild("ControlModule"))
    if v65.Magnitude > 0.1 then
        local v67 = v_u_13:GetUserCFrame(Enum.UserCFrame.Head)
        local v68 = v67.Rotation + v67.Position * v63.HeadScale
        local v69 = v63.CFrame * v68
        local _, v70, _ = v69:ToEulerAnglesYXZ()
        local _, v71, _ = v66:ToEulerAnglesYXZ()
        local v72 = (v70 - p60.currentDriftAngle + 12.566370614359172) % 6.283185307179586
        if v72 > 3.141592653589793 then
            v72 = v72 - 6.283185307179586
        end
        local v73 = (v71 - p60.currentDriftAngle + 12.566370614359172) % 6.283185307179586
        if v73 > 3.141592653589793 then
            v73 = v73 - 6.283185307179586
        end
        local v74 = math.min(v73, v72)
        local v75 = math.max(v73, v72)
        local v76 = 0
        if v74 > 0 then
            v75 = v74
        elseif v75 >= 0 then
            v75 = v76
        end
        p60.currentDriftAngle = v75 + p60.currentDriftAngle
        local v77 = CFrame.fromEulerAnglesYXZ(0, p60.currentDriftAngle, 0).LookVector
        local v78 = v77.X
        local v79 = v77.Z
        local v80 = Vector3.new(v78, 0, v79).Unit * v64
        local v81 = p62.Position - v80
        p61 = p61:Lerp(CFrame.new(v63.CFrame.Position + v81 - v69.Position) * v63.CFrame.Rotation, 0.01)
    end
    return p61, p62
end
function v_u_19.UpdateRotationCamera(p82, p83) -- name: UpdateRotationCamera
    -- upvalues: (copy) v_u_16, (copy) v_u_14
    local v84 = workspace.CurrentCamera
    local v85
    if v84 then
        v85 = v84.CameraSubject
    else
        v85 = v84
    end
    local v86 = p82.vehicleCameraCore
    assert(v84)
    assert(v85)
    assert(v85:IsA("VehicleSeat"))
    local v87 = p82:GetSubjectCFrame()
    local v88 = p82:GetSubjectVelocity()
    local v89 = p82:GetSubjectRotVelocity()
    local v90 = v88:Dot(v87.ZVector)
    local v91 = math.abs(v90)
    local v92 = v87.YVector:Dot(v89)
    local v93 = math.abs(v92)
    local v94 = v87.XVector:Dot(v89)
    local v95 = math.abs(v94)
    local v96 = p82:GetCameraToSubjectDistance()
    local v97 = v_u_16(v96, 0.5, p82.assemblyRadius, 1, 0)
    local v98 = p82:_GetThirdPersonLocalOffset():Lerp(p82:_GetFirstPersonLocalOffset(v87), v97)
    v86:setTransform(v87)
    local v99 = v86:step(p83, v95, v93, v97)
    local v100 = p82:_StepRotation(p83, v91)
    local v101 = p82:GetVRFocus(v87 * v98, p83) * v99 * v100
    local v102 = v101 * CFrame.new(0, 0, v96)
    if v88.Magnitude > 0.1 then
        p82:StartVREdgeBlur(v_u_14)
    end
    return v102, v101
end
function v_u_19.UpdateStepRotation(p103, p104) -- name: UpdateStepRotation
    -- upvalues: (copy) v_u_16, (copy) v_u_5, (copy) v_u_13, (copy) v_u_14
    local v105 = workspace.CurrentCamera
    local v106 = p103.lastSubjectCFrame
    local v107 = p103:GetSubjectCFrame()
    local v108 = p103:GetSubjectVelocity()
    local v109 = p103:GetCameraToSubjectDistance()
    local v110 = v_u_16(v109, 0.5, p103.assemblyRadius, 1, 0)
    local v111 = p103:_GetThirdPersonLocalOffset():Lerp(p103:_GetFirstPersonLocalOffset(v107), v110)
    local v112 = p103:GetVRFocus(v107 * v111, p104)
    local v113, v114 = p103:addDrift(v112:ToWorldSpace(p103:GetVRFocus(v106 * v111, p104):ToObjectSpace(v105.CFrame)), v112)
    local v115 = p103:getRotation(p104)
    local v116
    if math.abs(v115) > 0 then
        local v117 = v114:ToObjectSpace(v113)
        v116 = v114 * CFrame.Angles(0, -v115, 0) * v117
        if not v_u_5.VRSmoothRotationEnabled then
            local v118 = v_u_13:GetUserCFrame(Enum.UserCFrame.Head)
            local v119 = v118.Rotation + v118.Position * v105.HeadScale
            local v120 = v114 * v107.Rotation
            local v121 = v120:ToObjectSpace(v113 * v119)
            local v122 = v121.X
            local v123 = v121.Z
            local v124 = Vector3.new(v122, 0, v123).Unit:Dot(Vector3.new(0, 0, 1))
            local v125 = math.acos(v124)
            local v126 = v120:ToObjectSpace(v116 * v119)
            local v127 = v126.X
            local v128 = v126.Z
            local v129 = Vector3.new(v127, 0, v128).Unit:Dot(Vector3.new(0, 0, 1))
            if math.acos(v129) < v125 then
                if v115 < 0 then
                    v125 = v125 * -1
                end
                v116 = v114 * CFrame.Angles(0, -v125, 0) * v117
            end
        end
    else
        v116 = v113
    end
    if v108.Magnitude > 0.1 then
        p103:StartVREdgeBlur(v_u_14)
    end
    if p103.needsReset then
        p103.needsReset = false
        v_u_13:RecenterUserHeadCFrame()
        p103:StartFadeFromBlack()
        p103:ResetZoom()
    end
    if p103.recentered then
        v116 = v114 * v107.Rotation * CFrame.new(0, 0, v109)
        p103.recentered = false
    end
    return v116, v116 * CFrame.new(0, 0, -v109)
end
function v_u_19.UpdateComfortCamera(p130, p131) -- name: UpdateComfortCamera
    -- upvalues: (ref) v_u_3, (ref) v_u_18, (copy) v_u_16, (copy) v_u_14
    local v132 = workspace.CurrentCamera
    local v133
    if v132 then
        v133 = v132.CameraSubject
    else
        v133 = v132
    end
    local v134 = p130.vehicleCameraCore
    assert(v132)
    assert(v133)
    assert(v133:IsA("VehicleSeat"))
    if not v_u_3 then
        p131 = v_u_18
        v_u_18 = 0
    end
    local v135 = p130:GetSubjectCFrame()
    local v136 = p130:GetSubjectVelocity()
    local v137 = p130:GetSubjectRotVelocity()
    local v138 = v136:Dot(v135.ZVector)
    math.abs(v138)
    local v139 = v135.YVector:Dot(v137)
    local v140 = math.abs(v139)
    local v141 = v135.XVector:Dot(v137)
    local v142 = math.abs(v141)
    local v143 = p130:StepZoom()
    local v144 = v_u_16(v143, 0.5, p130.assemblyRadius, 1, 0)
    local v145 = p130:_GetThirdPersonLocalOffset():Lerp(p130:_GetFirstPersonLocalOffset(v135), v144)
    v134:setTransform(v135)
    local v146 = v134:step(p131, v142, v140, v144)
    if not v_u_3 then
        p130:UpdateFadeFromBlack(p131)
    end
    local v147, v148
    if p130:IsInFirstPerson() then
        local v149 = v146.LookVector.X
        local v150 = v146.LookVector.Z
        local v151 = Vector3.new(v149, 0, v150).Unit
        local v152 = CFrame.new(v146.Position, v151)
        v147 = CFrame.new(v135 * v145) * v152
        v148 = v147 * CFrame.new(0, 0, v143)
        if v_u_3 then
            if v136.Magnitude > 0.1 then
                p130:StartVREdgeBlur(v_u_14)
            end
        else
            p130:StartVREdgeBlur(v_u_14)
        end
    else
        v147 = CFrame.new(v135 * v145) * v146
        v148 = v147 * CFrame.new(0, 0, v143)
        if not p130.lastCameraFocus then
            p130.lastCameraFocus = v147
            p130.needsReset = true
        end
        local v153 = v147.Position - v132.CFrame.Position
        local v154 = v153.magnitude
        if v153.Unit:Dot(v132.CFrame.LookVector) > 0.56 and (v154 < 200 and not p130.needsReset) then
            v147 = p130.lastCameraFocus
            local v155 = v147.p
            local v156 = p130:GetCameraLookVector()
            local v157 = v156.X
            local v158 = v156.Z
            local v159 = p130:CalculateNewLookVectorFromArg(Vector3.new(v157, 0, v158).Unit, Vector2.new(0, 0))
            v148 = CFrame.new(v155 - v143 * v159, v155)
        else
            p130.lastCameraFocus = p130:GetVRFocus(v135.Position, p131)
            p130.needsReset = false
            p130:StartFadeFromBlack()
            p130:ResetZoom()
        end
        if not v_u_3 then
            p130:UpdateEdgeBlur(v_u_14, p131)
        end
    end
    return v148, v147
end
return v_u_19
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.VRVehicleCamera
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1, v2 = pcall(function()
    return UserSettings():IsUserFeatureEnabled("UserVRVehicleCameraOrbital")
end)
local v_u_3 = v1 and v2
local v_u_4 = { 0, 30 }
local v_u_5 = require(script.Parent:WaitForChild("VRBaseCamera"))
local v_u_6 = require(script.Parent:WaitForChild("CameraUtils"))
local v_u_7 = require(script.Parent:WaitForChild("CameraInput"))
local v8 = game:GetService("Players")
local v_u_9 = game:GetService("RunService")
local v_u_10 = game:GetService("VRService")
local v_u_11 = game:GetService("Lighting")
local v_u_12 = v8.LocalPlayer
local v_u_13 = v_u_6.mapClamp
local v_u_14 = require(script.Parent:WaitForChild("VehicleCamera"):FindFirstChild("VehicleCameraConfig"))
local v_u_15 = RaycastParams.new()
v_u_15.FilterType = Enum.RaycastFilterType.Exclude
v_u_15.IgnoreWater = true
local function v_u_34(p16, p17, p18, p19) -- name: vrOccludeDisplace
    -- upvalues: (copy) v_u_12, (copy) v_u_15
    local v20 = p17.X
    local v21 = p17.Z
    local v22 = math.atan2(v20, v21)
    local v23 = CFrame.new(p16.Position + p17 * p18) * CFrame.Angles(0, v22, 0)
    local v24 = workspace.CurrentCamera
    if not v24 then
        return v23
    end
    local v25 = p16.Position
    local v26 = (v23.Position - v25) * Vector3.new(1, 0, 1)
    local v27 = v26.Magnitude
    if v27 < 0.5 then
        return v23
    end
    local v28 = { v24 }
    if p19 then
        table.insert(v28, p19)
    end
    local v29 = v_u_12
    if v29 then
        v29 = v_u_12.Character
    end
    if v29 then
        table.insert(v28, v29)
    end
    v_u_15.FilterDescendantsInstances = v28
    local v30 = v26.Unit
    local v31 = workspace:Raycast(v25, v26, v_u_15)
    if v31 and v31.Normal:Dot(v30) < 0 then
        local v32 = (v31.Position - v25).Magnitude - 0.5
        if v32 < v27 then
            local v33 = math.max(v32, 0.5)
            return CFrame.new(p16.Position + v30 * v33) * v23.Rotation
        end
    end
    return v23
end
local v_u_35 = OverlapParams.new()
v_u_35.FilterType = Enum.RaycastFilterType.Exclude
local function v_u_62(p36, p37, p38, p39) -- name: findObstructions
    -- upvalues: (copy) v_u_10, (copy) v_u_12, (copy) v_u_15, (copy) v_u_35
    local v40 = workspace.CurrentCamera
    if not v40 then
        return 0, {}
    end
    local v41 = p37.Position
    local v42 = v_u_10:GetUserCFrame(Enum.UserCFrame.Head)
    local v43 = v40.HeadScale
    local v44 = p36 * (CFrame.new(v42.Position * v43) * v42.Rotation)
    local v45 = v44.Position - v41
    local v46 = v45.Magnitude
    if v46 < 0.5 then
        return 0, {}
    end
    local v47 = { v40 }
    if p39 then
        table.insert(v47, p39)
    end
    local v48 = v_u_12
    if v48 then
        v48 = v_u_12.Character
    end
    if v48 then
        table.insert(v47, v48)
    end
    v_u_15.FilterDescendantsInstances = v47
    local v49 = workspace:Raycast(v41, v45, v_u_15)
    if v49 then
        local v50 = (v49.Position - v41).Magnitude
        if v50 < v46 then
            local v51 = v44.LookVector
            local v52 = (1 - -v45.Unit:Dot(v51)) / 0.1339745962155613
            local v53 = math.clamp(v52, 0, 1)
            local v54 = 1 - v50 / p38
            local v55 = math.max(v53, v54, 0.15)
            local v56 = v49.Position
            local v57 = v44.Position
            local v58 = (v56 + v57) / 2
            local v59 = (v57 - v56).Magnitude
            local v60 = Vector3.new(2, 2, v59)
            local v61 = CFrame.lookAt(v58, v57)
            v_u_35.FilterDescendantsInstances = v47
            return v55, workspace:GetPartBoundsInBox(v61, v60, v_u_35)
        end
    end
    return 0, {}
end
local v_u_63 = 0.016666666666666666
local v_u_64 = setmetatable({}, v_u_5)
v_u_64.__index = v_u_64
function v_u_64.new() -- name: new
    -- upvalues: (ref) v_u_3, (copy) v_u_5, (copy) v_u_64, (copy) v_u_9, (ref) v_u_63
    if not v_u_3 then
        return require(script.Parent:WaitForChild("VRVehicleCameraDeprecated")).new()
    end
    local v65 = v_u_5.new()
    local v66 = v_u_64
    local v67 = setmetatable(v65, v66)
    v67.skipOcclusion = true
    v67:Reset()
    if v67.thirdPersonOptionChanged then
        v67.thirdPersonOptionChanged:Disconnect()
        v67.thirdPersonOptionChanged = nil
    end
    v_u_9.Stepped:Connect(function(_, p68)
        -- upvalues: (ref) v_u_63
        v_u_63 = p68
    end)
    return v67
end
function v_u_64.Reset(p69) -- name: Reset
    -- upvalues: (copy) v_u_6, (copy) v_u_4
    local v70 = workspace.CurrentCamera
    local v71
    if v70 then
        v71 = v70.CameraSubject
    else
        v71 = v70
    end
    assert(v70, "VRVehicleCamera initialization error")
    assert(v71)
    assert(v71:IsA("VehicleSeat"))
    p69.lastOrbitalDir = nil
    p69.wasInFirstPerson = nil
    local v72 = v71:GetConnectedParts(true)
    table.insert(v72, v71)
    local v73, v74 = v_u_6.getLooseBoundingSphere(v72)
    p69.vehicleModel = v71:FindFirstAncestorOfClass("Model") or v71.Parent
    p69.assemblyRadius = math.max(v74, 5)
    p69.assemblyOffset = v71.CFrame:Inverse() * v73
    p69.gamepadZoomLevels = {}
    for _, v75 in v_u_4 do
        local v76 = p69.gamepadZoomLevels
        local v77 = v75 * p69.headScale * p69.assemblyRadius / 10
        table.insert(v76, v77)
    end
    p69.lastCameraFocus = nil
    if not p69:IsInFirstPerson() then
        p69:SetCameraToSubjectDistance(p69.gamepadZoomLevels[#p69.gamepadZoomLevels])
    end
    p69.needsReset = false
end
function v_u_64._getThirdPersonLocalOffset(p78) -- name: _getThirdPersonLocalOffset
    -- upvalues: (copy) v_u_14
    local v79 = p78.assemblyOffset
    local v80 = p78.assemblyRadius * v_u_14.verticalCenterOffset
    return v79 + Vector3.new(0, v80, 0)
end
function v_u_64._getFirstPersonLocalOffset(p81, p82) -- name: _getFirstPersonLocalOffset
    -- upvalues: (copy) v_u_12
    local v83 = v_u_12.Character
    if v83 and v83.Parent then
        local v84 = v83:FindFirstChild("Head")
        if v84 and v84:IsA("BasePart") then
            return p82:Inverse() * v84.Position
        end
    end
    return p81:_getThirdPersonLocalOffset()
end
function v_u_64._vrOccludeVignette(p85, p86, p87, p88) -- name: _vrOccludeVignette
    -- upvalues: (copy) v_u_62, (copy) v_u_11, (copy) v_u_12
    local v89 = p87.X
    local v90 = p87.Z
    local v91 = math.atan2(v89, v90)
    local v92 = CFrame.new(p86.Position + p87 * p88) * CFrame.Angles(0, v91, 0)
    local v93, v94 = v_u_62(v92, p86, p88, p85.vehicleModel)
    local v95 = v_u_11:FindFirstChild("VRFade")
    if not v95 then
        v95 = Instance.new("ColorCorrectionEffect")
        v95.Name = "VRFade"
        v95.Parent = v_u_11
    end
    v95.Brightness = -v93
    if p85.lastOccludedParts then
        for _, v96 in p85.lastOccludedParts do
            v96.LocalTransparencyModifier = 0
        end
    end
    if #v94 > 0 then
        for _, v97 in v94 do
            v97.LocalTransparencyModifier = 1
        end
        p85:StartVREdgeBlur(v_u_12, true)
    end
    p85.lastOccludedParts = v94
    return v92
end
function v_u_64.Update(p98) -- name: Update
    -- upvalues: (ref) v_u_63, (copy) v_u_12
    local v99 = v_u_63
    v_u_63 = 0
    p98:UpdateFadeFromBlack(v99)
    p98:UpdateEdgeBlur(v_u_12, v99)
    local v100, v101 = p98:_updateStepRotation(v99)
    return v100, v101
end
function v_u_64._updateStepRotation(p102, p103) -- name: _updateStepRotation
    -- upvalues: (copy) v_u_13, (copy) v_u_7, (copy) v_u_14, (copy) v_u_34
    local v104 = p102:GetSubjectCFrame()
    local v105 = p102:GetCameraToSubjectDistance()
    local v106 = v_u_13(v105, 0.5, p102.assemblyRadius, 1, 0)
    local v107 = v104 * p102:_getThirdPersonLocalOffset():Lerp(p102:_getFirstPersonLocalOffset(v104), v106)
    local v108 = CFrame.new
    local v109 = p102:GetCameraHeight()
    local v110 = v108(v107 + Vector3.new(0, v109, 0))
    if p102.needsReset or p102.recentered then
        p102.lastOrbitalDir = nil
        p102.needsReset = false
        p102.recentered = false
    end
    local v111 = p102.lastOrbitalDir
    if not v111 then
        v111 = (v104.LookVector * Vector3.new(-1, 0, -1)).Unit
        p102:StartFadeFromBlack()
    end
    local v112 = (p102:GetSubjectVelocity() * Vector3.new(1, 0, 1)).Magnitude > 2
    if v112 then
        v_u_7.getRotation(p103)
    else
        local v113 = p102:getRotation(p103)
        if math.abs(v113) > 0 then
            v111 = (CFrame.Angles(0, -v113, 0) * CFrame.new(v111)).Position.Unit
            p102.lastRotateTime = os.clock()
        end
    end
    local v114
    if p102:IsInFirstPerson() then
        if not p102.wasInFirstPerson or v112 then
            v111 = (v104.LookVector * Vector3.new(-1, 0, -1)).Unit
            p102.wasInFirstPerson = true
        end
        local v115 = -v104.LookVector.X
        local v116 = -v104.LookVector.Z
        local v117 = math.atan2(v115, v116)
        if p102.lastVehicleYaw then
            local v118 = (v117 - p102.lastVehicleYaw + 3.141592653589793) % 6.283185307179586 - 3.141592653589793
            if math.abs(v118) > 0.001 then
                v111 = (CFrame.Angles(0, v118, 0) * CFrame.new(v111)).Position.Unit
            end
        end
        p102.lastVehicleYaw = v117
        local v119 = v111.X
        local v120 = v111.Z
        local v121 = math.atan2(v119, v120)
        v114 = CFrame.new(v110.Position + v111 * v105) * CFrame.Angles(0, v121, 0)
    else
        p102.wasInFirstPerson = false
        p102.lastVehicleYaw = nil
        local v122 = p102.lastRotateTime
        if v122 then
            v122 = os.clock() - p102.lastRotateTime < v_u_14.autocorrectDelay
        end
        if v112 and not v122 then
            local v123 = (v104.LookVector * Vector3.new(-1, 0, -1)).Unit
            local v124 = v111:Dot(v123)
            local v125 = math.clamp(v124, -1, 1)
            local v126 = math.acos(v125)
            local v127 = p102:GetSubjectRotVelocity()
            local v128 = v104.YVector:Dot(v127)
            local v129 = math.abs(v128)
            local v130 = 0.01 + v126 / 3.141592653589793 * 0.05 + v129 * 0.02
            v111 = v111:Lerp(v123, (math.min(v130, 0.15)))
        end
        v114 = v_u_34(v110, v111, v105, p102.vehicleModel)
    end
    p102.lastOrbitalDir = v111
    return v114, v114 * CFrame.new(0, 0, -v105)
end
return v_u_64
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule["VRCameraTeleportDetector.spec"]
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = game:GetService("CorePackages")
local v2 = require(v1.Packages.Dev.JestGlobals)
local v3 = v2.describe
local v_u_4 = v2.expect
local v_u_5 = v2.it
local v6 = require(script.Parent.VRCameraTeleportDetector)
local v_u_7 = v6.shouldRecenter
local v_u_8 = v6.JUMP_STUDS
local v_u_9 = v6.SETTLED_STUDS
local v_u_10 = v6.DEBOUNCE_SECONDS
v3("VRCameraTeleportDetector.shouldRecenter", function()
    -- upvalues: (copy) v_u_5, (copy) v_u_4, (copy) v_u_7, (copy) v_u_8, (copy) v_u_9, (copy) v_u_10
    v_u_5("fires on a discrete jump from rest (no prior step, never recentered)", function()
        -- upvalues: (ref) v_u_4, (ref) v_u_7, (ref) v_u_8
        v_u_4(v_u_7(nil, v_u_8 + 10, nil, 100)).toBe(true)
    end)
    v_u_5("fires on a discrete jump preceded by a near-still frame", function()
        -- upvalues: (ref) v_u_4, (ref) v_u_7, (ref) v_u_9, (ref) v_u_8
        v_u_4(v_u_7(v_u_9 - 0.5, v_u_8 + 10, nil, 100)).toBe(true)
    end)
    v_u_5("does not fire for sub-threshold motion", function()
        -- upvalues: (ref) v_u_4, (ref) v_u_7, (ref) v_u_8
        v_u_4(v_u_7(0, v_u_8 - 0.1, nil, 100)).toBe(false)
        v_u_4(v_u_7(0, 0, nil, 100)).toBe(false)
    end)
    v_u_5("does not fire when the previous frame was already moving (continuous motion)", function()
        -- upvalues: (ref) v_u_4, (ref) v_u_7, (ref) v_u_9, (ref) v_u_8
        v_u_4(v_u_7(v_u_9 + 0.1, v_u_8 + 10, nil, 100)).toBe(false)
    end)
    v_u_5("does not fire within the debounce interval", function()
        -- upvalues: (ref) v_u_4, (ref) v_u_7, (ref) v_u_8, (ref) v_u_10
        v_u_4(v_u_7(nil, v_u_8 + 10, 100, 100 + v_u_10 - 0.01)).toBe(false)
    end)
    v_u_5("fires again once the debounce interval has elapsed", function()
        -- upvalues: (ref) v_u_4, (ref) v_u_7, (ref) v_u_8, (ref) v_u_10
        v_u_4(v_u_7(nil, v_u_8 + 10, 100, 100 + v_u_10 + 0.01)).toBe(true)
    end)
    v_u_5("does not retrigger every frame under continuous per-frame CFrame writes (oscillation guard)", function()
        -- upvalues: (ref) v_u_8, (ref) v_u_7, (ref) v_u_4
        local v11 = v_u_8 + 10
        local v12 = nil
        local v13 = nil
        local v14 = 0
        local v15 = 0
        for _ = 1, 120 do
            if v_u_7(v12, v11, v13, v14) then
                v15 = v15 + 1
                v13 = v14
            end
            v14 = v14 + 0.016666666666666666
            v12 = v11
        end
        v_u_4(v15).toBe(1)
    end)
end)
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.VRCameraTeleportDetector
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_5 = {
    ["JUMP_STUDS"] = 4,
    ["SETTLED_STUDS"] = 1,
    ["DEBOUNCE_SECONDS"] = 0.25,
    ["shouldRecenter"] = function(p1, p2, p3, p4) -- name: shouldRecenter
        -- upvalues: (copy) v_u_5
        if p2 <= v_u_5.JUMP_STUDS then
            return false
        elseif p1 == nil or v_u_5.SETTLED_STUDS > p1 then
            return p3 == nil or p4 - p3 >= v_u_5.DEBOUNCE_SECONDS
        else
            return false
        end
    end
}
return v_u_5
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.VRCamera
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = game:GetService("Players")
local v_u_2 = game:GetService("VRService")
UserSettings():GetService("UserGameSettings")
require(script.Parent:WaitForChild("CameraInput"))
require(script.Parent:WaitForChild("CameraUtils"))
local v_u_3 = require(script.Parent:WaitForChild("VRCameraTeleportDetector"))
local v4 = script.Parent.Parent:WaitForChild("CommonUtils")
local v5 = require(v4:WaitForChild("FlagUtil"))
local v_u_6 = v5.getUserFlag("UserVRRemoveLuaEdgeBlur")
local v_u_7 = v5.getUserFlag("UserVRRecenterOnExternalTeleport")
local v_u_8 = require(script.Parent:WaitForChild("VRBaseCamera"))
local v_u_9 = setmetatable({}, v_u_8)
v_u_9.__index = v_u_9
function v_u_9.new() -- name: new
    -- upvalues: (copy) v_u_8, (copy) v_u_9, (copy) v_u_1
    local v10 = v_u_8.new()
    local v11 = v_u_9
    local v12 = setmetatable(v10, v11)
    v12.lastUpdate = tick()
    v12.focusOffset = CFrame.new()
    v12:Reset()
    v12.controlModule = require(v_u_1.LocalPlayer:WaitForChild("PlayerScripts").PlayerModule:WaitForChild("ControlModule"))
    v12.savedAutoRotate = true
    return v12
end
function v_u_9.Reset(p13) -- name: Reset
    -- upvalues: (copy) v_u_8
    p13.needsReset = true
    p13.needsBlackout = true
    p13.motionDetTime = 0
    p13.blackOutTimer = 0
    p13.lastCameraResetPosition = nil
    v_u_8.Reset(p13)
end
function v_u_9.Update(p14, p15) -- name: Update
    -- upvalues: (copy) v_u_1, (copy) v_u_6, (copy) v_u_2
    local v16 = workspace.CurrentCamera
    local v17 = v16.CFrame
    local v18 = v16.Focus
    local v19 = v_u_1.LocalPlayer
    p14:GetHumanoid()
    local _ = v16.CameraSubject
    if p14.lastUpdate == nil or p15 > 1 then
        p14.lastCameraTransform = nil
    end
    p14:UpdateFadeFromBlack(p15)
    if not v_u_6 then
        p14:UpdateEdgeBlur(v19, p15)
    end
    local v20 = p14.lastSubjectPosition
    local v21 = p14:GetSubjectPosition()
    if p14.needsBlackout then
        p14:StartFadeFromBlack()
        local v22 = math.clamp(p15, 0.0001, 0.1)
        p14.blackOutTimer = p14.blackOutTimer + v22
        if p14.blackOutTimer > 0.1 and game:IsLoaded() then
            p14.needsBlackout = false
            p14.needsReset = true
        end
    end
    if v21 and (v19 and v16) then
        local v23 = p14:GetVRFocus(v21, p15)
        if p14:IsInFirstPerson() then
            if v_u_2.AvatarGestures then
                v17, v18 = p14:UpdateImmersionCamera(p15, v17, v23, v20, v21)
            else
                v17, v18 = p14:UpdateFirstPersonTransform(p15, v17, v23, v20, v21)
            end
        elseif v_u_2.ThirdPersonFollowCamEnabled then
            v17, v18 = p14:UpdateThirdPersonFollowTransform(p15, v17, v23, v20, v21)
        else
            v17, v18 = p14:UpdateThirdPersonComfortTransform(p15, v17, v23, v20, v21)
        end
        p14.lastCameraTransform = v17
        p14.lastCameraFocus = v18
    end
    p14.lastUpdate = tick()
    return v17, v18
end
function v_u_9.GetAvatarFeetWorldYValue(_) -- name: GetAvatarFeetWorldYValue
    local v24 = workspace.CurrentCamera.CameraSubject
    if not v24 then
        return nil
    end
    if not (v24:IsA("Humanoid") and v24.RootPart) then
        return nil
    end
    local v25 = v24.RootPart
    return v25.Position.Y - v25.Size.Y / 2 - v24.HipHeight
end
function v_u_9.UpdateFirstPersonTransform(p26, p27, _, p28, p29, p30) -- name: UpdateFirstPersonTransform
    -- upvalues: (copy) v_u_1, (copy) v_u_6
    if p26.needsReset then
        p26:StartFadeFromBlack()
        p26.needsReset = false
    end
    local v31 = v_u_1.LocalPlayer
    if not v_u_6 and (p29 - p30).magnitude > 0.01 then
        p26:StartVREdgeBlur(v31)
    end
    local v32 = p28.p
    local v33 = p26:GetCameraLookVector()
    local v34 = v33.X
    local v35 = v33.Z
    local v36 = Vector3.new(v34, 0, v35).Unit
    local v37 = p26:getRotation(p27)
    local v38 = p26:CalculateNewLookVectorFromArg(v36, Vector2.new(v37, 0))
    return CFrame.new(v32 - 0.5 * v38, v32), p28
end
function v_u_9.UpdateImmersionCamera(p39, p40, _, _, p41, p42) -- name: UpdateImmersionCamera
    -- upvalues: (copy) v_u_1, (copy) v_u_7, (copy) v_u_2, (copy) v_u_6, (copy) v_u_3
    local v43 = p39:GetSubjectCFrame()
    local v44 = workspace.CurrentCamera
    local v45 = v_u_1.LocalPlayer.Character
    local v46 = p39:GetHumanoid()
    if not v46 then
        return v44.CFrame, v44.Focus
    end
    local v47 = v45:FindFirstChild("HumanoidRootPart")
    if not v47 then
        return v44.CFrame, v44.Focus
    end
    local v48
    if v_u_7 then
        if p41 then
            local v49 = p42.X - p41.X
            local v50 = p42.Z - p41.Z
            v48 = Vector3.new(v49, 0, v50).Magnitude
        else
            v48 = 0
        end
    else
        v48 = nil
    end
    p39.characterOrientation = v47:FindFirstChild("CharacterAlignOrientation")
    if not p39.characterOrientation then
        local v51 = v47:FindFirstChild("RootAttachment")
        if not v51 then
            return
        end
        p39.characterOrientation = Instance.new("AlignOrientation")
        p39.characterOrientation.Name = "CharacterAlignOrientation"
        p39.characterOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
        p39.characterOrientation.Attachment0 = v51
        p39.characterOrientation.RigidityEnabled = true
        p39.characterOrientation.Parent = v47
    end
    if p39.characterOrientation.Enabled == false then
        p39.characterOrientation.Enabled = true
    end
    if p39.needsReset then
        p39.needsReset = false
        p39.savedAutoRotate = v46.AutoRotate
        v46.AutoRotate = false
        if v_u_7 then
            v_u_2:RecenterUserHeadCFrame()
            p39.lastTeleportRecenter = tick()
        end
        p39:StartFadeFromBlack()
    elseif v46.Sit then
        if not v_u_6 and (v43.Position - v44.CFrame.Position).Magnitude > 0.01 then
            p39:StartVREdgeBlur(v_u_1.LocalPlayer)
        end
    else
        local v52 = p39.controlModule:GetEstimatedVRTorsoFrame()
        p39.characterOrientation.CFrame = v44.CFrame * v52
        if p39.controlModule.inputMoveVector.Magnitude > 0 then
            p39.motionDetTime = 0.1
        end
        if p39.controlModule.inputMoveVector.Magnitude > 0 or p39.motionDetTime > 0 then
            p39.motionDetTime = p39.motionDetTime - p40
            if not v_u_6 then
                p39:StartVREdgeBlur(v_u_1.LocalPlayer)
            end
            local v53 = v_u_2:GetUserCFrame(Enum.UserCFrame.Head)
            local v54 = v53.Rotation + v53.Position * v44.HeadScale
            local v55 = v45.HumanoidRootPart
            local v56 = -0.7 * v55.Size.Y / 2
            local v57 = v44.CFrame * v54 * CFrame.new(0, v56, 0)
            local v58 = v55.CFrame.LookVector
            local v59 = v58.X
            local v60 = v58.Z
            local v61 = p42 - (v57 - Vector3.new(v59, 0, v60).Unit * v55.Size.Y * 0.125).Position + v44.CFrame.Position
            local v62 = v61.X
            local v63 = p42.Y
            local v64 = v61.Z
            local v65 = Vector3.new(v62, v63, v64)
            v43 = v44.CFrame.Rotation + v65
        elseif v_u_7 and v_u_3.shouldRecenter(p39.prevSubjStep, v48, p39.lastTeleportRecenter, tick()) then
            local v66 = v_u_2:GetUserCFrame(Enum.UserCFrame.Head)
            local v67 = v66.Rotation + v66.Position * v44.HeadScale
            local v68 = v45.HumanoidRootPart
            local v69 = -0.7 * v68.Size.Y / 2
            local v70 = v44.CFrame * v67 * CFrame.new(0, v69, 0)
            local v71 = v68.CFrame.LookVector
            local v72 = v71.X
            local v73 = v71.Z
            local v74 = p42 - (v70 - Vector3.new(v72, 0, v73).Unit * v68.Size.Y * 0.125).Position + v44.CFrame.Position
            local v75 = v74.X
            local v76 = p42.Y
            local v77 = v74.Z
            local v78 = Vector3.new(v75, v76, v77)
            v43 = v44.CFrame.Rotation + v78
            v_u_2:RecenterUserHeadCFrame()
            p39:StartFadeFromBlack()
            p39.lastTeleportRecenter = tick()
        else
            local v79 = v44.CFrame.Rotation
            local v80 = v44.CFrame.Position.X
            local v81 = p42.Y
            local v82 = v44.CFrame.Position.Z
            v43 = v79 + Vector3.new(v80, v81, v82)
        end
        local v83 = p39:getRotation(p40)
        if math.abs(v83) > 0 then
            local v84 = v_u_2:GetUserCFrame(Enum.UserCFrame.Head)
            local v85 = v84.Rotation + v84.Position * v44.HeadScale
            local v86 = v43 * v85
            local v87 = CFrame.new(v86.Position)
            local v88 = CFrame.Angles
            local v89 = v83 * 90
            v43 = v87 * v88(0, -math.rad(v89), 0) * v86.Rotation * v85:Inverse()
        end
    end
    if v_u_7 then
        p39.prevSubjStep = v48
    end
    return v43, v43 * CFrame.new(0, 0, -0.5)
end
function v_u_9.UpdateThirdPersonComfortTransform(p90, p91, p92, p93, p94, p95) -- name: UpdateThirdPersonComfortTransform
    -- upvalues: (copy) v_u_1, (copy) v_u_2
    local v96 = p90:GetCameraToSubjectDistance()
    local v97 = v96 < 0.5 and 0.5 or v96
    if p94 ~= nil and p90.lastCameraFocus ~= nil then
        local _ = v_u_1.LocalPlayer
        local v98 = p94 - p95
        local v99 = p90.controlModule:GetMoveVector()
        local v100 = v98.magnitude > 0.01 and true or v99.magnitude > 0.01
        if v100 then
            p90.motionDetTime = 0.1
        end
        p90.motionDetTime = p90.motionDetTime - p91
        if (p90.motionDetTime > 0 and true or v100) and not p90.needsReset then
            local v101 = p90.lastCameraFocus
            p90.VRCameraFocusFrozen = true
            return p92, v101
        end
        local v102 = p90.lastCameraResetPosition == nil and true or (p95 - p90.lastCameraResetPosition).Magnitude > 1
        local v103 = p90:getRotation(p91)
        if math.abs(v103) > 0 then
            local v104 = p93:ToObjectSpace(p92)
            p92 = p93 * CFrame.Angles(0, -v103, 0) * v104
        end
        if p90.VRCameraFocusFrozen and v102 or p90.needsReset then
            v_u_2:RecenterUserHeadCFrame()
            p90.VRCameraFocusFrozen = false
            p90.needsReset = false
            p90.lastCameraResetPosition = p95
            p90:ResetZoom()
            p90:StartFadeFromBlack()
            local v105 = p90:GetHumanoid()
            local v106 = v105.Torso and v105.Torso.CFrame.lookVector or Vector3.new(1, 0, 0)
            local v107 = v106.X
            local v108 = v106.Z
            local v109 = Vector3.new(v107, 0, v108)
            local v110 = p93.Position - v109 * v97
            local v111 = p93.Position.X
            local v112 = v110.Y
            local v113 = p93.Position.Z
            local v114 = Vector3.new(v111, v112, v113)
            p92 = CFrame.new(v110, v114)
        end
    end
    return p92, p93
end
function v_u_9.UpdateThirdPersonFollowTransform(p115, p116, _, _, p117, p118) -- name: UpdateThirdPersonFollowTransform
    -- upvalues: (copy) v_u_2, (copy) v_u_1, (copy) v_u_6
    local v119 = workspace.CurrentCamera
    local v120 = p115:GetCameraToSubjectDistance()
    local v121 = p115:GetVRFocus(p118, p116)
    if p115.needsReset then
        p115.needsReset = false
        v_u_2:RecenterUserHeadCFrame()
        p115:ResetZoom()
        p115:StartFadeFromBlack()
    end
    if p115.recentered then
        local v122 = p115:GetSubjectCFrame()
        if not v122 then
            return v119.CFrame, v119.Focus
        end
        local v123 = v121 * v122.Rotation * CFrame.new(0, 0, v120)
        p115.focusOffset = v121:ToObjectSpace(v123)
        p115.recentered = false
        return v123, v121
    end
    local v124 = v121:ToWorldSpace(p115.focusOffset)
    local _ = v_u_1.LocalPlayer
    local v125 = p117 - p118
    local v126 = p115.controlModule
    local v127 = v126:GetMoveVector()
    if v125.magnitude > 0.01 or v127.magnitude > 0 then
        local v128 = v126:GetEstimatedVRTorsoFrame()
        local v129 = v128.Rotation + v128.Position * v119.HeadScale
        local v130 = v119.CFrame * v129
        local v131 = v130.LookVector
        local v132 = v131.X
        local v133 = v131.Z
        local v134 = Vector3.new(v132, 0, v133).Unit * v120
        local v135 = v121.Position - v134
        v124 = v124:Lerp(CFrame.new(v119.CFrame.Position + v135 - v130.Position) * v124.Rotation, 0.01)
    end
    local v136 = p115:getRotation(p116)
    if math.abs(v136) > 0 then
        local v137 = v121:ToObjectSpace(v124)
        v124 = v121 * CFrame.Angles(0, -v136, 0) * v137
    end
    p115.focusOffset = v121:ToObjectSpace(v124)
    local v138 = v124 * CFrame.new(0, 0, -v120)
    if not v_u_6 and (v138.Position - v119.Focus.Position).Magnitude > 0.01 then
        p115:StartVREdgeBlur(v_u_1.LocalPlayer)
    end
    return v124, v138
end
function v_u_9.LeaveFirstPerson(p139) -- name: LeaveFirstPerson
    -- upvalues: (copy) v_u_8
    v_u_8.LeaveFirstPerson(p139)
    p139.needsReset = true
    if p139.VRBlur then
        p139.VRBlur.Visible = false
    end
    if p139.characterOrientation then
        p139.characterOrientation.Enabled = false
    end
    local v140 = p139:GetHumanoid()
    if v140 then
        v140.AutoRotate = p139.savedAutoRotate
    end
end
return v_u_9
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.VRBaseCamera
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1, v2 = pcall(function()
    return UserSettings():IsUserFeatureEnabled("UserVRVehicleCameraOrbital")
end)
local v_u_3 = v1 and v2
local v_u_4 = game:GetService("VRService")
local v_u_5 = game:GetService("Players").LocalPlayer
local v_u_6 = game:GetService("Lighting")
local v_u_7 = game:GetService("RunService")
local v_u_8 = UserSettings():GetService("UserGameSettings")
local v_u_9 = require(script.Parent:WaitForChild("CameraInput"))
local v_u_10 = require(script.Parent:WaitForChild("ZoomController"))
local v11 = script.Parent.Parent:WaitForChild("CommonUtils")
local v_u_12 = require(v11:WaitForChild("FlagUtil")).getUserFlag("UserVRRemoveLuaEdgeBlur")
local v_u_13 = require(script.Parent:WaitForChild("BaseCamera"))
local v_u_14 = setmetatable({}, v_u_13)
v_u_14.__index = v_u_14
function v_u_14.new() -- name: new
    -- upvalues: (copy) v_u_13, (copy) v_u_14
    local v15 = v_u_13.new()
    local v16 = v_u_14
    local v17 = setmetatable(v15, v16)
    v17.gamepadZoomLevels = { 0, 7 }
    v17.headScale = 1
    v17:SetCameraToSubjectDistance(7)
    v17.VRFadeResetTimer = 0
    v17.VREdgeBlurTimer = 0
    v17.gamepadResetConnection = nil
    v17.needsReset = true
    v17.recentered = false
    v17:Reset()
    return v17
end
function v_u_14.Reset(p18) -- name: Reset
    p18.stepRotateTimeout = 0
end
function v_u_14.GetModuleName(_) -- name: GetModuleName
    return "VRBaseCamera"
end
function v_u_14.GamepadZoomPress(p19) -- name: GamepadZoomPress
    -- upvalues: (copy) v_u_13
    v_u_13.GamepadZoomPress(p19)
    p19:GamepadReset()
    p19:ResetZoom()
end
function v_u_14.GamepadReset(p20) -- name: GamepadReset
    p20.stepRotateTimeout = 0
    p20.needsReset = true
end
function v_u_14.ResetZoom(p21) -- name: ResetZoom
    -- upvalues: (copy) v_u_10
    v_u_10.SetZoomParameters(p21.currentSubjectDistance, 0)
    v_u_10.ReleaseSpring()
end
function v_u_14.OnEnabledChanged(p_u_22) -- name: OnEnabledChanged
    -- upvalues: (copy) v_u_13, (copy) v_u_9, (copy) v_u_4, (ref) v_u_3, (copy) v_u_12, (copy) v_u_5, (copy) v_u_6
    v_u_13.OnEnabledChanged(p_u_22)
    if p_u_22.enabled then
        p_u_22.gamepadResetConnection = v_u_9.gamepadReset:Connect(function()
            -- upvalues: (copy) p_u_22
            p_u_22:GamepadReset()
        end)
        p_u_22.thirdPersonOptionChanged = v_u_4:GetPropertyChangedSignal("ThirdPersonFollowCamEnabled"):Connect(function()
            -- upvalues: (ref) v_u_3, (copy) p_u_22
            if v_u_3 then
                p_u_22:Reset()
            elseif not p_u_22:IsInFirstPerson() then
                p_u_22:Reset()
            end
        end)
        p_u_22.vrRecentered = v_u_4.UserCFrameChanged:Connect(function(p23, _)
            -- upvalues: (copy) p_u_22
            if p23 == Enum.UserCFrame.Floor then
                p_u_22.recentered = true
            end
        end)
    else
        if p_u_22.inFirstPerson then
            p_u_22:GamepadZoomPress()
        end
        if p_u_22.thirdPersonOptionChanged then
            p_u_22.thirdPersonOptionChanged:Disconnect()
            p_u_22.thirdPersonOptionChanged = nil
        end
        if p_u_22.vrRecentered then
            p_u_22.vrRecentered:Disconnect()
            p_u_22.vrRecentered = nil
        end
        if p_u_22.cameraHeadScaleChangedConn then
            p_u_22.cameraHeadScaleChangedConn:Disconnect()
            p_u_22.cameraHeadScaleChangedConn = nil
        end
        if p_u_22.gamepadResetConnection then
            p_u_22.gamepadResetConnection:Disconnect()
            p_u_22.gamepadResetConnection = nil
        end
        if not v_u_12 then
            p_u_22.VREdgeBlurTimer = 0
            p_u_22:UpdateEdgeBlur(v_u_5, 1)
        end
        local v24 = v_u_6:FindFirstChild("VRFade")
        if v24 then
            v24.Brightness = 0
        end
    end
end
function v_u_14.OnCurrentCameraChanged(p_u_25) -- name: OnCurrentCameraChanged
    -- upvalues: (copy) v_u_13
    v_u_13.OnCurrentCameraChanged(p_u_25)
    if p_u_25.cameraHeadScaleChangedConn then
        p_u_25.cameraHeadScaleChangedConn:Disconnect()
        p_u_25.cameraHeadScaleChangedConn = nil
    end
    local v26 = workspace.CurrentCamera
    if v26 then
        p_u_25.cameraHeadScaleChangedConn = v26:GetPropertyChangedSignal("HeadScale"):Connect(function()
            -- upvalues: (copy) p_u_25
            p_u_25:OnHeadScaleChanged()
        end)
        p_u_25:OnHeadScaleChanged()
    end
end
function v_u_14.OnHeadScaleChanged(p27) -- name: OnHeadScaleChanged
    local v28 = workspace.CurrentCamera.HeadScale
    for v29, v30 in p27.gamepadZoomLevels do
        p27.gamepadZoomLevels[v29] = v30 * v28 / p27.headScale
    end
    p27:SetCameraToSubjectDistance(p27:GetCameraToSubjectDistance() * v28 / p27.headScale)
    p27.headScale = v28
end
function v_u_14.GetVRFocus(p31, p32, p33) -- name: GetVRFocus
    local v34 = p31.lastCameraFocus or p32
    local v35 = p31.cameraTranslationConstraints.x
    local v36 = p31.cameraTranslationConstraints.y + p33
    local v37 = math.min(1, v36)
    local v38 = p31.cameraTranslationConstraints.z
    p31.cameraTranslationConstraints = Vector3.new(v35, v37, v38)
    local v39 = p31:GetCameraHeight()
    local v40 = Vector3.new(0, v39, 0)
    local v41 = CFrame.new
    local v42 = p32.x
    local v43 = v34.y
    local v44 = p32.z
    return v41(Vector3.new(v42, v43, v44):Lerp(p32 + v40, p31.cameraTranslationConstraints.y))
end
function v_u_14.StartFadeFromBlack(p45) -- name: StartFadeFromBlack
    -- upvalues: (copy) v_u_8, (copy) v_u_6
    if v_u_8.VignetteEnabled ~= false then
        local v46 = v_u_6:FindFirstChild("VRFade")
        if not v46 then
            v46 = Instance.new("ColorCorrectionEffect")
            v46.Name = "VRFade"
            v46.Parent = v_u_6
        end
        v46.Brightness = -1
        p45.VRFadeResetTimer = 0.1
    end
end
function v_u_14.UpdateFadeFromBlack(p47, p48) -- name: UpdateFadeFromBlack
    -- upvalues: (copy) v_u_6
    local v49 = v_u_6:FindFirstChild("VRFade")
    if p47.VRFadeResetTimer > 0 then
        local v50 = p47.VRFadeResetTimer - p48
        p47.VRFadeResetTimer = math.max(v50, 0)
        local v51 = v_u_6:FindFirstChild("VRFade")
        if v51 and v51.Brightness < 0 then
            local v52 = v51.Brightness + p48 * 10
            v51.Brightness = math.min(v52, 0)
            return
        end
    elseif v49 then
        v49.Brightness = 0
    end
end
function v_u_14.StartVREdgeBlur(p53, p54, p55) -- name: StartVREdgeBlur
    -- upvalues: (copy) v_u_8, (copy) v_u_7, (copy) v_u_4
    if p55 or v_u_8.VignetteEnabled ~= false then
        local v56 = workspace.CurrentCamera:FindFirstChild("VRBlurPart")
        if not v56 then
            local v_u_57 = Instance.new("Part")
            v_u_57.Name = "VRBlurPart"
            v_u_57.Parent = workspace.CurrentCamera
            v_u_57.CanTouch = false
            v_u_57.CanCollide = false
            v_u_57.CanQuery = false
            v_u_57.Anchored = true
            v_u_57.Size = Vector3.new(0.44, 0.47, 1)
            v_u_57.Transparency = 1
            v_u_57.CastShadow = false
            v_u_7.RenderStepped:Connect(function(_)
                -- upvalues: (ref) v_u_4, (ref) v_u_57
                local v58 = v_u_4:GetUserCFrame(Enum.UserCFrame.Head)
                local v59 = workspace.CurrentCamera.CFrame * (CFrame.new(v58.p * workspace.CurrentCamera.HeadScale) * (v58 - v58.p))
                v_u_57.CFrame = v59 * CFrame.Angles(0, 3.141592653589793, 0) + v59.LookVector * (1.05 * workspace.CurrentCamera.HeadScale)
                v_u_57.Size = Vector3.new(0.44, 0.47, 1) * workspace.CurrentCamera.HeadScale
            end)
            v56 = v_u_57
        end
        local v60 = p54.PlayerGui:FindFirstChild("VRBlurScreen")
        local v61
        if v60 then
            v61 = v60:FindFirstChild("VRBlur")
        else
            v61 = nil
        end
        if not v61 then
            local v62 = v60 or (Instance.new("SurfaceGui") or Instance.new("ScreenGui"))
            v62.Name = "VRBlurScreen"
            v62.Parent = p54.PlayerGui
            v62.Adornee = v56
            v61 = Instance.new("ImageLabel")
            v61.Name = "VRBlur"
            v61.Parent = v62
            v61.Image = "rbxasset://textures/ui/VR/edgeBlur.png"
            v61.AnchorPoint = Vector2.new(0.5, 0.5)
            v61.Position = UDim2.new(0.5, 0, 0.5, 0)
            local v63 = workspace.CurrentCamera.ViewportSize.X * 2.3 / 512
            local v64 = workspace.CurrentCamera.ViewportSize.Y * 2.3 / 512
            v61.Size = UDim2.fromScale(v63, v64)
            v61.BackgroundTransparency = 1
            v61.Active = true
            v61.ScaleType = Enum.ScaleType.Stretch
        end
        v61.Visible = true
        v61.ImageTransparency = 0
        p53.VREdgeBlurTimer = 0.14
    end
end
function v_u_14.UpdateEdgeBlur(p65, p66, p67) -- name: UpdateEdgeBlur
    local v68 = p66.PlayerGui:FindFirstChild("VRBlurScreen")
    local v69
    if v68 then
        v69 = v68:FindFirstChild("VRBlur")
    else
        v69 = nil
    end
    if v69 then
        if p65.VREdgeBlurTimer > 0 then
            p65.VREdgeBlurTimer = p65.VREdgeBlurTimer - p67
            local v70 = p66.PlayerGui:FindFirstChild("VRBlurScreen")
            local v71 = v70 and v70:FindFirstChild("VRBlur")
            if v71 then
                local v72 = p65.VREdgeBlurTimer
                v71.ImageTransparency = 1 - math.clamp(v72, 0.01, 0.14) * 7.142857142857142
                return
            end
        else
            v69.Visible = false
        end
    end
end
function v_u_14.GetCameraHeight(p73) -- name: GetCameraHeight
    return p73.inFirstPerson and 0 or 0.25881904510252074 * p73.currentSubjectDistance
end
function v_u_14.GetSubjectCFrame(p74) -- name: GetSubjectCFrame
    -- upvalues: (copy) v_u_13
    local v75 = v_u_13.GetSubjectCFrame(p74)
    local v76 = workspace.CurrentCamera
    if v76 then
        v76 = v76.CameraSubject
    end
    if not v76 then
        return v75
    end
    if v76:IsA("Humanoid") and (v76:GetState() == Enum.HumanoidStateType.Dead and v76 == p74.lastSubject) then
        v75 = p74.lastSubjectCFrame
    end
    if v75 then
        p74.lastSubjectCFrame = v75
    end
    return v75
end
function v_u_14.GetSubjectPosition(p77) -- name: GetSubjectPosition
    -- upvalues: (copy) v_u_13
    local v78 = v_u_13.GetSubjectPosition(p77)
    local v79 = game.Workspace.CurrentCamera
    if v79 then
        v79 = v79.CameraSubject
    end
    if not v79 then
        return nil
    end
    if v79:IsA("Humanoid") then
        if v79:GetState() == Enum.HumanoidStateType.Dead and v79 == p77.lastSubject then
            v78 = p77.lastSubjectPosition
        end
    elseif v79:IsA("VehicleSeat") then
        v78 = v79.CFrame.p + v79.CFrame:vectorToWorldSpace(Vector3.new(0, 4, 0))
    end
    p77.lastSubjectPosition = v78
    return v78
end
function v_u_14.getRotation(p80, p81) -- name: getRotation
    -- upvalues: (copy) v_u_9, (copy) v_u_8
    local v82 = v_u_9.getRotation(p81)
    local v83 = 0
    if v_u_8.VRSmoothRotationEnabled then
        return v82.X
    end
    local v84 = v82.X
    if math.abs(v84) > 0.03 then
        if p80.stepRotateTimeout > 0 then
            p80.stepRotateTimeout = p80.stepRotateTimeout - p81
        end
        if p80.stepRotateTimeout <= 0 then
            local v85 = (v82.X < 0 and -1 or 1) * 0.5235987755982988
            p80:StartFadeFromBlack()
            p80.stepRotateTimeout = 0.25
            return v85
        end
    else
        local v86 = v82.X
        if math.abs(v86) < 0.02 then
            p80.stepRotateTimeout = 0
        end
    end
    return v83
end
function v_u_14.HandleSubjectDistance(p87, p88) -- name: HandleSubjectDistance
    -- upvalues: (ref) v_u_3
    if v_u_3 and (p88 and (p88.IsInFirstPerson and p88:IsInFirstPerson())) then
        p87:SetCameraToSubjectDistance(0)
    end
end
return v_u_14
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.OrbitalCamera
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = script.Parent.Parent:WaitForChild("CommonUtils")
local v_u_2 = require(v1:WaitForChild("FlagUtil")).getUserFlag("UserFixOrbitalCameraAzimuth")
local v_u_3 = require(script.Parent:WaitForChild("CameraUtils"))
local v_u_4 = require(script.Parent:WaitForChild("CameraInput"))
local v_u_5 = game:GetService("Players")
local v_u_6 = require(script.Parent:WaitForChild("BaseCamera"))
local v_u_7 = setmetatable({}, v_u_6)
v_u_7.__index = v_u_7
function v_u_7.new() -- name: new
    -- upvalues: (copy) v_u_6, (copy) v_u_7
    local v8 = v_u_6.new()
    local v9 = v_u_7
    local v10 = setmetatable(v8, v9)
    v10.lastUpdate = tick()
    v10.changedSignalConnections = {}
    v10.refAzimuthRad = nil
    v10.curAzimuthRad = nil
    v10.minAzimuthAbsoluteRad = nil
    v10.maxAzimuthAbsoluteRad = nil
    v10.useAzimuthLimits = nil
    v10.curElevationRad = nil
    v10.minElevationRad = nil
    v10.maxElevationRad = nil
    v10.curDistance = nil
    v10.minDistance = nil
    v10.maxDistance = nil
    v10.gamepadDollySpeedMultiplier = 1
    v10.lastUserPanCamera = tick()
    v10.externalProperties = {}
    v10.externalProperties.InitialDistance = 25
    v10.externalProperties.MinDistance = 10
    v10.externalProperties.MaxDistance = 100
    v10.externalProperties.InitialElevation = 35
    v10.externalProperties.MinElevation = 35
    v10.externalProperties.MaxElevation = 35
    v10.externalProperties.ReferenceAzimuth = -45
    v10.externalProperties.CWAzimuthTravel = 90
    v10.externalProperties.CCWAzimuthTravel = 90
    v10.externalProperties.UseAzimuthLimits = false
    v10:LoadNumberValueParameters()
    return v10
end
function v_u_7.LoadOrCreateNumberValueParameter(p_u_11, p_u_12, p13, p_u_14) -- name: LoadOrCreateNumberValueParameter
    local v15 = script:FindFirstChild(p_u_12)
    if v15 and v15:IsA(p13) then
        p_u_11.externalProperties[p_u_12] = v15.Value
    else
        if p_u_11.externalProperties[p_u_12] == nil then
            return
        end
        v15 = Instance.new(p13)
        v15.Name = p_u_12
        v15.Parent = script
        v15.Value = p_u_11.externalProperties[p_u_12]
    end
    if p_u_14 then
        if p_u_11.changedSignalConnections[p_u_12] then
            p_u_11.changedSignalConnections[p_u_12]:Disconnect()
        end
        p_u_11.changedSignalConnections[p_u_12] = v15.Changed:Connect(function(p16)
            -- upvalues: (copy) p_u_11, (copy) p_u_12, (copy) p_u_14
            p_u_11.externalProperties[p_u_12] = p16
            p_u_14(p_u_11)
        end)
    end
end
function v_u_7.SetAndBoundsCheckAzimuthValues(p17) -- name: SetAndBoundsCheckAzimuthValues
    local v18 = p17.externalProperties.ReferenceAzimuth
    local v19 = math.rad(v18)
    local v20 = p17.externalProperties.CWAzimuthTravel
    local v21 = math.rad(v20)
    p17.minAzimuthAbsoluteRad = v19 - math.abs(v21)
    local v22 = p17.externalProperties.ReferenceAzimuth
    local v23 = math.rad(v22)
    local v24 = p17.externalProperties.CCWAzimuthTravel
    local v25 = math.rad(v24)
    p17.maxAzimuthAbsoluteRad = v23 + math.abs(v25)
    p17.useAzimuthLimits = p17.externalProperties.UseAzimuthLimits
    if p17.useAzimuthLimits then
        local v26 = p17.curAzimuthRad
        local v27 = p17.minAzimuthAbsoluteRad
        p17.curAzimuthRad = math.max(v26, v27)
        local v28 = p17.curAzimuthRad
        local v29 = p17.maxAzimuthAbsoluteRad
        p17.curAzimuthRad = math.min(v28, v29)
    end
end
function v_u_7.SetAndBoundsCheckElevationValues(p30) -- name: SetAndBoundsCheckElevationValues
    local v31 = p30.externalProperties.MinElevation
    local v32 = math.max(v31, -80)
    local v33 = p30.externalProperties.MaxElevation
    local v34 = math.min(v33, 80)
    local v35 = math.min(v32, v34)
    p30.minElevationRad = math.rad(v35)
    local v36 = math.max(v32, v34)
    p30.maxElevationRad = math.rad(v36)
    local v37 = p30.curElevationRad
    local v38 = p30.minElevationRad
    p30.curElevationRad = math.max(v37, v38)
    local v39 = p30.curElevationRad
    local v40 = p30.maxElevationRad
    p30.curElevationRad = math.min(v39, v40)
end
function v_u_7.SetAndBoundsCheckDistanceValues(p41) -- name: SetAndBoundsCheckDistanceValues
    p41.minDistance = p41.externalProperties.MinDistance
    p41.maxDistance = p41.externalProperties.MaxDistance
    local v42 = p41.curDistance
    local v43 = p41.minDistance
    p41.curDistance = math.max(v42, v43)
    local v44 = p41.curDistance
    local v45 = p41.maxDistance
    p41.curDistance = math.min(v44, v45)
end
function v_u_7.LoadNumberValueParameters(p46) -- name: LoadNumberValueParameters
    -- upvalues: (copy) v_u_2
    p46:LoadOrCreateNumberValueParameter("InitialElevation", "NumberValue", nil)
    p46:LoadOrCreateNumberValueParameter("InitialDistance", "NumberValue", nil)
    local v47 = "ReferenceAzimuth"
    local v48 = "NumberValue"
    local v49
    if v_u_2 then
        v49 = p46.SetAndBoundsCheckAzimuthValues
    else
        v49 = p46.SetAndBoundsCheckAzimuthValue
    end
    p46:LoadOrCreateNumberValueParameter(v47, v48, v49)
    p46:LoadOrCreateNumberValueParameter("CWAzimuthTravel", "NumberValue", p46.SetAndBoundsCheckAzimuthValues)
    p46:LoadOrCreateNumberValueParameter("CCWAzimuthTravel", "NumberValue", p46.SetAndBoundsCheckAzimuthValues)
    p46:LoadOrCreateNumberValueParameter("MinElevation", "NumberValue", p46.SetAndBoundsCheckElevationValues)
    p46:LoadOrCreateNumberValueParameter("MaxElevation", "NumberValue", p46.SetAndBoundsCheckElevationValues)
    p46:LoadOrCreateNumberValueParameter("MinDistance", "NumberValue", p46.SetAndBoundsCheckDistanceValues)
    p46:LoadOrCreateNumberValueParameter("MaxDistance", "NumberValue", p46.SetAndBoundsCheckDistanceValues)
    p46:LoadOrCreateNumberValueParameter("UseAzimuthLimits", "BoolValue", p46.SetAndBoundsCheckAzimuthValues)
    local v50 = p46.externalProperties.ReferenceAzimuth
    p46.curAzimuthRad = math.rad(v50)
    local v51 = p46.externalProperties.InitialElevation
    p46.curElevationRad = math.rad(v51)
    p46.curDistance = p46.externalProperties.InitialDistance
    p46:SetAndBoundsCheckAzimuthValues()
    p46:SetAndBoundsCheckElevationValues()
    p46:SetAndBoundsCheckDistanceValues()
end
function v_u_7.GetModuleName(_) -- name: GetModuleName
    return "OrbitalCamera"
end
function v_u_7.SetInitialOrientation(p52, p53) -- name: SetInitialOrientation
    -- upvalues: (copy) v_u_3
    if p53 and p53.RootPart then
        local v54 = p53.RootPart
        assert(v54, "")
        local v55 = (p53.RootPart.CFrame.LookVector - Vector3.new(0, 0.23, 0)).Unit
        local v56 = v_u_3.GetAngleBetweenXZVectors(v55, p52:GetCameraLookVector())
        local v57 = p52:GetCameraLookVector().Y
        local v58 = math.asin(v57)
        local v59 = v55.Y
        local v60 = v58 - math.asin(v59)
        v_u_3.IsFinite(v56)
        v_u_3.IsFinite(v60)
    else
        warn("OrbitalCamera could not set initial orientation due to missing humanoid")
    end
end
function v_u_7.GetCameraToSubjectDistance(p61) -- name: GetCameraToSubjectDistance
    return p61.curDistance
end
function v_u_7.SetCameraToSubjectDistance(p62, p63) -- name: SetCameraToSubjectDistance
    -- upvalues: (copy) v_u_5
    if v_u_5.LocalPlayer then
        local v64 = p62.minDistance
        local v65 = p62.maxDistance
        p62.currentSubjectDistance = math.clamp(p63, v64, v65)
        local v66 = p62.currentSubjectDistance
        local v67 = p62.FIRST_PERSON_DISTANCE_THRESHOLD
        p62.currentSubjectDistance = math.max(v66, v67)
    end
    p62.inFirstPerson = false
    p62:UpdateMouseBehavior()
    return p62.currentSubjectDistance
end
function v_u_7.CalculateNewLookVector(p68, p69, p70) -- name: CalculateNewLookVector
    local v71 = p69 or p68:GetCameraLookVector()
    local v72 = v71.Y
    local v73 = math.asin(v72)
    local v74 = p70.Y
    local v75 = v73 - 1.3962634015954636
    local v76 = v73 - -1.3962634015954636
    local v77 = math.clamp(v74, v75, v76)
    local v78 = Vector2.new(p70.X, v77)
    local v79 = CFrame.new(Vector3.new(0, 0, 0), v71)
    return (CFrame.Angles(0, -v78.X, 0) * v79 * CFrame.Angles(-v78.Y, 0, 0)).LookVector
end
function v_u_7.Update(p80, p81) -- name: Update
    -- upvalues: (copy) v_u_4, (copy) v_u_5
    local v82 = tick()
    local v83 = v82 - p80.lastUpdate
    local v84 = v_u_4.getRotation(p81) ~= Vector2.new()
    local v85 = workspace.CurrentCamera
    local v86 = v85.CFrame
    local v87 = v85.Focus
    local v88 = v_u_5.LocalPlayer
    local v89
    if v85 then
        v89 = v85.CameraSubject
    else
        v89 = v85
    end
    local v90
    if v89 then
        v90 = v89:IsA("VehicleSeat")
    else
        v90 = v89
    end
    local v91
    if v89 then
        v91 = v89:IsA("SkateboardPlatform")
    else
        v91 = v89
    end
    if p80.lastUpdate == nil or v83 > 1 then
        p80.lastCameraTransform = nil
    end
    if v84 then
        p80.lastUserPanCamera = tick()
    end
    local v92 = p80:GetSubjectPosition()
    if v92 and (v88 and v85) then
        if p80.gamepadDollySpeedMultiplier ~= 1 then
            p80:SetCameraToSubjectDistance(p80.currentSubjectDistance * p80.gamepadDollySpeedMultiplier)
        end
        v87 = CFrame.new(v92)
        local v93 = v_u_4.getRotation(p81)
        p80.curAzimuthRad = p80.curAzimuthRad - v93.X
        if p80.useAzimuthLimits then
            local v94 = p80.curAzimuthRad
            local v95 = p80.minAzimuthAbsoluteRad
            local v96 = p80.maxAzimuthAbsoluteRad
            p80.curAzimuthRad = math.clamp(v94, v95, v96)
        else
            local v97
            if p80.curAzimuthRad == 0 then
                v97 = 0
            else
                local v98 = p80.curAzimuthRad
                local v99 = math.sign(v98)
                local v100 = p80.curAzimuthRad
                v97 = v99 * (math.abs(v100) % 6.283185307179586) or 0
            end
            p80.curAzimuthRad = v97
        end
        local v101 = p80.curElevationRad + v93.Y
        local v102 = p80.minElevationRad
        local v103 = p80.maxElevationRad
        p80.curElevationRad = math.clamp(v101, v102, v103)
        local v104 = v92 + p80.currentSubjectDistance * (CFrame.fromEulerAnglesYXZ(-p80.curElevationRad, p80.curAzimuthRad, 0) * Vector3.new(0, 0, 1))
        v86 = CFrame.new(v104, v92)
        p80.lastCameraTransform = v86
        p80.lastCameraFocus = v87
        if (v90 or v91) and v89:IsA("BasePart") then
            p80.lastSubjectCFrame = v89.CFrame
        else
            p80.lastSubjectCFrame = nil
        end
    end
    p80.lastUpdate = v82
    return v86, v87
end
return v_u_7
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.LegacyCamera
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

Vector2.new()
require(script.Parent:WaitForChild("CameraUtils"))
local v_u_1 = require(script.Parent:WaitForChild("CameraInput"))
local v_u_2 = game:GetService("Players")
local v_u_3 = require(script.Parent:WaitForChild("BaseCamera"))
local v_u_4 = setmetatable({}, v_u_3)
v_u_4.__index = v_u_4
function v_u_4.new() -- name: new
    -- upvalues: (copy) v_u_3, (copy) v_u_4
    local v5 = v_u_3.new()
    local v6 = v_u_4
    local v7 = setmetatable(v5, v6)
    v7.cameraType = Enum.CameraType.Fixed
    v7.lastUpdate = tick()
    v7.lastDistanceToSubject = nil
    return v7
end
function v_u_4.GetModuleName(_) -- name: GetModuleName
    return "LegacyCamera"
end
function v_u_4.SetCameraToSubjectDistance(p8, p9) -- name: SetCameraToSubjectDistance
    -- upvalues: (copy) v_u_3
    return v_u_3.SetCameraToSubjectDistance(p8, p9)
end
function v_u_4.Update(p10, p11) -- name: Update
    -- upvalues: (copy) v_u_2, (copy) v_u_1
    if not p10.cameraType then
        return nil, nil
    end
    local v12 = tick()
    local v13 = v12 - p10.lastUpdate
    local v14 = workspace.CurrentCamera
    local v15 = v14.CFrame
    local v16 = v14.Focus
    local v17 = v_u_2.LocalPlayer
    local v18 = v_u_1.getRotation(p11)
    if p10.lastUpdate == nil or v13 > 1 then
        p10.lastDistanceToSubject = nil
    end
    local v19 = p10:GetSubjectPosition()
    if p10.cameraType == Enum.CameraType.Fixed then
        if v19 and (v17 and v14) then
            local v20 = p10:GetCameraToSubjectDistance()
            local v21 = p10:CalculateNewLookVectorFromArg(nil, v18)
            v16 = v14.Focus
            v15 = CFrame.new(v14.CFrame.p, v14.CFrame.p + v20 * v21)
        end
    elseif p10.cameraType == Enum.CameraType.Attach then
        local v22 = p10:GetSubjectCFrame()
        local v23 = v14.CFrame:ToEulerAnglesYXZ()
        local _, v24 = v22:ToEulerAnglesYXZ()
        local v25 = v23 - v18.Y
        local v26 = math.clamp(v25, -1.3962634015954636, 1.3962634015954636)
        v16 = CFrame.new(v22.p) * CFrame.fromEulerAnglesYXZ(v26, v24, 0)
        v15 = v16 * CFrame.new(0, 0, p10:StepZoom())
    else
        if p10.cameraType ~= Enum.CameraType.Watch then
            return v14.CFrame, v14.Focus
        end
        if v19 and (v17 and v14) then
            local v27 = nil
            if v19 == v14.CFrame.p then
                warn("Camera cannot watch subject in same position as itself")
                return v14.CFrame, v14.Focus
            end
            local v28 = p10:GetHumanoid()
            if v28 and v28.RootPart then
                local v29 = v19 - v14.CFrame.p
                v27 = v29.unit
                if p10.lastDistanceToSubject and p10.lastDistanceToSubject == p10:GetCameraToSubjectDistance() then
                    p10:SetCameraToSubjectDistance(v29.magnitude)
                end
            end
            local v30 = p10:GetCameraToSubjectDistance()
            local v31 = p10:CalculateNewLookVectorFromArg(v27, v18)
            v16 = CFrame.new(v19)
            v15 = CFrame.new(v19 - v30 * v31, v19)
            p10.lastDistanceToSubject = v30
        end
    end
    p10.lastUpdate = v12
    return v15, v16
end
return v_u_4
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.ClassicCamera
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

Vector2.new(0, 0)
local v_u_1 = 0
local v_u_2 = CFrame.fromOrientation(-0.2617993877991494, 0, 0)
local v3 = script.Parent.Parent:WaitForChild("CommonUtils")
local v_u_4 = require(v3:WaitForChild("FlagUtil")).getUserFlag("UserFixCameraFPError")
local v_u_5 = game:GetService("Players")
local v_u_6 = require(script.Parent:WaitForChild("CameraInput"))
local v_u_7 = require(script.Parent:WaitForChild("CameraUtils"))
local v_u_8 = require(script.Parent:WaitForChild("BaseCamera"))
local v_u_9 = setmetatable({}, v_u_8)
v_u_9.__index = v_u_9
function v_u_9.new() -- name: new
    -- upvalues: (copy) v_u_8, (copy) v_u_9, (copy) v_u_7
    local v10 = v_u_8.new()
    local v11 = v_u_9
    local v12 = setmetatable(v10, v11)
    v12.isFollowCamera = false
    v12.isCameraToggle = false
    v12.lastUpdate = tick()
    v12.cameraToggleSpring = v_u_7.Spring.new(5, 0)
    return v12
end
function v_u_9.GetCameraToggleOffset(p13, p14) -- name: GetCameraToggleOffset
    -- upvalues: (copy) v_u_6, (copy) v_u_7
    if not p13.isCameraToggle then
        return Vector3.new()
    end
    local v15 = p13.currentSubjectDistance
    if v_u_6.getTogglePan() then
        local v16 = p13.cameraToggleSpring
        local v17 = v_u_7.map(v15, 0.5, p13.FIRST_PERSON_DISTANCE_THRESHOLD, 0, 1)
        v16.goal = math.clamp(v17, 0, 1)
    else
        p13.cameraToggleSpring.goal = 0
    end
    local v18 = v_u_7.map(v15, 0.5, 64, 0, 1)
    local v19 = math.clamp(v18, 0, 1) + 1
    local v20 = p13.cameraToggleSpring:step(p14) * v19
    return Vector3.new(0, v20, 0)
end
function v_u_9.SetCameraMovementMode(p21, p22) -- name: SetCameraMovementMode
    -- upvalues: (copy) v_u_8
    v_u_8.SetCameraMovementMode(p21, p22)
    p21.isFollowCamera = p22 == Enum.ComputerCameraMovementMode.Follow
    p21.isCameraToggle = p22 == Enum.ComputerCameraMovementMode.CameraToggle
end
function v_u_9.Update(p23, p24) -- name: Update
    -- upvalues: (copy) v_u_2, (copy) v_u_5, (copy) v_u_6, (ref) v_u_1, (copy) v_u_7, (copy) v_u_4
    local v25 = tick()
    local v26 = workspace.CurrentCamera
    local v27 = v26.CFrame
    local v28 = v26.Focus
    local v29
    if p23.resetCameraAngle then
        local v30 = p23:GetHumanoidRootPart()
        if v30 then
            v29 = (v30.CFrame * v_u_2).lookVector
        else
            v29 = v_u_2.lookVector
        end
        p23.resetCameraAngle = false
    else
        v29 = nil
    end
    local v31 = v_u_5.LocalPlayer
    local v32 = p23:GetHumanoid()
    local v33 = v26.CameraSubject
    local v34
    if v33 then
        v34 = v33:IsA("VehicleSeat")
    else
        v34 = v33
    end
    local v35
    if v33 then
        v35 = v33:IsA("SkateboardPlatform")
    else
        v35 = v33
    end
    local v36
    if v32 then
        v36 = v32:GetState() == Enum.HumanoidStateType.Climbing
    else
        v36 = v32
    end
    if p23.lastUpdate == nil or p24 > 1 then
        p23.lastCameraTransform = nil
    end
    local v37 = v_u_6.getRotation(p24)
    p23:StepZoom()
    local v38 = p23:GetCameraHeight()
    if v37 ~= Vector2.new() then
        v_u_1 = 0
        p23.lastUserPanCamera = tick()
    end
    local v39 = v25 - p23.lastUserPanCamera < 2
    local v40 = p23:GetSubjectPosition()
    if v40 and (v31 and v26) then
        local v41 = p23:GetCameraToSubjectDistance()
        local v42 = v41 < 0.5 and 0.5 or v41
        if p23:GetIsMouseLocked() and not p23:IsInFirstPerson() then
            local v43 = p23:CalculateNewLookCFrameFromArg(v29, v37)
            local v44 = p23:GetMouseLockOffset()
            if v32 then
                v44 = v44 + v32.CameraOffset
            end
            local v45 = v44.X * v43.RightVector + v44.Y * v43.UpVector + v44.Z * v43.LookVector
            if v_u_7.IsFiniteVector3(v45) then
                v40 = v40 + v45
            end
        elseif v37 == Vector2.new() and p23.lastCameraTransform then
            local v46 = p23:IsInFirstPerson()
            if (v34 or (v35 or p23.isFollowCamera and v36)) and (p23.lastUpdate and (v32 and v32.Torso)) then
                if v46 then
                    if p23.lastSubjectCFrame and (v34 or v35) and v33:IsA("BasePart") then
                        local v47 = -v_u_7.GetAngleBetweenXZVectors(p23.lastSubjectCFrame.lookVector, v33.CFrame.lookVector)
                        if v_u_7.IsFinite(v47) then
                            v37 = v37 + Vector2.new(v47, 0)
                        end
                        v_u_1 = 0
                    end
                elseif not v39 then
                    local v48 = v32.Torso.CFrame.lookVector
                    local v49 = v_u_1 + 3.839724354387525 * p24
                    v_u_1 = math.clamp(v49, 0, 4.363323129985824)
                    local v50 = v_u_1 * p24
                    local v51 = math.clamp(v50, 0, 1)
                    local v52 = p23:IsInFirstPerson() and not (p23.isFollowCamera and p23.isClimbing) and 1 or v51
                    local v53 = v_u_7.GetAngleBetweenXZVectors(v48, p23:GetCameraLookVector())
                    if v_u_7.IsFinite(v53) and math.abs(v53) > 0.0001 then
                        v37 = v37 + Vector2.new(v53 * v52, 0)
                    end
                end
            elseif p23.isFollowCamera and not (v46 or v39) then
                local v54 = -(p23.lastCameraTransform.p - v40)
                local v55 = v_u_7.GetAngleBetweenXZVectors(v54, p23:GetCameraLookVector())
                if v_u_7.IsFinite(v55) and (math.abs(v55) > 0.0001 and math.abs(v55) > 0.4 * p24) then
                    v37 = v37 + Vector2.new(v55, 0)
                end
            end
        end
        local v56, v57
        if p23.isFollowCamera then
            local v58 = p23:CalculateNewLookVectorFromArg(v29, v37)
            v56 = CFrame.new(v40)
            if v_u_4 then
                v57 = CFrame.lookAlong(v56.p - v42 * v58, v58)
            else
                v57 = CFrame.new(v56.p - v42 * v58, v56.p) + Vector3.new(0, v38, 0)
            end
        else
            v56 = CFrame.new(v40)
            local v59 = v56.p
            local v60 = p23:CalculateNewLookVectorFromArg(v29, v37)
            if v_u_4 then
                v57 = CFrame.lookAlong(v59 - v42 * v60, v60)
            else
                v57 = CFrame.new(v59 - v42 * v60, v59)
            end
        end
        local v61 = p23:GetCameraToggleOffset(p24)
        v28 = v56 + v61
        v27 = v57 + v61
        p23.lastCameraTransform = v27
        p23.lastCameraFocus = v28
        if (v34 or v35) and v33:IsA("BasePart") then
            p23.lastSubjectCFrame = v33.CFrame
        else
            p23.lastSubjectCFrame = nil
        end
    end
    p23.lastUpdate = v25
    return v27, v28
end
return v_u_9
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.CameraUtils
-- Took 0.02s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = game:GetService("Players")
local v_u_2 = game:GetService("UserInputService")
local v_u_3 = UserSettings():GetService("UserGameSettings")
local v_u_4 = {}
local v_u_5 = {}
v_u_5.__index = v_u_5
function v_u_5.new(p6, p7) -- name: new
    -- upvalues: (copy) v_u_5
    local v8 = v_u_5
    return setmetatable({
        ["freq"] = nil,
        ["goal"] = nil,
        ["pos"] = nil,
        ["vel"] = 0,
        ["freq"] = p6,
        ["goal"] = p7,
        ["pos"] = p7
    }, v8)
end
function v_u_5.step(p9, p10) -- name: step
    local v11 = p9.freq * 2 * 3.141592653589793
    local v12 = p9.goal
    local v13 = p9.pos
    local v14 = p9.vel
    local v15 = v13 - v12
    local v16 = -v11 * p10
    local v17 = math.exp(v16)
    local v18 = (v15 * (v11 * p10 + 1) + v14 * p10) * v17 + v12
    local v19 = (v14 * (1 - v11 * p10) - v15 * (v11 * v11 * p10)) * v17
    p9.pos = v18
    p9.vel = v19
    return v18
end
v_u_4.Spring = v_u_5
function v_u_4.map(p20, p21, p22, p23, p24) -- name: map
    return (p20 - p21) * (p24 - p23) / (p22 - p21) + p23
end
function v_u_4.mapClamp(p25, p26, p27, p28, p29) -- name: mapClamp
    local v30 = (p25 - p26) * (p29 - p28) / (p27 - p26) + p28
    local v31 = math.min(p28, p29)
    local v32 = math.max(p28, p29)
    return math.clamp(v30, v31, v32)
end
function v_u_4.getLooseBoundingSphere(p33) -- name: getLooseBoundingSphere
    local v34 = table.create(#p33)
    for v35, v36 in pairs(p33) do
        v34[v35] = v36.Position
    end
    local v37 = v34[1]
    local v38 = v37
    local v39 = 0
    for _, v40 in ipairs(v34) do
        local v41 = (v40 - v37).Magnitude
        if v39 < v41 then
            v38 = v40
            v39 = v41
        end
    end
    local v42 = v38
    local v43 = 0
    for _, v44 in ipairs(v34) do
        local v45 = (v44 - v38).Magnitude
        if v43 < v45 then
            v42 = v44
            v43 = v45
        end
    end
    local v46 = (v38 + v42) * 0.5
    local v47 = (v38 - v42).Magnitude * 0.5
    for _, v48 in ipairs(v34) do
        local v49 = (v48 - v46).Magnitude
        if v47 < v49 then
            v46 = v46 + (v49 - v47) * 0.5 * (v48 - v46).Unit
            v47 = (v49 + v47) * 0.5
        end
    end
    return v46, v47
end
function v_u_4.sanitizeAngle(p50) -- name: sanitizeAngle
    return (p50 + 3.141592653589793) % 6.283185307179586 - 3.141592653589793
end
function v_u_4.Round(p51, p52) -- name: Round
    local v53 = 10 ^ p52
    local v54 = p51 * v53 + 0.5
    return math.floor(v54) / v53
end
function v_u_4.IsFinite(p55) -- name: IsFinite
    local v56
    if p55 == p55 and p55 ~= (1 / 0) then
        v56 = p55 ~= (-1 / 0)
    else
        v56 = false
    end
    return v56
end
function v_u_4.IsFiniteVector3(p57) -- name: IsFiniteVector3
    -- upvalues: (copy) v_u_4
    local v58 = v_u_4.IsFinite(p57.X) and v_u_4.IsFinite(p57.Y)
    if v58 then
        v58 = v_u_4.IsFinite(p57.Z)
    end
    return v58
end
function v_u_4.GetAngleBetweenXZVectors(p59, p60) -- name: GetAngleBetweenXZVectors
    local v61 = p60.X * p59.Z - p60.Z * p59.X
    local v62 = p60.X * p59.X + p60.Z * p59.Z
    return math.atan2(v61, v62)
end
function v_u_4.RotateVectorByAngleAndRound(p63, p64, p65) -- name: RotateVectorByAngleAndRound
    if p63.Magnitude <= 0 then
        return 0
    end
    local v66 = p63.Unit
    local v67 = v66.Z
    local v68 = v66.X
    local v69 = math.atan2(v67, v68)
    local v70 = v66.Z
    local v71 = v66.X
    local v72 = (math.atan2(v70, v71) + p64) / p65 + 0.5
    return math.floor(v72) * p65 - v69
end
function v_u_4.GamepadLinearToCurve(p73) -- name: GamepadLinearToCurve
    local v74 = Vector2.new
    local v75 = p73.X
    local v76 = v75 < 0 and -1 or 1
    local v77 = math.abs(v75)
    local v78 = (math.abs(v77) * 2 - 1) * 1.1 - 0.1
    local v79 = math.clamp(v78, -1, 1)
    local v80
    if v79 >= 0 then
        v80 = v79 * 0.35 / (0.35 - v79 + 1)
    else
        v80 = -(-v79 * 0.8 / (v79 + 0.8 + 1))
    end
    local v81 = (v80 / 2 + 0.5) * v76
    local v82 = math.clamp(v81, -1, 1)
    local v83 = p73.Y
    local v84 = v83 < 0 and -1 or 1
    local v85 = math.abs(v83)
    local v86 = (math.abs(v85) * 2 - 1) * 1.1 - 0.1
    local v87 = math.clamp(v86, -1, 1)
    local v88
    if v87 >= 0 then
        v88 = v87 * 0.35 / (0.35 - v87 + 1)
    else
        v88 = -(-v87 * 0.8 / (v87 + 0.8 + 1))
    end
    local v89 = (v88 / 2 + 0.5) * v84
    return v74(v82, (math.clamp(v89, -1, 1)))
end
function v_u_4.ConvertCameraModeEnumToStandard(p90) -- name: ConvertCameraModeEnumToStandard
    if p90 == Enum.TouchCameraMovementMode.Default then
        return Enum.ComputerCameraMovementMode.Follow
    elseif p90 == Enum.ComputerCameraMovementMode.Default then
        return Enum.ComputerCameraMovementMode.Classic
    elseif p90 == Enum.TouchCameraMovementMode.Classic or (p90 == Enum.DevTouchCameraMovementMode.Classic or (p90 == Enum.DevComputerCameraMovementMode.Classic or p90 == Enum.ComputerCameraMovementMode.Classic)) then
        return Enum.ComputerCameraMovementMode.Classic
    elseif p90 == Enum.TouchCameraMovementMode.Follow or (p90 == Enum.DevTouchCameraMovementMode.Follow or (p90 == Enum.DevComputerCameraMovementMode.Follow or p90 == Enum.ComputerCameraMovementMode.Follow)) then
        return Enum.ComputerCameraMovementMode.Follow
    elseif p90 == Enum.TouchCameraMovementMode.Orbital or (p90 == Enum.DevTouchCameraMovementMode.Orbital or (p90 == Enum.DevComputerCameraMovementMode.Orbital or p90 == Enum.ComputerCameraMovementMode.Orbital)) then
        return Enum.ComputerCameraMovementMode.Orbital
    elseif p90 == Enum.ComputerCameraMovementMode.CameraToggle or p90 == Enum.DevComputerCameraMovementMode.CameraToggle then
        return Enum.ComputerCameraMovementMode.CameraToggle
    elseif p90 == Enum.DevTouchCameraMovementMode.UserChoice or p90 == Enum.DevComputerCameraMovementMode.UserChoice then
        return Enum.DevComputerCameraMovementMode.UserChoice
    else
        return Enum.ComputerCameraMovementMode.Classic
    end
end
local v_u_91 = ""
local v_u_92 = nil
function v_u_4.setMouseIconOverride(p93) -- name: setMouseIconOverride
    -- upvalues: (copy) v_u_1, (ref) v_u_92, (ref) v_u_91
    local v94 = v_u_1.LocalPlayer
    if not v94 then
        v_u_1:GetPropertyChangedSignal("LocalPlayer"):Wait()
        v94 = v_u_1.LocalPlayer
    end
    assert(v94)
    local v95 = v94:GetMouse()
    if v95.Icon ~= v_u_92 then
        v_u_91 = v95.Icon
    end
    v95.Icon = p93
    v_u_92 = p93
end
function v_u_4.restoreMouseIcon() -- name: restoreMouseIcon
    -- upvalues: (copy) v_u_1, (ref) v_u_92, (ref) v_u_91
    local v96 = v_u_1.LocalPlayer
    if not v96 then
        v_u_1:GetPropertyChangedSignal("LocalPlayer"):Wait()
        v96 = v_u_1.LocalPlayer
    end
    assert(v96)
    local v97 = v96:GetMouse()
    if v97.Icon == v_u_92 then
        v97.Icon = v_u_91
    end
    v_u_92 = nil
end
local v_u_98 = Enum.MouseBehavior.Default
local v_u_99 = nil
function v_u_4.setMouseBehaviorOverride(p100) -- name: setMouseBehaviorOverride
    -- upvalues: (copy) v_u_2, (ref) v_u_99, (ref) v_u_98
    if v_u_2.MouseBehavior ~= v_u_99 then
        v_u_98 = v_u_2.MouseBehavior
    end
    v_u_2.MouseBehavior = p100
    v_u_99 = p100
end
function v_u_4.restoreMouseBehavior() -- name: restoreMouseBehavior
    -- upvalues: (copy) v_u_2, (ref) v_u_99, (ref) v_u_98
    if v_u_2.MouseBehavior == v_u_99 then
        v_u_2.MouseBehavior = v_u_98
    end
    v_u_99 = nil
end
local v_u_101 = Enum.RotationType.MovementRelative
local v_u_102 = nil
function v_u_4.setRotationTypeOverride(p103) -- name: setRotationTypeOverride
    -- upvalues: (copy) v_u_3, (ref) v_u_102, (ref) v_u_101
    if v_u_3.RotationType ~= v_u_102 then
        v_u_101 = v_u_3.RotationType
    end
    v_u_3.RotationType = p103
    v_u_102 = p103
end
function v_u_4.restoreRotationType() -- name: restoreRotationType
    -- upvalues: (copy) v_u_3, (ref) v_u_102, (ref) v_u_101
    if v_u_3.RotationType == v_u_102 then
        v_u_3.RotationType = v_u_101
    end
    v_u_102 = nil
end
return v_u_4
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.CameraUI
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = game:GetService("StarterGui")
local v_u_2 = false
local v_u_6 = {
    ["setCameraModeToastEnabled"] = function(p3) -- name: setCameraModeToastEnabled
        -- upvalues: (ref) v_u_2, (copy) v_u_6
        if p3 or v_u_2 then
            if not v_u_2 then
                v_u_2 = true
            end
            if not p3 then
                v_u_6.setCameraModeToastOpen(false)
            end
        end
    end,
    ["setCameraModeToastOpen"] = function(p4) -- name: setCameraModeToastOpen
        -- upvalues: (ref) v_u_2, (copy) v_u_1
        local v5 = v_u_2
        assert(v5)
        if p4 then
            v_u_1:SetCore("SendNotification", {
                ["Title"] = "Camera Control Enabled",
                ["Text"] = "Right click to toggle",
                ["Duration"] = 3
            })
        end
    end
}
return v_u_6
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.CameraToggleStateController
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

game:GetService("Players")
game:GetService("UserInputService")
UserSettings():GetService("UserGameSettings")
local v_u_1 = require(script.Parent:WaitForChild("CameraInput"))
local v_u_2 = require(script.Parent:WaitForChild("CameraUI"))
local v_u_3 = require(script.Parent:WaitForChild("CameraUtils"))
local v_u_4 = false
local v_u_5 = tick()
local v_u_6 = false
local v_u_7 = false
local v_u_8 = false
v_u_2.setCameraModeToastEnabled(false)
return function(p9)
    -- upvalues: (copy) v_u_1, (ref) v_u_4, (ref) v_u_6, (ref) v_u_5, (copy) v_u_2, (ref) v_u_8, (ref) v_u_7, (copy) v_u_3
    local v10 = v_u_1.getTogglePan()
    if p9 and v10 ~= v_u_4 then
        v_u_6 = true
    end
    if v_u_4 ~= v10 or tick() - v_u_5 > 3 then
        local v11
        if v10 then
            v11 = tick() - v_u_5 < 3
        else
            v11 = v10
        end
        v_u_2.setCameraModeToastOpen(v11)
        if v10 then
            v_u_6 = false
        end
        v_u_5 = tick()
        v_u_4 = v10
    end
    if p9 ~= v_u_8 then
        if p9 then
            v_u_7 = v_u_1.getTogglePan()
            v_u_1.setTogglePan(true)
        elseif not v_u_6 then
            v_u_1.setTogglePan(v_u_7)
        end
    end
    if p9 then
        if v_u_1.getTogglePan() then
            v_u_3.setMouseIconOverride("rbxasset://textures/Cursors/CrossMouseIcon.png")
            v_u_3.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
            v_u_3.setRotationTypeOverride(Enum.RotationType.CameraRelative)
        else
            v_u_3.restoreMouseIcon()
            v_u_3.restoreMouseBehavior()
            v_u_3.setRotationTypeOverride(Enum.RotationType.CameraRelative)
        end
    elseif v_u_1.getTogglePan() then
        v_u_3.setMouseIconOverride("rbxasset://textures/Cursors/CrossMouseIcon.png")
        v_u_3.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
        v_u_3.setRotationTypeOverride(Enum.RotationType.MovementRelative)
    elseif v_u_1.getHoldPan() then
        v_u_3.restoreMouseIcon()
        v_u_3.setMouseBehaviorOverride(Enum.MouseBehavior.LockCurrentPosition)
        v_u_3.setRotationTypeOverride(Enum.RotationType.MovementRelative)
    else
        v_u_3.restoreMouseIcon()
        v_u_3.restoreMouseBehavior()
        v_u_3.restoreRotationType()
    end
    v_u_8 = p9
end
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.CameraInput
-- Took 0.02s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = game:GetService("ContextActionService")
local v_u_2 = game:GetService("UserInputService")
local v3 = game:GetService("Players")
game:GetService("RunService")
local v_u_4 = UserSettings():GetService("UserGameSettings")
local v_u_5 = game:GetService("VRService")
local v_u_6 = game:GetService("GuiService")
local v7 = script.Parent.Parent:WaitForChild("CommonUtils")
local v8 = require(v7:WaitForChild("FlagUtil"))
local v_u_9 = v8.getUserFlag("UserPSSinkUnknownTouchEvents")
local v10 = v8.getUserFlag("UserPSTextboxResetCameraInput")
local v11 = v8.getUserFlag("UserFixVRCameraGamepadReset")
local v_u_12 = v3.LocalPlayer
local v_u_13 = Enum.ContextActionPriority.Medium.Value
local v_u_14 = Vector2.new(1, 0.77) * 0.06981317007977318 * 60
local v_u_15 = Vector2.new(1, 0.77) * 0.008726646259971648
local v_u_16 = Vector2.new(1, 0.77) * 0.12217304763960307
local v_u_17 = Vector2.new(1, 0.66) * 0.017453292519943295
local v_u_18 = Instance.new("BindableEvent")
local v_u_19 = Instance.new("BindableEvent")
local v_u_20 = v_u_18.Event
local v_u_21 = v_u_19.Event
v_u_2.InputBegan:Connect(function(p22, p23)
    -- upvalues: (copy) v_u_18
    if not p23 and p22.UserInputType == Enum.UserInputType.MouseButton2 then
        v_u_18:Fire()
    end
end)
v_u_2.InputEnded:Connect(function(p24, _)
    -- upvalues: (copy) v_u_19
    if p24.UserInputType == Enum.UserInputType.MouseButton2 then
        v_u_19:Fire()
    end
end)
local function v_u_28(p25) -- name: thumbstickCurve
    local v26 = (math.abs(p25) - 0.1) / 0.9 * 2
    local v27 = (math.exp(v26) - 1) / 6.38905609893065
    return math.sign(p25) * math.clamp(v27, 0, 1)
end
local function v_u_33(p29) -- name: adjustTouchPitchSensitivity
    local v30 = workspace.CurrentCamera
    if not v30 then
        return p29
    end
    local v31 = v30.CFrame:ToEulerAnglesYXZ()
    if p29.Y * v31 >= 0 then
        return p29
    end
    local v32 = (1 - (math.abs(v31) * 2 / 3.141592653589793) ^ 0.75) * 0.75 + 0.25
    return Vector2.new(1, v32) * p29
end
local function v_u_40(p34) -- name: isInDynamicThumbstickArea
    -- upvalues: (copy) v_u_12
    local v35 = v_u_12:FindFirstChildOfClass("PlayerGui")
    if v35 then
        v35 = v35:FindFirstChild("TouchGui")
    end
    local v36
    if v35 then
        v36 = v35:FindFirstChild("TouchControlFrame")
    else
        v36 = v35
    end
    if v36 then
        v36 = v36:FindFirstChild("DynamicThumbstickFrame")
    end
    if not v36 then
        return false
    end
    if not v35.Enabled then
        return false
    end
    local v37 = v36.AbsolutePosition
    local v38 = v37 + v36.AbsoluteSize
    local v39
    if p34.X >= v37.X and (p34.Y >= v37.Y and p34.X <= v38.X) then
        v39 = p34.Y <= v38.Y
    else
        v39 = false
    end
    return v39
end
local v41 = {}
local v_u_42 = {}
local v_u_43 = 0
local v_u_44 = {
    ["Thumbstick2"] = Vector2.new()
}
local v_u_45 = {
    ["Left"] = 0,
    ["Right"] = 0,
    ["I"] = 0,
    ["O"] = 0
}
local v_u_46 = {
    ["Movement"] = nil,
    ["Wheel"] = 0,
    ["Pan"] = nil,
    ["Pinch"] = 0,
    ["Movement"] = Vector2.new(),
    ["Pan"] = Vector2.new()
}
local v_u_47 = {
    ["Move"] = nil,
    ["Pinch"] = 0,
    ["Move"] = Vector2.new()
}
local v_u_48 = Instance.new("BindableEvent")
v41.gamepadZoomPress = v_u_48.Event
local v_u_49
if v11 then
    v_u_49 = Instance.new("BindableEvent")
    v41.gamepadReset = v_u_49.Event
else
    v_u_49 = v_u_5.VREnabled and Instance.new("BindableEvent") or nil
    if v_u_5.VREnabled then
        v41.gamepadReset = v_u_49.Event
    end
end
function v41.getRotationActivated() -- name: getRotationActivated
    -- upvalues: (ref) v_u_43, (copy) v_u_44
    return v_u_43 > 0 and true or v_u_44.Thumbstick2.Magnitude > 0
end
function v41.getRotation(p50, p51) -- name: getRotation
    -- upvalues: (copy) v_u_4, (copy) v_u_45, (copy) v_u_44, (copy) v_u_46, (copy) v_u_33, (copy) v_u_47, (copy) v_u_14, (copy) v_u_15, (copy) v_u_16, (copy) v_u_17
    local v52 = Vector2.new(1, v_u_4:GetCameraYInvertValue())
    local v53 = Vector2.new(v_u_45.Right - v_u_45.Left, 0) * p50
    local v54 = v_u_44.Thumbstick2 * v_u_4.GamepadCameraSensitivity * p50
    local v55 = v_u_46.Movement
    local v56 = v_u_46.Pan
    local v57 = v_u_33(v_u_47.Move)
    if p51 then
        v53 = Vector2.new()
    end
    return (v53 * 2.0943951023931953 + v54 * v_u_14 + v55 * v_u_15 + v56 * v_u_16 + v57 * v_u_17) * v52
end
function v41.getZoomDelta() -- name: getZoomDelta
    -- upvalues: (copy) v_u_45, (copy) v_u_46, (copy) v_u_47
    local v58 = v_u_45.O - v_u_45.I
    local v59 = -v_u_46.Wheel + v_u_46.Pinch
    local v60 = -v_u_47.Pinch
    return v58 * 0.1 + v59 * 1 + v60 * 0.04
end
local function v_u_63(_, _, p61) -- name: thumbstick
    -- upvalues: (copy) v_u_44, (ref) v_u_28
    local v62 = p61.Position
    v_u_44[p61.KeyCode.Name] = Vector2.new(v_u_28(v62.X), -v_u_28(v62.Y))
    return Enum.ContextActionResult.Pass
end
local function v_u_66(_, p64, p65) -- name: keypress
    -- upvalues: (copy) v_u_45
    v_u_45[p65.KeyCode.Name] = p64 == Enum.UserInputState.Begin and 1 or 0
end
local function v_u_68(_, p67, _) -- name: gamepadZoomPress
    -- upvalues: (copy) v_u_48
    if p67 == Enum.UserInputState.Begin then
        v_u_48:Fire()
    end
end
local function v_u_70(_, p69, _) -- name: gamepadReset
    -- upvalues: (ref) v_u_49
    if p69 == Enum.UserInputState.Begin then
        v_u_49:Fire()
    end
end
local function v_u_75() -- name: resetInputDevices
    -- upvalues: (copy) v_u_44, (copy) v_u_45, (copy) v_u_46, (copy) v_u_47, (ref) v_u_43
    local v71 = {
        v_u_44,
        v_u_45,
        v_u_46,
        v_u_47
    }
    for _, v72 in pairs(v71) do
        for v73, v74 in pairs(v72) do
            if type(v74) == "boolean" then
                v72[v73] = false
            else
                v72[v73] = v72[v73] * 0
            end
        end
    end
    v_u_43 = 0
end
local v_u_76 = {}
local v_u_77 = nil
local v_u_78 = nil
local function v_u_84(p79, p80) -- name: touchBegan
    -- upvalues: (ref) v_u_77, (copy) v_u_40, (ref) v_u_43, (ref) v_u_76
    local v81 = p79.UserInputType == Enum.UserInputType.Touch
    assert(v81)
    local v82 = p79.UserInputState == Enum.UserInputState.Begin
    assert(v82)
    if v_u_77 == nil and (v_u_40(p79.Position) and not p80) then
        v_u_77 = p79
    else
        if not p80 then
            local v83 = v_u_43 + 1
            v_u_43 = math.max(0, v83)
        end
        v_u_76[p79] = p80
    end
end
local function v_u_89(p85, _) -- name: touchEnded
    -- upvalues: (ref) v_u_77, (ref) v_u_76, (ref) v_u_78, (ref) v_u_43
    local v86 = p85.UserInputType == Enum.UserInputType.Touch
    assert(v86)
    local v87 = p85.UserInputState == Enum.UserInputState.End
    assert(v87)
    if p85 == v_u_77 then
        v_u_77 = nil
    end
    if v_u_76[p85] == false then
        v_u_78 = nil
        local v88 = v_u_43 - 1
        v_u_43 = math.max(0, v88)
    end
    v_u_76[p85] = nil
end
local function v_u_101(p90, p91) -- name: touchChanged
    -- upvalues: (ref) v_u_77, (ref) v_u_76, (copy) v_u_9, (copy) v_u_47, (ref) v_u_78
    local v92 = p90.UserInputType == Enum.UserInputType.Touch
    assert(v92)
    local v93 = p90.UserInputState == Enum.UserInputState.Change
    assert(v93)
    if p90 == v_u_77 then
        return
    else
        if v_u_76[p90] == nil then
            if v_u_9 then
                v_u_76[p90] = true
            else
                v_u_76[p90] = p91
            end
        end
        local v94 = {}
        for v95, v96 in pairs(v_u_76) do
            if not v96 then
                table.insert(v94, v95)
            end
        end
        if #v94 == 1 and v_u_76[p90] == false then
            local v97 = p90.Delta
            local v98 = v_u_47
            v98.Move = v98.Move + Vector2.new(v97.X, v97.Y)
        end
        if #v94 == 2 then
            local v99 = (v94[1].Position - v94[2].Position).Magnitude
            if v_u_78 then
                local v100 = v_u_47
                v100.Pinch = v100.Pinch + (v99 - v_u_78)
            end
            v_u_78 = v99
        else
            v_u_78 = nil
        end
    end
end
local function v_u_102() -- name: resetTouchState
    -- upvalues: (ref) v_u_76, (ref) v_u_77, (ref) v_u_78, (ref) v_u_43
    v_u_76 = {}
    v_u_77 = nil
    v_u_78 = nil
    v_u_43 = 0
end
local function v_u_107(p103, p104, p105, p106) -- name: pointerAction
    -- upvalues: (copy) v_u_46
    if not p106 then
        v_u_46.Wheel = p103
        v_u_46.Pan = p104
        v_u_46.Pinch = -p105
    end
end
local function v_u_111(p108, p109) -- name: inputBegan
    -- upvalues: (ref) v_u_84, (ref) v_u_43
    if p108.UserInputType == Enum.UserInputType.Touch then
        v_u_84(p108, p109)
    elseif p108.UserInputType == Enum.UserInputType.MouseButton2 and not p109 then
        local v110 = v_u_43 + 1
        v_u_43 = math.max(0, v110)
    end
end
local function v_u_115(p112, p113) -- name: inputChanged
    -- upvalues: (ref) v_u_101, (copy) v_u_46
    if p112.UserInputType == Enum.UserInputType.Touch then
        v_u_101(p112, p113)
    elseif p112.UserInputType == Enum.UserInputType.MouseMovement then
        local v114 = p112.Delta
        v_u_46.Movement = Vector2.new(v114.X, v114.Y)
    end
end
local function v_u_119(p116, p117) -- name: inputEnded
    -- upvalues: (ref) v_u_89, (ref) v_u_43
    if p116.UserInputType == Enum.UserInputType.Touch then
        v_u_89(p116, p117)
    elseif p116.UserInputType == Enum.UserInputType.MouseButton2 then
        local v118 = v_u_43 - 1
        v_u_43 = math.max(0, v118)
    end
end
local v_u_120 = false
function v41.setInputEnabled(p121) -- name: setInputEnabled
    -- upvalues: (ref) v_u_120, (copy) v_u_75, (ref) v_u_102, (copy) v_u_1, (copy) v_u_63, (copy) v_u_13, (copy) v_u_66, (copy) v_u_5, (copy) v_u_70, (copy) v_u_68, (ref) v_u_42, (copy) v_u_2, (copy) v_u_111, (copy) v_u_115, (copy) v_u_119, (copy) v_u_107, (copy) v_u_6
    if v_u_120 == p121 then
        return
    else
        v_u_120 = p121
        v_u_75()
        v_u_102()
        if v_u_120 then
            v_u_1:BindActionAtPriority("RbxCameraThumbstick", v_u_63, false, v_u_13, Enum.KeyCode.Thumbstick2)
            v_u_1:BindActionAtPriority("RbxCameraKeypress", v_u_66, false, v_u_13, Enum.KeyCode.Left, Enum.KeyCode.Right, Enum.KeyCode.I, Enum.KeyCode.O)
            if v_u_5.VREnabled then
                v_u_1:BindAction("RbxCameraGamepadReset", v_u_70, false, Enum.KeyCode.ButtonL3)
            end
            v_u_1:BindAction("RbxCameraGamepadZoom", v_u_68, false, Enum.KeyCode.ButtonR3)
            local v122 = v_u_42
            local v123 = v_u_2.InputBegan
            local v124 = v_u_111
            table.insert(v122, v123:Connect(v124))
            local v125 = v_u_42
            local v126 = v_u_2.InputChanged
            local v127 = v_u_115
            table.insert(v125, v126:Connect(v127))
            local v128 = v_u_42
            local v129 = v_u_2.InputEnded
            local v130 = v_u_119
            table.insert(v128, v129:Connect(v130))
            local v131 = v_u_42
            local v132 = v_u_2.PointerAction
            local v133 = v_u_107
            table.insert(v131, v132:Connect(v133))
            local v134 = v_u_42
            local v135 = v_u_6.MenuOpened
            local v136 = v_u_102
            table.insert(v134, v135:connect(v136))
        else
            v_u_1:UnbindAction("RbxCameraThumbstick")
            v_u_1:UnbindAction("RbxCameraMouseMove")
            v_u_1:UnbindAction("RbxCameraMouseWheel")
            v_u_1:UnbindAction("RbxCameraKeypress")
            v_u_1:UnbindAction("RbxCameraGamepadZoom")
            if v_u_5.VREnabled then
                v_u_1:UnbindAction("RbxCameraGamepadReset")
            end
            for _, v137 in pairs(v_u_42) do
                v137:Disconnect()
            end
            v_u_42 = {}
        end
    end
end
function v41.getInputEnabled() -- name: getInputEnabled
    -- upvalues: (ref) v_u_120
    return v_u_120
end
function v41.resetInputForFrameEnd() -- name: resetInputForFrameEnd
    -- upvalues: (copy) v_u_46, (copy) v_u_47
    v_u_46.Movement = Vector2.new()
    v_u_47.Move = Vector2.new()
    v_u_47.Pinch = 0
    v_u_46.Wheel = 0
    v_u_46.Pan = Vector2.new()
    v_u_46.Pinch = 0
end
v_u_2.WindowFocused:Connect(v_u_75)
v_u_2.WindowFocusReleased:Connect(v_u_75)
if v10 then
    v_u_2.TextBoxFocusReleased:Connect(v_u_75)
end
local v_u_138 = false
local v_u_139 = false
local v_u_140 = 0
function v41.getHoldPan() -- name: getHoldPan
    -- upvalues: (ref) v_u_138
    return v_u_138
end
function v41.getTogglePan() -- name: getTogglePan
    -- upvalues: (ref) v_u_139
    return v_u_139
end
function v41.getPanning() -- name: getPanning
    -- upvalues: (ref) v_u_139, (ref) v_u_138
    return v_u_139 or v_u_138
end
function v41.setTogglePan(p141) -- name: setTogglePan
    -- upvalues: (ref) v_u_139
    v_u_139 = p141
end
local v_u_142 = false
local v_u_143 = nil
local v_u_144 = nil
function v41.enableCameraToggleInput() -- name: enableCameraToggleInput
    -- upvalues: (ref) v_u_142, (ref) v_u_138, (ref) v_u_139, (ref) v_u_143, (ref) v_u_144, (ref) v_u_20, (ref) v_u_140, (ref) v_u_21, (copy) v_u_2
    if not v_u_142 then
        v_u_142 = true
        v_u_138 = false
        v_u_139 = false
        if v_u_143 then
            v_u_143:Disconnect()
        end
        if v_u_144 then
            v_u_144:Disconnect()
        end
        v_u_143 = v_u_20:Connect(function()
            -- upvalues: (ref) v_u_138, (ref) v_u_140
            v_u_138 = true
            v_u_140 = tick()
        end)
        v_u_144 = v_u_21:Connect(function()
            -- upvalues: (ref) v_u_138, (ref) v_u_140, (ref) v_u_139, (ref) v_u_2
            v_u_138 = false
            if tick() - v_u_140 < 0.3 and (v_u_139 or v_u_2:GetMouseDelta().Magnitude < 2) then
                v_u_139 = not v_u_139
            end
        end)
    end
end
function v41.disableCameraToggleInput() -- name: disableCameraToggleInput
    -- upvalues: (ref) v_u_142, (ref) v_u_143, (ref) v_u_144
    if v_u_142 then
        v_u_142 = false
        if v_u_143 then
            v_u_143:Disconnect()
            v_u_143 = nil
        end
        if v_u_144 then
            v_u_144:Disconnect()
            v_u_144 = nil
        end
    end
end
return v41
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule.BaseCamera
-- Took 0.02s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = game:GetService("Players")
game:GetService("UserInputService")
local v_u_2 = game:GetService("VRService")
local v_u_3 = UserSettings():GetService("UserGameSettings")
local v4 = script.Parent.Parent:WaitForChild("CommonUtils")
local v_u_5 = require(v4:WaitForChild("ConnectionUtil"))
require(v4:WaitForChild("FlagUtil"))
local v_u_6 = require(script.Parent:WaitForChild("CameraUtils"))
local v_u_7 = require(script.Parent:WaitForChild("ZoomController"))
local v_u_8 = require(script.Parent:WaitForChild("CameraToggleStateController"))
local v_u_9 = require(script.Parent:WaitForChild("CameraInput"))
local v_u_10 = require(script.Parent:WaitForChild("CameraUI"))
local v_u_11 = v1.LocalPlayer
Vector2.new(0, 0)
local v_u_12 = {}
v_u_12.__index = v_u_12
function v_u_12.new() -- name: new
    -- upvalues: (copy) v_u_12, (copy) v_u_5, (copy) v_u_11, (copy) v_u_3
    local v13 = v_u_12
    local v14 = setmetatable({}, v13)
    v14._connections = v_u_5.new()
    v14.gamepadZoomLevels = { 0, 10, 20 }
    v14.FIRST_PERSON_DISTANCE_THRESHOLD = 1
    v14.cameraType = nil
    v14.cameraMovementMode = nil
    v14.lastCameraTransform = nil
    v14.lastUserPanCamera = tick()
    v14.humanoidRootPart = nil
    v14.humanoidCache = {}
    v14.lastSubject = nil
    v14.lastSubjectPosition = Vector3.new(0, 5, 0)
    v14.lastSubjectCFrame = CFrame.new(v14.lastSubjectPosition)
    local v15 = v_u_11.CameraMinZoomDistance
    local v16 = v_u_11.CameraMaxZoomDistance
    v14.currentSubjectDistance = math.clamp(12.5, v15, v16)
    v14.inFirstPerson = false
    v14.inMouseLockedMode = false
    v14.resetCameraAngle = true
    v14.enabled = false
    v14.cameraChangedConn = nil
    v14.shouldUseVRRotation = false
    v14.VRRotationIntensityAvailable = false
    v14.lastVRRotationIntensityCheckTime = 0
    v14.lastVRRotationTime = 0
    v14.vrRotateKeyCooldown = {}
    v14.cameraTranslationConstraints = Vector3.new(1, 1, 1)
    v14.humanoidJumpOrigin = nil
    v14.trackingHumanoid = nil
    v14.cameraFrozen = false
    v14.subjectStateChangedConn = nil
    v14.gamepadZoomPressConnection = nil
    v14.mouseLockOffset = Vector3.new(0, 0, 0)
    v_u_3:SetCameraYInvertVisible()
    v_u_3:SetGamepadCameraSensitivityVisible()
    return v14
end
function v_u_12.GetModuleName(_) -- name: GetModuleName
    return "BaseCamera"
end
function v_u_12._setUpConfigurations(p_u_17) -- name: _setUpConfigurations
    -- upvalues: (copy) v_u_11
    p_u_17._connections:trackConnection("CHARACTER_ADDED", v_u_11.CharacterAdded:Connect(function(p18)
        -- upvalues: (copy) p_u_17
        p_u_17:OnCharacterAdded(p18)
    end))
    p_u_17.humanoidRootPart = nil
    p_u_17._connections:trackConnection("CAMERA_MODE_CHANGED", v_u_11:GetPropertyChangedSignal("CameraMode"):Connect(function()
        -- upvalues: (copy) p_u_17
        p_u_17:OnPlayerCameraPropertyChange()
    end))
    p_u_17._connections:trackConnection("CAMERA_MIN_DISTANCE_CHANGED", v_u_11:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(function()
        -- upvalues: (copy) p_u_17
        p_u_17:OnPlayerCameraPropertyChange()
    end))
    p_u_17._connections:trackConnection("CAMERA_MAX_DISTANCE_CHANGED", v_u_11:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(function()
        -- upvalues: (copy) p_u_17
        p_u_17:OnPlayerCameraPropertyChange()
    end))
    p_u_17:OnPlayerCameraPropertyChange()
end
function v_u_12.OnCharacterAdded(p19, _) -- name: OnCharacterAdded
    p19.resetCameraAngle = p19.resetCameraAngle or p19:GetEnabled()
    p19.humanoidRootPart = nil
end
function v_u_12.GetHumanoidRootPart(p20) -- name: GetHumanoidRootPart
    -- upvalues: (copy) v_u_11
    local v21 = (not p20.humanoidRootPart and v_u_11.Character and true or false) and v_u_11.Character:FindFirstChildOfClass("Humanoid")
    if v21 then
        p20.humanoidRootPart = v21.RootPart
    end
    return p20.humanoidRootPart
end
function v_u_12.GetBodyPartToFollow(_, p22, _) -- name: GetBodyPartToFollow
    if p22:GetState() == Enum.HumanoidStateType.Dead then
        local v23 = p22.Parent
        if v23 and v23:IsA("Model") then
            return v23:FindFirstChild("Head") or p22.RootPart
        end
    end
    return p22.RootPart
end
function v_u_12.GetSubjectCFrame(p24) -- name: GetSubjectCFrame
    local v25 = p24.lastSubjectCFrame
    local v26 = workspace.CurrentCamera
    if v26 then
        v26 = v26.CameraSubject
    end
    if not v26 then
        return v25
    end
    if v26:IsA("Humanoid") then
        local v27 = v26:GetState() == Enum.HumanoidStateType.Dead
        local v28 = v26.CameraOffset
        if p24:GetIsMouseLocked() then
            v28 = Vector3.new()
        end
        local v29 = v26.RootPart
        if v27 and (v26.Parent and v26.Parent:IsA("Model")) then
            v29 = v26.Parent:FindFirstChild("Head") or v29
        end
        if v29 and v29:IsA("BasePart") then
            local v30
            if v26.RigType == Enum.HumanoidRigType.R15 then
                if v26.AutomaticScalingEnabled then
                    v30 = Vector3.new(0, 1.5, 0)
                    local v31 = v26.RootPart
                    if v29 == v31 then
                        local v32 = (v31.Size.Y - 2) / 2
                        v30 = v30 + Vector3.new(0, v32, 0)
                    end
                else
                    v30 = Vector3.new(0, 2, 0)
                end
            else
                v30 = Vector3.new(0, 1.5, 0)
            end
            v25 = v29.CFrame * CFrame.new((v27 and Vector3.new(0, 0, 0) or v30) + v28)
        end
    elseif v26:IsA("BasePart") then
        v25 = v26.CFrame
    elseif v26:IsA("Model") then
        if v26.PrimaryPart then
            v25 = v26:GetPrimaryPartCFrame()
        else
            v25 = CFrame.new()
        end
    end
    if v25 then
        p24.lastSubjectCFrame = v25
    end
    return v25
end
function v_u_12.GetSubjectVelocity(_) -- name: GetSubjectVelocity
    local v33 = workspace.CurrentCamera
    if v33 then
        v33 = v33.CameraSubject
    end
    if not v33 then
        return Vector3.new(0, 0, 0)
    end
    if v33:IsA("BasePart") then
        return v33.Velocity
    end
    if v33:IsA("Humanoid") then
        local v34 = v33.RootPart
        if v34 then
            return v34.Velocity
        end
    else
        local v35 = v33:IsA("Model") and v33.PrimaryPart
        if v35 then
            return v35.Velocity
        end
    end
    return Vector3.new(0, 0, 0)
end
function v_u_12.GetSubjectRotVelocity(_) -- name: GetSubjectRotVelocity
    local v36 = workspace.CurrentCamera
    if v36 then
        v36 = v36.CameraSubject
    end
    if not v36 then
        return Vector3.new(0, 0, 0)
    end
    if v36:IsA("BasePart") then
        return v36.RotVelocity
    end
    if v36:IsA("Humanoid") then
        local v37 = v36.RootPart
        if v37 then
            return v37.RotVelocity
        end
    else
        local v38 = v36:IsA("Model") and v36.PrimaryPart
        if v38 then
            return v38.RotVelocity
        end
    end
    return Vector3.new(0, 0, 0)
end
function v_u_12.StepZoom(p39) -- name: StepZoom
    -- upvalues: (copy) v_u_9, (copy) v_u_7
    local v40 = p39.currentSubjectDistance
    local v41 = v_u_9.getZoomDelta()
    if math.abs(v41) > 0 then
        local v42
        if v41 > 0 then
            local v43 = v40 + v41 * (v40 * 0.5 + 1)
            local v44 = p39.FIRST_PERSON_DISTANCE_THRESHOLD
            v42 = math.max(v43, v44)
        else
            local v45 = (v40 + v41) / (1 - v41 * 0.5)
            v42 = math.max(v45, 0.5)
        end
        p39:SetCameraToSubjectDistance(v42 < p39.FIRST_PERSON_DISTANCE_THRESHOLD and 0.5 or v42)
    end
    return v_u_7.GetZoomRadius()
end
function v_u_12.GetSubjectPosition(p46) -- name: GetSubjectPosition
    local v47 = p46.lastSubjectPosition
    local v48 = game.Workspace.CurrentCamera
    if v48 then
        v48 = v48.CameraSubject
    end
    if not v48 then
        return nil
    end
    if v48:IsA("Humanoid") then
        local v49 = v48:GetState() == Enum.HumanoidStateType.Dead
        local v50 = v48.CameraOffset
        if p46:GetIsMouseLocked() then
            v50 = Vector3.new()
        end
        local v51 = v48.RootPart
        if v49 and (v48.Parent and v48.Parent:IsA("Model")) then
            v51 = v48.Parent:FindFirstChild("Head") or v51
        end
        if v51 and v51:IsA("BasePart") then
            local v52
            if v48.RigType == Enum.HumanoidRigType.R15 then
                if v48.AutomaticScalingEnabled then
                    v52 = Vector3.new(0, 1.5, 0)
                    if v51 == v48.RootPart then
                        local v53 = v48.RootPart.Size.Y / 2 - 1
                        v52 = v52 + Vector3.new(0, v53, 0)
                    end
                else
                    v52 = Vector3.new(0, 2, 0)
                end
            else
                v52 = Vector3.new(0, 1.5, 0)
            end
            v47 = v51.CFrame.p + v51.CFrame:vectorToWorldSpace((v49 and Vector3.new(0, 0, 0) or v52) + v50)
        end
    elseif v48:IsA("VehicleSeat") then
        v47 = v48.CFrame.p + v48.CFrame:vectorToWorldSpace(Vector3.new(0, 5, 0))
    elseif v48:IsA("SkateboardPlatform") then
        v47 = v48.CFrame.p + Vector3.new(0, 5, 0)
    elseif v48:IsA("BasePart") then
        v47 = v48.CFrame.p
    elseif v48:IsA("Model") then
        if v48.PrimaryPart then
            v47 = v48:GetPrimaryPartCFrame().p
        else
            v47 = v48:GetModelCFrame().p
        end
    end
    p46.lastSubject = v48
    p46.lastSubjectPosition = v47
    return v47
end
function v_u_12.OnCurrentCameraChanged(p_u_54) -- name: OnCurrentCameraChanged
    if p_u_54.cameraSubjectChangedConn then
        p_u_54.cameraSubjectChangedConn:Disconnect()
        p_u_54.cameraSubjectChangedConn = nil
    end
    local v55 = game.Workspace.CurrentCamera
    if v55 then
        p_u_54.cameraSubjectChangedConn = v55:GetPropertyChangedSignal("CameraSubject"):Connect(function()
            -- upvalues: (copy) p_u_54
            p_u_54:OnNewCameraSubject()
        end)
        p_u_54:OnNewCameraSubject()
    end
end
function v_u_12.OnPlayerCameraPropertyChange(p56) -- name: OnPlayerCameraPropertyChange
    p56:SetCameraToSubjectDistance(p56.currentSubjectDistance)
end
function v_u_12.InputTranslationToCameraAngleChange(_, p57, p58) -- name: InputTranslationToCameraAngleChange
    return p57 * p58
end
function v_u_12.GamepadZoomPress(p59) -- name: GamepadZoomPress
    -- upvalues: (copy) v_u_11
    local v60 = p59:GetCameraToSubjectDistance()
    local v61 = v_u_11.CameraMaxZoomDistance
    for v62 = #p59.gamepadZoomLevels, 1, -1 do
        local v63 = p59.gamepadZoomLevels[v62]
        if v61 >= v63 then
            if v63 < v_u_11.CameraMinZoomDistance then
                v63 = v_u_11.CameraMinZoomDistance
                if v61 == v63 then
                    break
                end
            end
            if v63 + (v61 - v63) / 2 < v60 then
                p59:SetCameraToSubjectDistance(v63)
                return
            end
            v61 = v63
        end
    end
    p59:SetCameraToSubjectDistance(p59.gamepadZoomLevels[#p59.gamepadZoomLevels])
end
function v_u_12.Enable(p64, p65) -- name: Enable
    if p64.enabled ~= p65 then
        p64.enabled = p65
        p64:OnEnabledChanged()
    end
end
function v_u_12.OnEnabledChanged(p_u_66) -- name: OnEnabledChanged
    -- upvalues: (copy) v_u_9, (copy) v_u_11
    if p_u_66.enabled then
        p_u_66:_setUpConfigurations()
        v_u_9.setInputEnabled(true)
        p_u_66.gamepadZoomPressConnection = v_u_9.gamepadZoomPress:Connect(function()
            -- upvalues: (copy) p_u_66
            p_u_66:GamepadZoomPress()
        end)
        if v_u_11.CameraMode == Enum.CameraMode.LockFirstPerson then
            p_u_66.currentSubjectDistance = 0.5
            if not p_u_66.inFirstPerson then
                p_u_66:EnterFirstPerson()
            end
        end
        if p_u_66.cameraChangedConn then
            p_u_66.cameraChangedConn:Disconnect()
            p_u_66.cameraChangedConn = nil
        end
        p_u_66.cameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
            -- upvalues: (copy) p_u_66
            p_u_66:OnCurrentCameraChanged()
        end)
        p_u_66:OnCurrentCameraChanged()
    else
        p_u_66._connections:disconnectAll()
        v_u_9.setInputEnabled(false)
        if p_u_66.gamepadZoomPressConnection then
            p_u_66.gamepadZoomPressConnection:Disconnect()
            p_u_66.gamepadZoomPressConnection = nil
        end
        p_u_66:Cleanup()
    end
end
function v_u_12.GetEnabled(p67) -- name: GetEnabled
    return p67.enabled
end
function v_u_12.Cleanup(p68) -- name: Cleanup
    -- upvalues: (copy) v_u_6
    if p68.subjectStateChangedConn then
        p68.subjectStateChangedConn:Disconnect()
        p68.subjectStateChangedConn = nil
    end
    if p68.cameraChangedConn then
        p68.cameraChangedConn:Disconnect()
        p68.cameraChangedConn = nil
    end
    p68.lastCameraTransform = nil
    p68.lastSubjectCFrame = nil
    v_u_6.restoreMouseBehavior()
end
function v_u_12.UpdateMouseBehavior(p69) -- name: UpdateMouseBehavior
    -- upvalues: (copy) v_u_3, (copy) v_u_10, (copy) v_u_9, (copy) v_u_8, (copy) v_u_6
    local v70 = v_u_3.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove
    if p69.isCameraToggle and v70 == false then
        v_u_10.setCameraModeToastEnabled(true)
        v_u_9.enableCameraToggleInput()
        v_u_8(p69.inFirstPerson)
        return
    else
        v_u_10.setCameraModeToastEnabled(false)
        v_u_9.disableCameraToggleInput()
        if p69.inFirstPerson or p69.inMouseLockedMode then
            v_u_6.setRotationTypeOverride(Enum.RotationType.CameraRelative)
            v_u_6.setMouseBehaviorOverride(Enum.MouseBehavior.LockCenter)
            return
        else
            v_u_6.restoreRotationType()
            if v_u_9.getRotationActivated() then
                v_u_6.setMouseBehaviorOverride(Enum.MouseBehavior.LockCurrentPosition)
            else
                v_u_6.restoreMouseBehavior()
            end
        end
    end
end
function v_u_12.UpdateForDistancePropertyChange(p71) -- name: UpdateForDistancePropertyChange
    p71:SetCameraToSubjectDistance(p71.currentSubjectDistance)
end
function v_u_12.SetCameraToSubjectDistance(p72, p73) -- name: SetCameraToSubjectDistance
    -- upvalues: (copy) v_u_11, (copy) v_u_7
    local v74 = p72.currentSubjectDistance
    if v_u_11.CameraMode == Enum.CameraMode.LockFirstPerson then
        p72.currentSubjectDistance = 0.5
        if not p72.inFirstPerson then
            p72:EnterFirstPerson()
        end
    else
        local v75 = v_u_11.CameraMinZoomDistance
        local v76 = v_u_11.CameraMaxZoomDistance
        local v77 = math.clamp(p73, v75, v76)
        if v77 < 1 then
            p72.currentSubjectDistance = 0.5
            if not p72.inFirstPerson then
                p72:EnterFirstPerson()
            end
        else
            p72.currentSubjectDistance = v77
            if p72.inFirstPerson then
                p72:LeaveFirstPerson()
            end
        end
    end
    local v78 = v_u_7.SetZoomParameters
    local v79 = p72.currentSubjectDistance
    local v80 = p73 - v74
    v78(v79, (math.sign(v80)))
    return p72.currentSubjectDistance
end
function v_u_12.SetCameraType(p81, p82) -- name: SetCameraType
    p81.cameraType = p82
end
function v_u_12.GetCameraType(p83) -- name: GetCameraType
    return p83.cameraType
end
function v_u_12.SetCameraMovementMode(p84, p85) -- name: SetCameraMovementMode
    p84.cameraMovementMode = p85
end
function v_u_12.GetCameraMovementMode(p86) -- name: GetCameraMovementMode
    return p86.cameraMovementMode
end
function v_u_12.SetIsMouseLocked(p87, p88) -- name: SetIsMouseLocked
    p87.inMouseLockedMode = p88
end
function v_u_12.GetIsMouseLocked(p89) -- name: GetIsMouseLocked
    return p89.inMouseLockedMode
end
function v_u_12.SetMouseLockOffset(p90, p91) -- name: SetMouseLockOffset
    p90.mouseLockOffset = p91
end
function v_u_12.GetMouseLockOffset(p92) -- name: GetMouseLockOffset
    return p92.mouseLockOffset
end
function v_u_12.InFirstPerson(p93) -- name: InFirstPerson
    return p93.inFirstPerson
end
function v_u_12.EnterFirstPerson(p94) -- name: EnterFirstPerson
    p94.inFirstPerson = true
    p94:UpdateMouseBehavior()
end
function v_u_12.LeaveFirstPerson(p95) -- name: LeaveFirstPerson
    p95.inFirstPerson = false
    p95:UpdateMouseBehavior()
end
function v_u_12.GetCameraToSubjectDistance(p96) -- name: GetCameraToSubjectDistance
    return p96.currentSubjectDistance
end
function v_u_12.GetMeasuredDistanceToFocus(_) -- name: GetMeasuredDistanceToFocus
    local v97 = game.Workspace.CurrentCamera
    if v97 then
        return (v97.CoordinateFrame.p - v97.Focus.p).magnitude
    else
        return nil
    end
end
function v_u_12.GetCameraLookVector(_) -- name: GetCameraLookVector
    return game.Workspace.CurrentCamera and game.Workspace.CurrentCamera.CFrame.LookVector or Vector3.new(0, 0, 1)
end
function v_u_12.CalculateNewLookCFrameFromArg(p98, p99, p100) -- name: CalculateNewLookCFrameFromArg
    local v101 = p99 or p98:GetCameraLookVector()
    local v102 = v101.Y
    local v103 = math.asin(v102)
    local v104 = p100.Y
    local v105 = v103 + -1.3962634015954636
    local v106 = v103 + 1.3962634015954636
    local v107 = math.clamp(v104, v105, v106)
    local v108 = Vector2.new(p100.X, v107)
    local v109 = CFrame.new(Vector3.new(0, 0, 0), v101)
    return CFrame.Angles(0, -v108.X, 0) * v109 * CFrame.Angles(-v108.Y, 0, 0)
end
function v_u_12.CalculateNewLookVectorFromArg(p110, p111, p112) -- name: CalculateNewLookVectorFromArg
    return p110:CalculateNewLookCFrameFromArg(p111, p112).LookVector
end
function v_u_12.CalculateNewLookVectorVRFromArg(p113, p114) -- name: CalculateNewLookVectorVRFromArg
    local v115 = ((p113:GetSubjectPosition() - game.Workspace.CurrentCamera.CFrame.p) * Vector3.new(1, 0, 1)).unit
    local v116 = Vector2.new(p114.X, 0)
    local v117 = CFrame.new(Vector3.new(0, 0, 0), v115)
    return ((CFrame.Angles(0, -v116.X, 0) * v117 * CFrame.Angles(-v116.Y, 0, 0)).LookVector * Vector3.new(1, 0, 1)).unit
end
function v_u_12.GetHumanoid(p118) -- name: GetHumanoid
    -- upvalues: (copy) v_u_11
    local v119 = v_u_11
    if v119 then
        v119 = v_u_11.Character
    end
    if not v119 then
        return nil
    end
    local v120 = p118.humanoidCache[v_u_11]
    if v120 and v120.Parent == v119 then
        return v120
    end
    p118.humanoidCache[v_u_11] = nil
    local v121 = v119:FindFirstChildOfClass("Humanoid")
    if v121 then
        p118.humanoidCache[v_u_11] = v121
    end
    return v121
end
function v_u_12.GetHumanoidPartToFollow(_, p122, p123) -- name: GetHumanoidPartToFollow
    if p123 == Enum.HumanoidStateType.Dead then
        local v124 = p122.Parent
        if v124 then
            return v124:FindFirstChild("Head") or p122.Torso
        else
            return p122.Torso
        end
    else
        return p122.Torso
    end
end
function v_u_12.OnNewCameraSubject(p125) -- name: OnNewCameraSubject
    if p125.subjectStateChangedConn then
        p125.subjectStateChangedConn:Disconnect()
        p125.subjectStateChangedConn = nil
    end
end
function v_u_12.IsInFirstPerson(p126) -- name: IsInFirstPerson
    return p126.inFirstPerson
end
function v_u_12.Update(_, _) -- name: Update
    error("BaseCamera:Update() This is a virtual function that should never be getting called.", 2)
end
function v_u_12.GetCameraHeight(p127) -- name: GetCameraHeight
    -- upvalues: (copy) v_u_2
    return (not v_u_2.VREnabled or p127.inFirstPerson) and 0 or 0.25881904510252074 * p127.currentSubjectDistance
end
return v_u_12
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CameraModule
-- Took 0.01s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = {}
v_u_1.__index = v_u_1
local v_u_2 = {
    "CameraMinZoomDistance",
    "CameraMaxZoomDistance",
    "CameraMode",
    "DevCameraOcclusionMode",
    "DevComputerCameraMode",
    "DevTouchCameraMode",
    "DevComputerMovementMode",
    "DevTouchMovementMode",
    "DevEnableMouseLock"
}
local v_u_3 = {
    "ComputerCameraMovementMode",
    "ComputerMovementMode",
    "ControlMode",
    "GamepadCameraSensitivity",
    "MouseSensitivity",
    "RotationType",
    "TouchCameraMovementMode",
    "TouchMovementMode"
}
local v_u_4 = game:GetService("Players")
local v_u_5 = game:GetService("RunService")
local v_u_6 = game:GetService("UserInputService")
local v_u_7 = game:GetService("VRService")
local v_u_8 = UserSettings():GetService("UserGameSettings")
local v9 = script.Parent:WaitForChild("CommonUtils")
local v_u_10 = require(v9:WaitForChild("ConnectionUtil"))
local v11 = require(v9:WaitForChild("FlagUtil"))
local v_u_12 = require(script:WaitForChild("CameraUtils"))
local v_u_13 = require(script:WaitForChild("CameraInput"))
local v_u_14 = require(script:WaitForChild("ClassicCamera"))
local v_u_15 = require(script:WaitForChild("OrbitalCamera"))
local v_u_16 = require(script:WaitForChild("LegacyCamera"))
local v_u_17 = require(script:WaitForChild("VehicleCamera"))
local v_u_18 = require(script:WaitForChild("VRCamera"))
local v_u_19 = require(script:WaitForChild("VRVehicleCamera"))
local v_u_20 = require(script:WaitForChild("Invisicam"))
local v_u_21 = require(script:WaitForChild("Poppercam"))
local v_u_22 = require(script:WaitForChild("TransparencyController"))
local v_u_23 = require(script:WaitForChild("MouseLockController"))
local v_u_24 = {}
local v_u_25 = {}
if not v_u_4.LocalPlayer then
    return {}
end
local v26 = v_u_4.LocalPlayer
assert(v26, "Strict typing check")
local v27 = v_u_4.LocalPlayer:WaitForChild("PlayerScripts")
v27:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Default)
v27:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Follow)
v27:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Classic)
v27:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Default)
v27:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Follow)
v27:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Classic)
v27:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.CameraToggle)
local v_u_28 = v11.getUserFlag("UserPlayerConnectionMemoryLeak")
local v_u_29 = v11.getUserFlag("UserPSFixCameraControllerReset")
function v_u_1.new() -- name: new
    -- upvalues: (copy) v_u_22, (copy) v_u_28, (copy) v_u_10, (copy) v_u_1, (copy) v_u_4, (copy) v_u_23, (copy) v_u_5, (copy) v_u_2, (copy) v_u_3, (copy) v_u_8, (copy) v_u_6
    local v30 = {
        ["activeTransparencyController"] = v_u_22.new()
    }
    local v31
    if v_u_28 then
        v31 = v_u_10.new()
    else
        v31 = nil
    end
    v30.connectionUtil = v31
    local v32 = v_u_1
    local v_u_33 = setmetatable(v30, v32)
    v_u_33.activeCameraController = nil
    v_u_33.activeOcclusionModule = nil
    v_u_33.activeMouseLockController = nil
    v_u_33.currentComputerCameraMovementMode = nil
    v_u_33.cameraSubjectChangedConn = nil
    v_u_33.cameraTypeChangedConn = nil
    for _, v34 in pairs(v_u_4:GetPlayers()) do
        v_u_33:OnPlayerAdded(v34)
    end
    v_u_4.PlayerAdded:Connect(function(p35)
        -- upvalues: (copy) v_u_33
        v_u_33:OnPlayerAdded(p35)
    end)
    if v_u_28 then
        v_u_4.PlayerRemoving:Connect(function(p36)
            -- upvalues: (copy) v_u_33
            v_u_33:OnPlayerRemoving(p36)
        end)
    end
    v_u_33.activeTransparencyController:Enable(true)
    v_u_33.activeMouseLockController = v_u_23.new()
    local v37 = v_u_33.activeMouseLockController
    assert(v37, "Strict typing check")
    local v38 = v_u_33.activeMouseLockController:GetBindableToggleEvent()
    if v38 then
        v38:Connect(function()
            -- upvalues: (copy) v_u_33
            v_u_33:OnMouseLockToggled()
        end)
    end
    v_u_33:ActivateCameraController()
    v_u_33:ActivateOcclusionModule(v_u_4.LocalPlayer.DevCameraOcclusionMode)
    v_u_33:OnCurrentCameraChanged()
    v_u_5:BindToRenderStep("cameraRenderUpdate", Enum.RenderPriority.Camera.Value, function(p39)
        -- upvalues: (copy) v_u_33
        v_u_33:Update(p39)
    end)
    for _, v_u_40 in pairs(v_u_2) do
        v_u_4.LocalPlayer:GetPropertyChangedSignal(v_u_40):Connect(function()
            -- upvalues: (copy) v_u_33, (copy) v_u_40
            v_u_33:OnLocalPlayerCameraPropertyChanged(v_u_40)
        end)
    end
    for _, v_u_41 in pairs(v_u_3) do
        v_u_8:GetPropertyChangedSignal(v_u_41):Connect(function()
            -- upvalues: (copy) v_u_33, (copy) v_u_41
            v_u_33:OnUserGameSettingsPropertyChanged(v_u_41)
        end)
    end
    game.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
        -- upvalues: (copy) v_u_33
        v_u_33:OnCurrentCameraChanged()
    end)
    v_u_6:GetPropertyChangedSignal("PreferredInput"):Connect(function()
        -- upvalues: (copy) v_u_33
        v_u_33:OnPreferredInputChanged()
    end)
    return v_u_33
end
function v_u_1.GetCameraMovementModeFromSettings(_) -- name: GetCameraMovementModeFromSettings
    -- upvalues: (copy) v_u_4, (copy) v_u_12, (copy) v_u_6, (copy) v_u_8
    if v_u_4.LocalPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
        return v_u_12.ConvertCameraModeEnumToStandard(Enum.ComputerCameraMovementMode.Classic)
    else
        local v42, v43
        if v_u_6.PreferredInput == Enum.PreferredInput.Touch then
            v42 = v_u_12.ConvertCameraModeEnumToStandard(v_u_4.LocalPlayer.DevTouchCameraMode)
            v43 = v_u_12.ConvertCameraModeEnumToStandard(v_u_8.TouchCameraMovementMode)
        else
            v42 = v_u_12.ConvertCameraModeEnumToStandard(v_u_4.LocalPlayer.DevComputerCameraMode)
            v43 = v_u_12.ConvertCameraModeEnumToStandard(v_u_8.ComputerCameraMovementMode)
        end
        if v42 == Enum.DevComputerCameraMovementMode.UserChoice then
            return v43
        else
            return v42
        end
    end
end
function v_u_1.ActivateOcclusionModule(p44, p45) -- name: ActivateOcclusionModule
    -- upvalues: (copy) v_u_21, (copy) v_u_20, (copy) v_u_25, (copy) v_u_4
    local v46
    if p45 == Enum.DevCameraOcclusionMode.Zoom then
        v46 = v_u_21
    else
        if p45 ~= Enum.DevCameraOcclusionMode.Invisicam then
            warn("CameraScript ActivateOcclusionModule called with unsupported mode")
            return
        end
        v46 = v_u_20
    end
    p44.occlusionMode = p45
    if p44.activeOcclusionModule and p44.activeOcclusionModule:GetOcclusionMode() == p45 then
        if not p44.activeOcclusionModule:GetEnabled() then
            p44.activeOcclusionModule:Enable(true)
        end
    else
        local v47 = p44.activeOcclusionModule
        p44.activeOcclusionModule = v_u_25[v46]
        if not p44.activeOcclusionModule then
            p44.activeOcclusionModule = v46.new()
            if p44.activeOcclusionModule then
                v_u_25[v46] = p44.activeOcclusionModule
            end
        end
        if p44.activeOcclusionModule then
            if p44.activeOcclusionModule:GetOcclusionMode() ~= p45 then
                warn("CameraScript ActivateOcclusionModule mismatch: ", p44.activeOcclusionModule:GetOcclusionMode(), "~=", p45)
            end
            if v47 then
                if v47 == p44.activeOcclusionModule then
                    warn("CameraScript ActivateOcclusionModule failure to detect already running correct module")
                else
                    v47:Enable(false)
                end
            end
            if p45 == Enum.DevCameraOcclusionMode.Invisicam then
                if v_u_4.LocalPlayer.Character then
                    p44.activeOcclusionModule:CharacterAdded(v_u_4.LocalPlayer.Character, v_u_4.LocalPlayer)
                end
            else
                for _, v48 in pairs(v_u_4:GetPlayers()) do
                    if v48 and v48.Character then
                        p44.activeOcclusionModule:CharacterAdded(v48.Character, v48)
                    end
                end
                p44.activeOcclusionModule:OnCameraSubjectChanged(game.Workspace.CurrentCamera.CameraSubject)
            end
            p44.activeOcclusionModule:Enable(true)
        end
    end
end
function v_u_1.ShouldUseVehicleCamera(p49) -- name: ShouldUseVehicleCamera
    local v50 = workspace.CurrentCamera
    if not v50 then
        return false
    end
    local v51 = v50.CameraType
    local v52 = v50.CameraSubject
    local v53 = v51 == Enum.CameraType.Custom and true or v51 == Enum.CameraType.Follow
    local v54 = v52 and v52:IsA("VehicleSeat") or false
    local v55 = p49.occlusionMode ~= Enum.DevCameraOcclusionMode.Invisicam
    if v54 then
        if not v53 then
            v55 = v53
        end
    else
        v55 = v54
    end
    return v55
end
function v_u_1.ActivateCameraController(p56) -- name: ActivateCameraController
    -- upvalues: (copy) v_u_16, (copy) v_u_7, (copy) v_u_18, (copy) v_u_14, (copy) v_u_15, (copy) v_u_19, (copy) v_u_17, (copy) v_u_24, (copy) v_u_29
    local v57 = workspace.CurrentCamera.CameraType
    local v58 = p56:GetCameraMovementModeFromSettings()
    local v59 = nil
    if v57 == Enum.CameraType.Scriptable then
        if p56.activeCameraController then
            p56.activeCameraController:Enable(false)
            p56.activeCameraController = nil
        end
    else
        if v57 == Enum.CameraType.Custom then
            v58 = p56:GetCameraMovementModeFromSettings()
        elseif v57 == Enum.CameraType.Track then
            v58 = Enum.ComputerCameraMovementMode.Classic
        elseif v57 == Enum.CameraType.Follow then
            v58 = Enum.ComputerCameraMovementMode.Follow
        elseif v57 == Enum.CameraType.Orbital then
            v58 = Enum.ComputerCameraMovementMode.Orbital
        elseif v57 == Enum.CameraType.Attach or (v57 == Enum.CameraType.Watch or v57 == Enum.CameraType.Fixed) then
            v59 = v_u_16
        else
            warn("CameraScript encountered an unhandled Camera.CameraType value: ", v57)
        end
        if not v59 then
            if v_u_7.VREnabled then
                v59 = v_u_18
            elseif v58 == Enum.ComputerCameraMovementMode.Classic or (v58 == Enum.ComputerCameraMovementMode.Follow or (v58 == Enum.ComputerCameraMovementMode.Default or v58 == Enum.ComputerCameraMovementMode.CameraToggle)) then
                v59 = v_u_14
            else
                if v58 ~= Enum.ComputerCameraMovementMode.Orbital then
                    warn("ActivateCameraController did not select a module.")
                    return
                end
                v59 = v_u_15
            end
        end
        if p56:ShouldUseVehicleCamera() then
            if v_u_7.VREnabled then
                v59 = v_u_19
            else
                v59 = v_u_17
            end
        end
        local v60
        if v_u_24[v59] then
            v60 = v_u_24[v59]
            if v_u_29 then
                if v60.Reset and p56.activeCameraController ~= v60 then
                    v60:Reset()
                end
            elseif v60.Reset then
                v60:Reset()
            end
        else
            v60 = v59.new()
            v_u_24[v59] = v60
        end
        if p56.activeCameraController then
            if p56.activeCameraController == v60 then
                if not p56.activeCameraController:GetEnabled() then
                    p56.activeCameraController:Enable(true)
                end
            else
                if v60.HandleSubjectDistance then
                    v60:HandleSubjectDistance(p56.activeCameraController)
                end
                p56.activeCameraController:Enable(false)
                p56.activeCameraController = v60
                p56.activeCameraController:Enable(true)
            end
        elseif v60 ~= nil then
            p56.activeCameraController = v60
            local v61 = p56.activeCameraController
            assert(v61, "Strict typing check")
            p56.activeCameraController:Enable(true)
        end
        if p56.activeCameraController then
            p56.activeCameraController:SetCameraMovementMode(v58)
            p56.activeCameraController:SetCameraType(v57)
        end
    end
end
function v_u_1.OnCameraSubjectChanged(p62) -- name: OnCameraSubjectChanged
    local v63 = workspace.CurrentCamera
    local v64
    if v63 then
        v64 = v63.CameraSubject
    else
        v64 = nil
    end
    if p62.activeTransparencyController then
        p62.activeTransparencyController:SetSubject(v64)
    end
    if p62.activeOcclusionModule then
        p62.activeOcclusionModule:OnCameraSubjectChanged(v64)
    end
    p62:ActivateCameraController()
end
function v_u_1.OnCameraTypeChanged(p65, p66) -- name: OnCameraTypeChanged
    -- upvalues: (copy) v_u_6, (copy) v_u_12
    if p66 == Enum.CameraType.Scriptable and v_u_6.MouseBehavior == Enum.MouseBehavior.LockCenter then
        v_u_12.restoreMouseBehavior()
    end
    p65:ActivateCameraController()
end
function v_u_1.OnCurrentCameraChanged(p_u_67) -- name: OnCurrentCameraChanged
    local v_u_68 = game.Workspace.CurrentCamera
    if v_u_68 then
        if p_u_67.cameraSubjectChangedConn then
            p_u_67.cameraSubjectChangedConn:Disconnect()
        end
        if p_u_67.cameraTypeChangedConn then
            p_u_67.cameraTypeChangedConn:Disconnect()
        end
        p_u_67.cameraSubjectChangedConn = v_u_68:GetPropertyChangedSignal("CameraSubject"):Connect(function()
            -- upvalues: (copy) p_u_67
            p_u_67:OnCameraSubjectChanged()
        end)
        p_u_67.cameraTypeChangedConn = v_u_68:GetPropertyChangedSignal("CameraType"):Connect(function()
            -- upvalues: (copy) p_u_67, (copy) v_u_68
            p_u_67:OnCameraTypeChanged(v_u_68.CameraType)
        end)
        p_u_67:OnCameraSubjectChanged()
        p_u_67:OnCameraTypeChanged(v_u_68.CameraType)
    end
end
function v_u_1.OnLocalPlayerCameraPropertyChanged(p69, p70) -- name: OnLocalPlayerCameraPropertyChanged
    -- upvalues: (copy) v_u_4
    if p70 == "CameraMode" then
        if v_u_4.LocalPlayer.CameraMode ~= Enum.CameraMode.LockFirstPerson then
            if v_u_4.LocalPlayer.CameraMode == Enum.CameraMode.Classic then
                p69:ActivateCameraController()
            else
                warn("Unhandled value for property player.CameraMode: ", v_u_4.LocalPlayer.CameraMode)
            end
        end
        if not p69.activeCameraController or p69.activeCameraController:GetModuleName() ~= "ClassicCamera" then
            p69:ActivateCameraController()
        end
        if p69.activeCameraController then
            p69.activeCameraController:UpdateForDistancePropertyChange()
            return
        end
    else
        if p70 == "DevComputerCameraMode" or p70 == "DevTouchCameraMode" then
            p69:ActivateCameraController()
            return
        end
        if p70 == "DevCameraOcclusionMode" then
            p69:ActivateOcclusionModule(v_u_4.LocalPlayer.DevCameraOcclusionMode)
            return
        end
        if p70 == "CameraMinZoomDistance" or p70 == "CameraMaxZoomDistance" then
            if p69.activeCameraController then
                p69.activeCameraController:UpdateForDistancePropertyChange()
                return
            end
        else
            if p70 == "DevTouchMovementMode" then
                return
            end
            if p70 == "DevComputerMovementMode" then
                return
            end
            local _ = p70 == "DevEnableMouseLock"
        end
    end
end
function v_u_1.OnUserGameSettingsPropertyChanged(p71, p72) -- name: OnUserGameSettingsPropertyChanged
    if p72 == "ComputerCameraMovementMode" or p72 == "TouchCameraMovementMode" then
        p71:ActivateCameraController()
    end
end
function v_u_1.OnPreferredInputChanged(p73) -- name: OnPreferredInputChanged
    p73:ActivateCameraController()
end
function v_u_1.Update(p74, p75) -- name: Update
    -- upvalues: (copy) v_u_13
    if p74.activeCameraController then
        p74.activeCameraController:UpdateMouseBehavior()
        local v76, v77 = p74.activeCameraController:Update(p75)
        if p74.activeOcclusionModule and not p74.activeCameraController.skipOcclusion then
            v76, v77 = p74.activeOcclusionModule:Update(p75, v76, v77)
        end
        local v78 = game.Workspace.CurrentCamera
        v78.CFrame = v76
        v78.Focus = v77
        if p74.activeTransparencyController then
            p74.activeTransparencyController:Update(p75)
        end
        if v_u_13.getInputEnabled() then
            v_u_13.resetInputForFrameEnd()
        end
    end
end
function v_u_1.OnCharacterAdded(p79, p80, p81) -- name: OnCharacterAdded
    if p79.activeOcclusionModule then
        p79.activeOcclusionModule:CharacterAdded(p80, p81)
    end
end
function v_u_1.OnCharacterRemoving(p82, p83, p84) -- name: OnCharacterRemoving
    if p82.activeOcclusionModule then
        p82.activeOcclusionModule:CharacterRemoving(p83, p84)
    end
end
function v_u_1.OnPlayerAdded(p_u_85, p_u_86) -- name: OnPlayerAdded
    -- upvalues: (copy) v_u_28
    if v_u_28 then
        if p_u_85.connectionUtil then
            p_u_85.connectionUtil:trackConnection(("%*CharacterAdded"):format(p_u_86.UserId), p_u_86.CharacterAdded:Connect(function(p87)
                -- upvalues: (copy) p_u_85, (copy) p_u_86
                p_u_85:OnCharacterAdded(p87, p_u_86)
            end))
            p_u_85.connectionUtil:trackConnection(("%*CharacterRemoving"):format(p_u_86.UserId), p_u_86.CharacterRemoving:Connect(function(p88)
                -- upvalues: (copy) p_u_85, (copy) p_u_86
                p_u_85:OnCharacterRemoving(p88, p_u_86)
            end))
            return
        end
    else
        p_u_86.CharacterAdded:Connect(function(p89)
            -- upvalues: (copy) p_u_85, (copy) p_u_86
            p_u_85:OnCharacterAdded(p89, p_u_86)
        end)
        p_u_86.CharacterRemoving:Connect(function(p90)
            -- upvalues: (copy) p_u_85, (copy) p_u_86
            p_u_85:OnCharacterRemoving(p90, p_u_86)
        end)
    end
end
function v_u_1.OnPlayerRemoving(p91, p92) -- name: OnPlayerRemoving
    if p91.connectionUtil then
        p91.connectionUtil:disconnect((("%*CharacterAdded"):format(p92.UserId)))
        p91.connectionUtil:disconnect((("%*CharacterRemoving"):format(p92.UserId)))
    end
end
function v_u_1.OnMouseLockToggled(p93) -- name: OnMouseLockToggled
    if p93.activeMouseLockController then
        local v94 = p93.activeMouseLockController:GetIsMouseLocked()
        local v95 = p93.activeMouseLockController:GetMouseLockOffset()
        if p93.activeCameraController then
            p93.activeCameraController:SetIsMouseLocked(v94)
            p93.activeCameraController:SetMouseLockOffset(v95)
        end
    end
end
v_u_1.new()
return {}
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CommonUtils["CameraWrapper.spec"]
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v1 = game:GetService("CorePackages")
local v2 = require(v1.Packages.Dev.JestGlobals)
local v3 = v2.describe
local v_u_4 = v2.expect
local v_u_5 = v2.it
local v_u_6 = require(v1.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents
local v_u_7 = require(script.Parent.CameraWrapper)
v3("CameraWrapper", function()
    -- upvalues: (copy) v_u_5, (copy) v_u_7, (copy) v_u_4, (copy) v_u_6
    v_u_5("should instantiate", function()
        -- upvalues: (ref) v_u_7, (ref) v_u_4
        v_u_4((v_u_7.new())).never.toBeNil()
    end)
    v_u_5("should return updated camera", function()
        -- upvalues: (ref) v_u_7, (ref) v_u_4, (ref) v_u_6
        local v8 = v_u_7.new()
        v8:Enable()
        local v9 = Instance.new("Camera")
        v9.Parent = game.Workspace
        v_u_4(v8:getCamera()).toBe(game.Workspace.CurrentCamera)
        v_u_4(v8:getCamera()).never.toBe(v9)
        game.Workspace.CurrentCamera = v9
        v_u_6()
        v_u_4(v8:getCamera()).toBe(game.Workspace.CurrentCamera)
        v_u_4(v8:getCamera()).toBe(v9)
    end)
end)
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CommonUtils.CameraWrapper
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = require(script.Parent.ConnectionUtil)
local v_u_2 = {}
v_u_2.__index = v_u_2
function v_u_2.new() -- name: new
    -- upvalues: (copy) v_u_1, (copy) v_u_2
    local v3 = {
        ["_camera"] = nil,
        ["_callbacks"] = nil,
        ["_connectionUtil"] = nil,
        ["_enabled"] = false,
        ["_camera"] = game.Workspace.CurrentCamera,
        ["_callbacks"] = {},
        ["_connectionUtil"] = v_u_1.new()
    }
    local v4 = v_u_2
    return setmetatable(v3, v4)
end
function v_u_2._connectCallbacks(p5) -- name: _connectCallbacks
    p5._camera = game.Workspace.CurrentCamera
    if p5._camera then
        for v6, v7 in p5._callbacks do
            p5._connectionUtil:trackConnection(v6, p5._camera:GetPropertyChangedSignal(v6):Connect(v7))
            v7()
        end
    end
end
function v_u_2.Enable(p_u_8) -- name: Enable
    if not p_u_8._enabled then
        p_u_8._enabled = true
        p_u_8._cameraChangedConnection = game.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
            -- upvalues: (copy) p_u_8
            p_u_8:_connectCallbacks()
        end)
        p_u_8:_connectCallbacks()
    end
end
function v_u_2.Disable(p9) -- name: Disable
    if p9._enabled then
        p9._enabled = false
        if p9._cameraChangedConnection then
            p9._cameraChangedConnection:Disconnect()
            p9._cameraChangedConnection = nil
        end
        p9._connectionUtil:disconnectAll()
    end
end
function v_u_2.Connect(p10, p11, p12) -- name: Connect
    p10._callbacks[p11] = p12
    if p10._camera then
        p10._connectionUtil:trackConnection(p11, p10._camera:GetPropertyChangedSignal(p11):Connect(p12))
    end
end
function v_u_2.Disconnect(p13, p14) -- name: Disconnect
    p13._connectionUtil:disconnect(p14)
    p13._callbacks[p14] = nil
end
function v_u_2.getCamera(p15) -- name: getCamera
    return p15._camera
end
return v_u_2
-- Script Path: game:GetService("Players").Axelgallitooo12.PlayerScripts.PlayerModule.CommonUtils.CameraWrapper
-- Took 0s to decompile.
-- Executor: Delta (1.1.735.1138)

local v_u_1 = require(script.Parent.ConnectionUtil)
local v_u_2 = {}
v_u_2.__index = v_u_2
function v_u_2.new() -- name: new
    -- upvalues: (copy) v_u_1, (copy) v_u_2
    local v3 = {
        ["_camera"] = nil,
        ["_callbacks"] = nil,
        ["_connectionUtil"] = nil,
        ["_enabled"] = false,
        ["_camera"] = game.Workspace.CurrentCamera,
        ["_callbacks"] = {},
        ["_connectionUtil"] = v_u_1.new()
    }
    local v4 = v_u_2
    return setmetatable(v3, v4)
end
function v_u_2._connectCallbacks(p5) -- name: _connectCallbacks
    p5._camera = game.Workspace.CurrentCamera
    if p5._camera then
        for v6, v7 in p5._callbacks do
            p5._connectionUtil:trackConnection(v6, p5._camera:GetPropertyChangedSignal(v6):Connect(v7))
            v7()
        end
    end
end
function v_u_2.Enable(p_u_8) -- name: Enable
    if not p_u_8._enabled then
        p_u_8._enabled = true
        p_u_8._cameraChangedConnection = game.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
            -- upvalues: (copy) p_u_8
            p_u_8:_connectCallbacks()
        end)
        p_u_8:_connectCallbacks()
    end
end
function v_u_2.Disable(p9) -- name: Disable
    if p9._enabled then
        p9._enabled = false
        if p9._cameraChangedConnection then
            p9._cameraChangedConnection:Disconnect()
            p9._cameraChangedConnection = nil
        end
        p9._connectionUtil:disconnectAll()
    end
end
function v_u_2.Connect(p10, p11, p12) -- name: Connect
    p10._callbacks[p11] = p12
    if p10._camera then
        p10._connectionUtil:trackConnection(p11, p10._camera:GetPropertyChangedSignal(p11):Connect(p12))
    end
end
function v_u_2.Disconnect(p13, p14) -- name: Disconnect
    p13._connectionUtil:disconnect(p14)
    p13._callbacks[p14] = nil
end
function v_u_2.getCamera(p15) -- name: getCamera
    return p15._camera
end
return v_u_2
y este game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.SetCameraSubject
