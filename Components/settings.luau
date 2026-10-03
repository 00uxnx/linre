return function(v11)
    local function v12(v29)
        if Abysall and Abysall.Environment.cloneref then
            return Abysall.Environment.cloneref(v29)
        else
            return v29
        end
    end
    local v13 = setmetatable({}, {
        ["__index"] = function(v30, v31)
            return v12(game:GetService(v31))
        end,
    })
    local v14 = Abysall.Interface.Library
    local v15 = Abysall.Interface.SaveManager
    local v16 = Abysall.Interface.ThemeManager
    local v17 = v14.Toggles
    local v18 = v14.Options
    local v19 =
        { ["Abysall Hub Continued"] = true, ["🎃 Abysall Hub Continued"] = true, ["❄ Abysall Hub Continued"] = true }
    local function v20()
        local v32 = 0 - 0
        while true do
            if 0 == v32 then
                if type(v11) ~= "table" then
                    return nil
                end
                if not v11.MainFrame then
                    return nil
                end
                v32 = 2 - 1
            end
            if v32 == (115 - (4 + 110)) then
                for v51, v52 in ipairs(v11.MainFrame:GetDescendants()) do
                    if v52:IsA("TextLabel") and (v52.TextSize == 20) then
                        return v52.Text
                    end
                end
                return nil
            end
        end
    end
  
    local v22 = v11:AddTab("Settings", "settings")
    local v23 = v22:AddLeftGroupbox("Menu")
    v23:AddToggle("KeybindMenuOpen", {
        ["Default"] = v14.KeybindFrame.Visible,
        ["Text"] = "Open Keybind Menu",
        ["Callback"] = function(v34)
            v14.KeybindFrame.Visible = v34
        end,
    })
    v23:AddToggle("ShowCustomCursor", {
        ["Text"] = "Custom Cursor",
        ["Default"] = false,
        ["Callback"] = function(v36)
            v14.ShowCustomCursor = v36
        end,
    })
    v23:AddToggle("QueueOnTeleport", {
        ["Text"] = "Queue On Teleport",
        ["Default"] = false,
        ["Tooltip"] = "Automatically loads Abysall when you teleport to another server.",
        ["Callback"] = function(v38)
            local v39 = 1427 - (41 + 1386)
            while true do
                if v39 == (103 - (17 + 86)) then
                    if not v38 then
                        return
                    end
                    if queue_on_teleport then
                        queue_on_teleport([[
					loadstring(game:HttpGet("https://raw.githubusercontent.com/therealcookiemonsterof1966/AbysallContinued/main/Games/Doors/Main.luau"))()
				]])
                    end
                    break
                end
            end
        end,
    })
    v23:AddDropdown("UILibrary", {
        ["Text"] = "UI Style",
        ["Values"] = { "Obsidian", "Linoria" },
        ["Default"] = ((Abysall.UILibrary == "Linoria") and (2 + 0)) or 1,
        ["Callback"] = function(v40)
            if Abysall.Environment.writefile and Abysall.Environment.readfile then
                local v48 = 0 - 0
                local v49
                local v50
                while true do
                    if v48 == 1 then
                        local v54 = 0
                        while true do
                            if v54 == (2 - 1) then
                                v48 = 2
                                break
                            end
                            if v54 == 0 then
                                v50 = v13.HttpService:JSONDecode(v49)
                                v50.UILibrary = v40
                                v54 = 1
                            end
                        end
                    end
                    if v48 == (169 - (122 + 44)) then
                        Abysall.UILibrary = v50.UILibrary
                        Abysall.Environment.writefile("Abysall/UserData.json", v13.HttpService:JSONEncode(v50))
                        break
                    end
                    if v48 == 0 then
                        if not Abysall.Environment.isfile("Abysall/UserData.json") then
                            local v59 = { ["TotalExecutions"] = 0, ["UILibrary"] = "Obsidian" }
                            Abysall.Environment.writefile("Abysall/UserData.json", v13.HttpService:JSONEncode(v59))
                        end
                        v49 = Abysall.Environment.readfile("Abysall/UserData.json")
                        v48 = 1 - 0
                    end
                    if v48 == (6 - 4) then
                        if not v50.UILibrary then
                            v50.UILibrary = "Obsidian"
                        end
                        Abysall.TotalExecutions = v50.TotalExecutions
                        v48 = 3 + 0
                    end
                end
            end
        end,
    })
    v23:AddDropdown("DPIDropdown", {
        ["Values"] = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
        ["Default"] = "100%",
        ["Text"] = "DPI Scale",
        ["Callback"] = function(v41)
            local v42 = 0 - 0
            local v43
            while true do
                if v42 == (1213 - (323 + 889)) then
                    v14:SetDPIScale(v43)
                    break
                end
                if v42 == (0 - 0) then
                    v41 = v41:gsub("%%", "")
                    v43 = tonumber(v41)
                    v42 = 1
                end
            end
        end,
    })
    v23:AddDivider()
    v23:AddLabel("Menu bind")
        :AddKeyPicker("MenuKeybind", { ["Default"] = "RightShift", ["NoUI"] = true, ["Text"] = "Menu keybind" })
    v23:AddButton("Copy Discord Invite", function()
        toclipboard("https://dsc.gg/abysallhubcontinued")
        v14:Notify("Discord invite copied.")
    end)
    v23:AddButton("Unload", function()
        v14:Unload()
    end)
    v23:AddButton("Reload", function()
        v14:Unload()
        wait(580.5 - (361 + 219))
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/therealcookiemonsterof1966/AbysallContinued/main/Games/Doors/Main.luau"
            )
        )()
    end)
    v14.ToggleKeybind = v18.MenuKeybind
    v16:SetLibrary(v14)
    v15:SetLibrary(v14)
    v15:IgnoreThemeSettings()
    v15:SetIgnoreIndexes({ "UILibrary" })
    v16:SetFolder("Abysall")
    v15:SetFolder("Abysall/" .. Abysall.SavePath)
    v15:BuildConfigSection(v22)
    v15:LoadAutoloadConfig()
    local v26 = os.date("*t").month
    local v27 = ({
        [1 + 0] = "Nya~!",
        [2] = "Valentines",
        [416 - (15 + 398)] = "St. Patrick's Day",
        [986 - (18 + 964)] = "Easter",
        [37 - 27] = "Spooky Scary Skeletons",
        [7 + 4] = "Thanksgiving",
        [8 + 4] = "Christmas",
    })[v26]
    if v27 then
        local v46, v47 = v16:ApplyTheme(v27)
        if not v46 then
            v14:Notify({
                ["Title"] = "Seasonal Theme",
                ["Description"] = "Failed to apply " .. v27 .. ": " .. tostring(v47),
                ["Time"] = 855 - (20 + 830),
            })
        end
    end
    v16:ApplyToTab(v22)
end
