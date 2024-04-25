
local L = LibStub('AceLocale-3.0'):NewLocale('MeetingHorn', 'zhTW')
if not L then return end

--@localization(locale=""zhTW", format="lua_additive_table", table-name="L", same-key-is-true=true)@

L.ADDON_NAME = '集結號'

L['Leader'] = '隊長'
L['Comment'] = '說明'
L['Operation'] = '操作'

L['Activity'] = '活動類型'
L['Activity Mode'] = '活動模式'
L['Mode'] = '模式'
L['Activity Comment'] = '活動說明'
L['Manage Activity'] = '管理活動'
L['Choice Activity...'] = '選擇活動類型...'
L['Choice Mode...'] = '選擇活動模式...'
L['Create Activity'] = '建立活動'
L['Search Activity'] = '尋找活動'
L['Close Activity'] = '解散活動'
L['Update Activity'] = '更新活動'
L['Members'] = '隊伍人數'
L['Whisper'] = '密語'
L['Encounter'] = '冒險指南'
L['Recent members'] = '最近隊友'
L['Instance Name'] = '副本名稱'
L['Invite All'] = '全部邀請'
L['职责攻略'] = '職責攻略'
L['技能'] = '技能'
L['Challenge'] = '挑戰活動'

L['Help'] = '幫助'
L['Manage'] = '管理'
L['Chat Record'] = '聊天記錄'
L['Feedback'] = '用戶反饋'
L['Feedback was submitted successfully.'] = '提交反饋成功。'
L['Requires Level %s'] = '需要等級%s'
L['Requires Class %s'] = '需要職業%s'
L['Requires Zone City'] = '需要處於城市中'

-- 活動

L.CATEGORY_QUEST = '任務'
L.CATEGORY_RAID = '團隊副本'
L.CATEGORY_DUNGEON = '地下城'
L.CATEGORY_BOSS = '世界首領'
L.CATEGORY_PVP = 'PvP'
L.CATEGORY_PORT = '傳送門'
L.CATEGORY_SUMMON = '召喚儀式'
L.CATEGORY_RECRUIT = '招募'

L.SUMMARY_NEW_VERSION = [[|cff00ffff%s|r：
發現新版本：%s，請及時下載更新
下載鏈接：%s]]

-- L['Quest'] = '任務'
-- L['Raid'] = '團隊副本'
-- L['Dungeon'] = '地下城'
-- L['Boss'] = '世界首領'
-- L['PvP'] = true
-- L['Trade'] = '交易'

L['Sell'] = '出售'
L['Buy'] = '購買'

L['<Double-Click> Whisper to player'] = '<雙擊>密語'
L['<Right-Click> Open activity menu'] = '<右鍵>打開活動菜單'
L['(Include channel message)'] = '(包含頻道聊天)'
L['Applicanted'] = '已申請'

L['|cff00ffff%s|r instance already exists, continue to create?'] = '|cff00ffff%s|r進度已存在，是否要繼續建立?'
L['Update activity success.'] = '更新活動成功。'
L['Create acitivty success.'] = '建立活動成功。'
L['Activity closed.'] = '活動已解散。'
L['There are no activity, please try searching.'] =
    '當前沒有集結號活動，\n請嘗試在上方搜尋框中直接搜尋關鍵字。'
L['Receiving active data, please wait patiently'] = '正在接收活動數據，請耐心等待 ...'

L['Applicant Count'] = '申請人數'
L['Application Count'] = '申請中活動'
L['Activity Count'] = '活動總數'

L['Toggle MeetingHorn'] = '顯示/隱藏集結號'
L['Toggle MeetingHorn key binding'] = '顯示/隱藏集結號的按鍵綁定'
L['按键已绑定到|cffffd100%s|r，你确定要覆盖吗？'] = '按鍵已綁定到|cffffd100%s|r，是否確定要覆蓋?'

L['Options'] = '設定選項'
L['启用关键字过滤'] = '啟用關鍵字過濾'
L['关键字过滤'] = '關鍵字過濾'
L['导入'] = '匯入'
L['导出'] = '匯出'
L['导入关键字'] = '匯入關鍵字'
L['导出关键字'] = '匯出關鍵字'
L['请输入需要屏蔽的关键字'] = '請輸入需要屏蔽的關鍵字'
L['匹配?'] = '匹配?'
L['添加失败，关键字错误。'] = '添加失敗，關鍵字錯誤。'
L['添加失败，关键字“%s”已存在。'] = '添加失敗，關鍵字“%s”已存在。'
L['添加成功，关键字“%s”已添加。'] = '添加成功，關鍵字“%s”已添加。'
L['删除失败，关键字错误。'] = '刪除失敗，關鍵字錯誤。'
L['删除失败，关键字“%s”不存在。'] = '刪除失敗，關鍵字“%s”不存在。'
L['删除成功，关键字“%s”已删除。'] = '刪除成功，關鍵字“%s”已刪除。'

L['Show data broker'] = '顯示畫面上方的浮動資訊'
L['Hide activity in chat frame'] = '隱藏聊天窗口內的集結號活動'

L.HELP_COMMENT = [[|cffffd100使用說明|r
1. 集結號剛打開的時候是有短暫收集數據的時間，還請您耐心等待。
2. 鼠標懸浮在插件上是只接受不刷新活動的，當你鼠標離開插件區域時活動將繼續刷新。
3. 如果遇到不喜歡看到的活動或者團長，您可以在設置中添加屏蔽功能，屏蔽功能支持Lua匹配模式。
4. 在設置中可以添加或者隱藏集結號的懸浮窗，同樣也可以設置快捷鍵快速調出集結號界面。]]

L['CHANNEL: Port'] = '傳送頻道'
L['CHANNEL: Trade'] = '交易'
L['CHANNEL: Group'] = 'MeetingHorn'
L['CHANNEL: Recruit'] = '公會招募'
L['Arena (5v5)'] = '競技場（5v5）'
L['Arena (3v3)'] = '競技場（3v3）'
L['Arena (2v2)'] = '競技場（2v2）'
L['Wild PvP'] = '野外PvP'
L['Dire Maul - North'] = '厄運之槌 - 北' -- 厄運之槌 - 北
L['Dire Maul - West'] = '厄運之槌 - 西' -- 厄運之槌 - 西
L['Dire Maul - East'] = '厄運之槌 - 東' -- 厄運之槌 - 東
L['Upper Blackrock Spire'] = '黑石塔上層' -- 黑石塔上層
L['Lower Blackrock Spire'] = '黑石塔下層' -- 黑石塔下層
L['Scarlet Monastery - Cathedral'] = '血色修道院 - 大教堂' -- 血色修道院 - 大教堂
L['Scarlet Monastery - Armory'] = '血色修道院 - 軍械庫' -- 血色修道院 - 軍械庫
L['Scarlet Monastery - Library'] = '血色修道院 - 圖書館' -- 血色修道院 - 圖書館
L['Scarlet Monastery - Graveyard'] = '血色修道院 - 墓地' -- 血色修道院 - 墓地

L['Lord Kazzak'] = '卡紮克' -- 卡紮克
L['Azuregos'] = '艾索雷葛斯' -- 艾索雷葛斯
L['Ysondre'] = '伊森德雷' -- 伊森德雷
L['Taerar'] = '泰拉爾' -- 泰拉爾
L['Emeriss'] = '艾莫莉絲' -- 艾莫莉絲
L['Lethon'] = '萊索恩' -- 萊索恩

L['Ahn\'Qiraj Temple'] = '安其拉神殿'

L['SHORT: Molten Core'] = 'MC' -- 熔火之心
L['SHORT: Onyxia\'s Lair'] = '黑龍' -- 奧妮克希亞的巢穴
L['SHORT: Blackwing Lair'] = 'BWL' -- 黑翼之巢
L['SHORT: Ahn\'Qiraj Temple'] = 'TAQ' -- 安其拉神殿
L['SHORT: Naxxramas'] = 'NAXX' -- 納克薩瑪斯
L['SHORT: Zul\'Gurub'] = 'ZUG' -- 祖爾格拉布
L['SHORT: Ruins of Ahn\'Qiraj'] = '廢墟' -- 安其拉廢墟
L['SHORT: Stratholme'] = 'STSM' -- 斯坦索姆
L['SHORT: Scholomance'] = 'TL' -- 通靈學院
L['SHORT: Dire Maul - North'] = '厄運北' -- 厄運之槌 - 北
L['SHORT: Dire Maul - West'] = '厄運西' -- 厄運之槌 - 西
L['SHORT: Dire Maul - East'] = '厄運東' -- 厄運之槌 - 東
L['SHORT: Upper Blackrock Spire'] = '黑上' -- 黑石塔上層
L['SHORT: Lower Blackrock Spire'] = '黑下' -- 黑石塔下層
L['SHORT: Blackrock Depths'] = '' -- 黑石深淵
L['SHORT: The Temple of Atal\'Hakkar'] = '神廟' -- 阿塔哈卡神廟
L['SHORT: Maraudon'] = 'MLD' -- 瑪拉頓
L['SHORT: Zul\'Farrak'] = 'ZUL' -- 祖爾法拉克
L['SHORT: Uldaman'] = 'ADM' -- 奧達曼
L['SHORT: Razorfen Downs'] = '' -- 剃刀高地
L['SHORT: Scarlet Monastery - Cathedral'] = '' -- 血色修道院 - 大教堂
L['SHORT: Scarlet Monastery - Armory'] = '' -- 血色修道院 - 軍械庫
L['SHORT: Scarlet Monastery - Library'] = '' -- 血色修道院 - 圖書館
L['SHORT: Scarlet Monastery - Graveyard'] = '' -- 血色修道院 - 墓地
L['SHORT: Razorfen Kraul'] = '' -- 剃刀沼澤
L['SHORT: Gnomeregan'] = '' -- 諾莫瑞根
L['SHORT: The Stockade'] = '' -- 監獄
L['SHORT: Blackfathom Deeps'] = '' -- 黑暗深淵
L['SHORT: Shadowfang Keep'] = '' -- 影牙城堡
L['SHORT: Wailing Caverns'] = '' -- 哀嚎洞穴
L['SHORT: Deadmines'] = '' -- 死亡礦井
L['SHORT: Ragefire Chasm'] = '' -- 怒焰裂谷
L['SHORT: Alterac Valley'] = '奧山' -- 奧特蘭克山谷
L['SHORT: Warsong Gulch'] = '戰歌' -- 戰歌峽谷
L['SHORT: Arathi Basin'] = '阿拉希' -- 阿拉希盆地
L['SHORT: Lord Kazzak'] = '' -- 卡紮克
L['SHORT: Azuregos'] = '藍龍' -- 艾索雷葛斯
L['SHORT: Ysondre'] = '' -- 伊森德雷
L['SHORT: Taerar'] = '' -- 泰拉爾
L['SHORT: Emeriss'] = '' -- 艾莫莉絲
L['SHORT: Lethon'] = '' -- 萊索恩

L.TIP_SUMMARY = [[1. 盡量和熟悉的團長一起遊戲。
2. 團長的個人信息越多，就越值得信任。
3. 盡量不要在沒拿到裝備的時候產生任何交易。
4. 一般來說，大公會的團長更值得依賴。
5. 經常開團的團長裝備不會太差。
6. 如果您遇到了被黑金黑裝備的情況，
   請及時聯系遊戲內GM進行舉報。]]

L.TIP_TITLE = [[溫馨提示：]]

L['玛丁雷少校'] = '瑪丁雷少校'
L['暴风城的城民和盟友们'] = '暴風城的城民和盟友們'
L['看看强大的联盟吧'] = '看看強大的聯盟吧'
L['艾法希比元帅'] = '艾法希比元帥'
L['联盟的人民们'] = '聯盟的人民們'
L['兴奋起来'] = '興奮起來'
L['伦萨克'] = '倫薩克'
L['部落的人民，奥格瑞玛的居民'] = '部落的人民，奧格瑞瑪的居民'
L['在屠龙大军的战斗号角声中精神抖擞地前进吧'] = '在屠龍大軍的戰鬥號角聲中精神抖擻地前進吧'
L['萨鲁法尔大王'] = '薩魯法爾大王'
L['奈法利安被杀掉了'] = '奈法利安被殺掉了'
L['为他的胜利而狂欢吧'] = '為他的勝利而狂歡吧'
L['萨尔'] = '薩爾'
L['奈法利安被杀掉了'] = '奈法利安被殺掉了'
L['为他的胜利而狂欢吧'] = '為他的勝利而狂歡吧'
L['为你们的英雄而欢庆'] = '為你們的英雄而歡慶'
L['沐浴在我的力量中吧'] = '沐浴在我的力量中吧'

L['二维码尺寸过小'] = "QR Code 太小"
L['加载中'] = "載入中"

L['欢迎来到%s，打开集结号查看|cff47e53d|Hmeetinghornencounter:%s|h[Boss击杀攻略]|r。'] = '歡迎來到%s，打開集結號查看|cff47e53d|Hmeetinghornencounter:%s|h[Boss擊殺攻略]|r。'
L['你在与[%s]的战斗中阵亡，|cff00ffff|Hmeetinghornencounter:%s:%s:%s|h[点击查看Boss攻略]|h|r。'] = '你在與[%s]的戰鬥中陣亡，|cff00ffff|Hmeetinghornencounter:%s:%s:%s|h[點擊查看Boss攻略]|h|r。'
L['近战输出者预警'] = '近戰輸出者預警'
L['远程输出者预警'] = '遠程輸出者預警'

L['INVALID_GUID'] = '角色ID錯誤'
L['NO_ACTIVE_ACTIVITY '] = '當前沒有挑戰任務'
L['ACTIVITY_NOT_FINISH'] = '任務尚未完成'
L['ACTIVITY_REWARD_FETCHED '] = '任務獎勵已領取'
L['ACTIVITY_FETCH_REWARD_FAILED '] = '領取任務獎勵失敗'
L['ACTIVITY_REWARD_OUT_OF_DATE'] = '任務獎勵領取過期'
L['ACTIVITY_INVALID_FETCH_CONDITION'] = '任務領取條件未達成'
L['ADDON_UPDATED'] = '請更新至最新版本後參與挑戰活動'

L.CHALLENGE_RULES =
    [[●本次活動所有獎勵均在插件上兌換領取，不安裝插件的玩家將無法兌換相應的獎勵；
●活動到期後，擊殺或經驗值將不再被計入本次活動。已完成活動目標的玩家，仍可以在2周內繼續領取；
●同一種虛擬物品獎勵，每個角色只能領取一次，不同挑戰活動的不同虛擬物品獎勵，每個角色達到挑戰目標後都可以領取，不同角色可以重覆參與活動並在達到挑戰目標後領取對應的虛擬物品獎勵；
●若在72小時內獎勵並沒有發放至遊戲角色郵箱，請聯系人工客服進行反饋；
●本次挑戰活動由於數量較大，當您擊殺Boss後，請點擊進度條上的【刷新進度】按鈕查看最新進度，刷新後每30分鐘更新一次數據結果；]]

L['Activities List'] = '活動列表'
L['Current Activity'] = '當前活動'
L['Last Activity'] = '往期活動'
L['Last Activity %s'] = '往期活動%s'

-- 自行加入
L['好团长'] = '好團長'