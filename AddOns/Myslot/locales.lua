local _, MySlot = ...

local L = setmetatable({}, {
    __index = function(table, key)
        if key then
            table[key] = tostring(key)
        end
        return tostring(key)
    end,
})


MySlot.L = L

--
-- Use http://www.wowace.com/addons/myslot/localization/ to translate thanks
-- 
local locale = GetLocale()

if locale == 'enUs' then
L["[WARN] Ignore unsupported Key Binding [ %s ] , contact %s please"] = true
L["[WARN] Ignore unsupported Slot Type [ %s ] , contact %s please"] = true
L["All slots were restored"] = true
L["Are you SURE to delete '%s'?"] = true
L["Are you SURE to import ?"] = true
L["Bad importing text [CRC32]"] = true
L["Bad importing text [TEXT]"] = true
L["Clear before Import"] = true
L["Close"] = true
L["DANGEROUS"] = true
L["Export"] = true
L["Feedback"] = true
L["Force Import"] = true
L["Ignore during Export"] = true
L["Ignore during Import"] = true
L["Ignore unattained pet [id=%s]"] = true
L["Ignore unknown macro [id=%s]"] = true
L["Ignore unlearned skill [id=%s], %s"] = true
L["Import"] = true
L["Import is not allowed when you are in combat"] = true
L["Key Binding"] = true
L["Macro %s was ignored, check if there is enough space to create"] = true
L["Main Action Bar Page"] = true
L["Minimap Icon"] = true
L["Myslot"] = true
L["Name of exported text"] = true
L["Open Myslot"] = true
L["Please type %s to confirm"] = true
L["Remove all Key Bindings"] = true
L["Remove all Macros"] = true
L["Remove everything in ActionBar"] = true
L["Rename"] = true
L["Skip bad CRC32"] = true
L["Stance Action Bar"] = true
L["Time"] = true
L["TOC_NOTES"] = "Myslot is for transferring settings between accounts. Feedback farmer1992@gmail.com"
L["Try force importing"] = true
L["Unsaved"] = true
L["Use random mount instead of an unattained mount"] = true

elseif locale == 'zhCN' then
L["[WARN] Ignore unsupported Key Binding [ %s ] , contact %s please"] = "[WARN] 忽略不支持的按键绑定 [ %s ]，请通知作者 %s"
L["[WARN] Ignore unsupported Slot Type [ %s ] , contact %s please"] = "[WARN] 忽略不支持的按键类型 [ %s ]，请通知作者 %s"
L["All slots were restored"] = "所有按钮及按键邦定位置恢复完毕"
L["Are you SURE to delete '%s'?"] = "确定要删除 '%s'"
L["Are you SURE to import ?"] = "你确定要导入吗?"
L["Bad importing text [CRC32]"] = "导入文本校验不合法 [CRC32] 通常是没有复制完全"
L["Bad importing text [TEXT]"] = "导入文本校验不合法 [TEXT]"
L["Clear before Import"] = "导入前清空"
L["Close"] = "关闭"
L["DANGEROUS"] = "危险行为"
L["Export"] = "导出"
L["Feedback"] = "问题/建议"
L["Force Import"] = "强制导入"
L["Ignore during Export"] = "导出时忽略"
L["Ignore during Import"] = "导入时忽略"
L["Ignore unattained pet [id=%s]"] = "忽略未获得宠物 [id=%s]"
L["Ignore unknown macro [id=%s]"] = "忽略未知宏 [id=%s]"
L["Ignore unlearned skill [id=%s], %s"] = "忽略未掌握技能[id=%s]：%s"
L["Import"] = "导入"
L["Import is not allowed when you are in combat"] = "请在非战斗时候使用导入功能"
L["Key Binding"] = "快捷键"
L["Macro %s was ignored, check if there is enough space to create"] = "宏 [ %s ] 被忽略，请检查是否有足够的空格创建宏"
L["Main Action Bar Page"] = "主动作条"
L["Minimap Icon"] = "小地图图标"
L["Myslot"] = "Myslot"
L["Name of exported text"] = "导出文本的名字"
L["Open Myslot"] = "打开 Myslot"
L["Please type %s to confirm"] = "请输入 %s 来确认删除"
L["Remove all Key Bindings"] = "删除所有快捷键"
L["Remove all Macros"] = "删除所有宏"
L["Remove everything in ActionBar"] = "清空全部按键摆放"
L["Rename"] = "重命名"
L["Skip bad CRC32"] = "忽略CRC32错误"
L["Stance Action Bar"] = "姿态动作条"
L["Time"] = "时间"
L["TOC_NOTES"] = "Myslot可以帮助你在账号之间共享配置。反馈：farmer1992@gmail.com"
L["Try force importing"] = "尝试强制导入"
L["Unsaved"] = "未保存"
L["Use random mount instead of an unattained mount"] = "使用随机坐骑代替没有获得的坐骑"

