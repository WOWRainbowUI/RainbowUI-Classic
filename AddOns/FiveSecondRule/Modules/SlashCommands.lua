-- COMMANDS
SLASH_FSR1 = '/fsr'; 

function SlashCmdList.FSR(msg, editbox)
    local cmd = msg:lower()

    if cmd == "unlock" or cmd == "u" then
        print("5 秒回魔監控 - 已解鎖。")
        FiveSecondRule:Unlock()
    end

    if cmd == "lock" or cmd == "l" then
        print("5 秒回魔監控 - 已鎖定。")
        FiveSecondRule:Lock()
    end

    if cmd == "reset" then
        print("5 秒回魔監控 - 已重置所有設定。")
        FiveSecondRule:Reset()
    end
    
    if cmd == "enable" or cmd == "enabled" then
        print("5 秒回魔監控 - 已啟用")
        FiveSecondRule_Options.enabled = true
        FiveSecondRule:Refresh()
    end
    
    if cmd == "disable" or cmd == "disabled" then
        print("5 秒回魔監控 - 已停用")
        FiveSecondRule_Options.enabled = false
        FiveSecondRule:Refresh()
    end

    if cmd == "" or cmd == "help" then
        -- FiveSecondRule:PrintHelp()  
        Settings.OpenToCategory("5 秒回魔監控")
        -- InterfaceOptionsFrame_OpenToCategory(FiveSecondRule.OptionsPanelFrame)
    end
end
