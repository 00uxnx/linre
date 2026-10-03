return function(v11)
    local v12 = 0 - 0
    local v13
    local v14
    local v15
    local v16
    local v17
    local v18
    local v19
    local v20
    local v21
    local v22
    local v23
    local v24
    local v25
    local v26
    local v27
    local v28
    local v29
    local v30
    local v31
    local v32
    local v33
    local v34
    while true do
        if (10 - 2) == v12 then
            v33:AddButton("Dex", {
                ["Text"] = "Dex",
                ["Default"] = false,
                ["Tooltip"] = "Runs Dex.",
                ["Func"] = function()
                    local v44 = 0 + 0
                    while true do
                        if v44 == (1474 - (1329 + 145)) then
                            v16:Notify("Please wait.")
                            loadstring(
                                game:HttpGet(
                                    "https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua"
                                )
                            )()
                            break
                        end
                    end
                end,
            })
            v34 = v22:AddLeftGroupbox("Community")
            v34:AddButton("Copy Discord Invite", function()
                local v45 = 971 - (140 + 831)
                local v46
                while true do
                    if (1850 - (1409 + 441)) == v45 then
                        v46 = 718 - (15 + 703)
                        while true do
                            if v46 == 0 then
                                toclipboard("https://dsc.gg/abysallhubcontinued")
                                v16:Notify("Discord invite copied.")
                                break
                            end
                        end
                        break
                    end
                end
            end)
            break
        end
        if v12 == (3 + 3) then
            v32 = v22:AddRightGroupbox("Executor Info")
            v32:AddLabel("Name: " .. v30, true)
            v32:AddLabel("Version: " .. ((v31 and v31) or "N/A"), true)
            v32:AddDivider()
            v12 = 445 - (262 + 176)
        end
        if v12 == 4 then
            v23:AddLabel("ID: " .. v21.Name, true)
            v23:AddLabel("Total Executions: " .. ((Abysall.TotalExecutions and Abysall.TotalExecutions) or "N/A"), true)
            v27 = {
                "<font color='rgb(0, 255, 255)'>Homeless — Owner of the Continued Script</font>",
                "<font color='rgb(255, 165, 0)'>Lolcat — Owner of the Script</font>",
                "<font color='rgb(197, 63, 132)'>NiggerMan27 — Provided the Infinite Crucifix</font>",
                "<font color='rgb(241, 106, 212)'>NiggerMan86 - Basicly a developer</font>",
                "<font color='rgb(120, 200, 255)'>Slavenumber1 - Theme creator</font>",
                "<font color='rgb(120, 200, 255)'>Slavenumber2 - Theme creator</font>",
                "<font color='rgb(50, 205, 50)'>" .. v21.Name .. " — For Using This Script</font>",
            }
            v28 = v22:AddRightGroupbox("Credits")
            v12 = 1211 - (696 + 510)
        end
        if v12 == (3 - 1) then
            v20 = v16.Options
            v21 = v15.Players.LocalPlayer
            v22 = v11:AddTab("Info", "user")
            v23 = v22:AddLeftGroupbox("User Info")
            v12 = 3
        end
        if v12 == (1267 - (1091 + 171)) then
            for v47, v48 in pairs(v27) do
                v28:AddLabel(v48, true)
            end
            v29 = v22:AddRightGroupbox("Changelog")
            for v49, v50 in pairs(v13) do
                v29:AddLabel(v50, true)
            end
            v30, v31 = Abysall.Environment.identifyexecutor()
            v12 = 1 + 5
        end
        if (0 - 0) == v12 then
            v13 = {
                "5/9/2026",
                "<font color='rgb(0, 255, 0)'>+ Nigger hub!</font>",
            }
            v14 = nil
            function v14(v51)
                if Abysall and Abysall.Environment.cloneref then
                    return Abysall.Environment.cloneref(v51)
                else
                    return v51
                end
            end
            v15 = setmetatable({}, {
                ["__index"] = function(v52, v53)
                    return v14(game:GetService(v53))
                end,
            })
            v12 = 203 - (14 + 188)
        end
        if v12 == (682 - (534 + 141)) then
            v32:AddLabel("Test Result: ", true)
            for v54, v55 in pairs(Abysall.Environment.Results) do
                local v56 = 0
                while true do
                    if v56 == 0 then
                        v55 = v55:gsub("<", "(")
                        v55 = v55:gsub(">", ")")
                        v56 = 1 + 0
                    end
                    if v56 == (1 + 0) then
                        v32:AddLabel(v55, true)
                        break
                    end
                end
            end
            v33 = v22:AddLeftGroupbox("Scripts")
            v33:AddButton("InfiniteYield", {
                ["Text"] = "Infinite Yield",
                ["Default"] = false,
                ["Tooltip"] = "Runs infinite yield.",
                ["Func"] = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                end,
            })
            v12 = 8 + 0
        end
        if v12 == (6 - 3) then
            v24 = Enum.ThumbnailSize.Size420x420
            v25 = Enum.ThumbnailType.HeadShot
            v26 = v15.Players:GetUserThumbnailAsync(v21.UserId, v25, v24)
            v23:AddImage("UserIcon", { ["Image"] = v26 })
            v12 = 4
        end
        if v12 == (1 - 0) then
            v16 = Abysall.Interface.Library
            v17 = Abysall.Interface.SaveManager
            v18 = Abysall.Interface.ThemeManager
            v19 = v16.Toggles
            v12 = 2
        end
    end
end