elseif locale == 'zhTW' then
L["[WARN] Ignore unsupported Key Binding [ %s ] , contact %s please"] = "[WARN] 忽略不支援的按鍵設置：K = [ %s ] ，請通知作者 %s"
L["[WARN] Ignore unsupported Slot Type [ %s ] , contact %s please"] = "[WARN] 忽略不支援的欄位設置：K = [ %s ] ，請通知作者 %s"
L["All slots were restored"] = "所有按鍵設定都已恢復完畢"
L["Are you SURE to delete '%s'?"] = "你確定要刪除 %s 嗎？" 
L["Are you SURE to import ?"] = "你確定要匯入嗎?"
L["Bad importing text [CRC32]"] = "錯誤的匯入字串[CRC32]"
L["Bad importing text [TEXT]"] = "錯誤的匯入字串[TEXT]"
L["Clear before Import"] = "匯入前清空"
L["Close"] = "關閉"
L["DANGEROUS"] = "危險"
L["Export"] = "匯出"
L["Feedback"] = "反饋"
L["Force Import"] = "強制匯出"
L["Ignore during Export"] = "匯出時忽略"
L["Ignore during Import"] = "匯入時忽略"
L["Ignore unattained pet [id=%s]"] = "忽略沒有的寵物 [id=%s]"
L["Ignore unknown macro [id=%s]"] = "忽略未知的巨集 [id=%s]"
L["Ignore unlearned skill [id=%s], %s"] = "忽略未習得技能 [id=%s], %s"
L["Import"] = "匯入"
L["Import is not allowed when you are in combat"] = "請在非戰鬥狀態時使用匯入功能"
L["Key Binding"] = "按鍵綁定"
L["Macro %s was ignored, check if there is enough space to create"] = "忽略巨集 [%s] ，請檢查是否有足夠的欄位創建新巨集"
L["Main Action Bar Page"] = "主要快捷列分頁"
L["Minimap Icon"] = "小地圖按鈕"
L["Myslot"] = "快速切換快捷列 "
L["My-slot"] = "快捷列-切換"
L["Name of exported text"] = "匯出文字的名稱"
L["Open Myslot"] = "打開主視窗"
L["Please type %s to confirm"] = "請輸入 %s 以進行確認"
L["Remove all Key Bindings"] = "移除全部按鍵綁定"
L["Remove all Macros"] = "移除全部巨集"
L["Remove everything in ActionBar"] = "清除全部快捷列"
L["Rename"] = "重新命名"
L["Skip bad CRC32"] = "略過CRC32錯誤"
L["Stance Action Bar"] = "姿勢型態列"
L["Time"] = "時間"
L["TOC_NOTES"] = "Myslot可以跨帳號綁定技能與按鍵設置。反饋通道：farmer1992@gmail.com"
L["Try force importing"] = "嘗試強制匯入"
L["Unsaved"] = "未保存"
L["Use random mount instead of an unattained mount"] = "使用隨機座騎代替沒有獲得的座騎"

end

