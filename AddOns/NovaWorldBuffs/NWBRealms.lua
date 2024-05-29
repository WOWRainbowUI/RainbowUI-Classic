--------------------------------------
---NovaWorldBuffs classic realm list--
--------------------------------------

local addonName, addon = ...;
local NWB = addon.a;
--A list of layered realms, split up between classic era and TBC.
function NWB:setRealmData()
	if (NWB.expansionNum > 1) then
		NWB.usRealms = {
			--OCE.
			["Arugal"] = true,
			["Remulos"] = true,
			["Yojamba"] = true,
			--US.
			["Benediction"] = true,
			["Earthfury"] = true,
			["Faerlina"] = true,
			["Fairbanks"] = true,
			["Herod"] = true,
			["Pagle"] = true,
			["Sulfuras"] = true,
			["Whitemane"] = true,
			["Grobbulus"] = true,
			["Mankrik"] = true,
			["Westfall"] = true,
			["Atiesh"] = true,
			["Bigglesworth"] = true,
			["Kromcrush"] = true,
			["Bloodsail Buccaneers"] = true,
			["Netherwind"] = true,
			["Skeram"] = true,
			["Kromcrush"] = true,
			["Myzrael"] = true,
			["Rattlegore"] = true,
			["Windseeker"] = true,
			["Blaumeux"] = true,
			["Ashkandi"] = true,
			["Heartseeker"] = true,
		}
		
		NWB.euRealms = {
			["Auberdine"] = true,
			["Ashbringer"] = true,
			["Firemaw"] = true,
			["Flamegor"] = true,
			["Gehennas"] = true,
			["Golemagg"] = true,
			["Mograine"] = true,
			["Sulfuron"] = true,
			["Venoxis"] = true,
			["Пламегор"] = true,
			["Earthshaker"] = true,
			["Shazzrah"] = true,
			["Mirage Raceway"] = true,
			["Pyrewood Village"] = true,
			["Noggenfogger"] = true,
			["Razorfen"] = true,
			["Razorgore"] = true,
			["Gandling"] = true,
			["Patchwerk"] = true,
			["Amnennar"] = true,
			["Lakeshire"] = true,
			["Transcendence"] = true,
			["Nethergarde Keep"] = true,
			["Everlook"] = true,
			["Heartstriker"] = true,
			["Mandokir"] = true,
			["Amnennar"] = true,
			["Blaumeux"] = true,
			["Zandalar Tribe"] = true,
			["Dragon's Call"] = true,
			["Finkle"] = true,
			["Lucifron"] = true,
			["Dreadmist"] = true,
			["Heartstriker"] = true,
			["Bloodfang"] = true,
		}
		
		NWB.krRealms = {
			["로크홀라"] = true,
			["얼음피"] = true,
			["힐스브래드"] = true,
			["라그나로스"] = true,
			["소금 평원"] = true,
		}
		
		NWB.twRealms = {
			["伊弗斯"] = true,
			["瑪拉頓"] = true,
		}
		
		NWB.cnRealms = {
			["匕首岭"] = true,
			["乌洛克"] = true,
			["厄运之槌"] = true,
			["巴罗夫"] = true,
			["无尽风暴"] = true,
			["无畏"] = true,
			["木喉要塞"] = true,
			["比格沃斯"] = true,
			["比斯巨兽"] = true,
			["水晶之牙"] = true,
			["火锤"] = true,
			["加丁"] = true,
			["巨人追猎者"] = true,
			["巨龙沼泽"] = true,
			["巨龙追猎者"] = true,
			["布劳缪克丝"] = true,
			["布鲁"] = true,
			["弗莱拉斯"] = true,
			["末日之刃"] = true,
			["龙之召唤"] = true,
			["龙牙"] = true,
			["伊森迪奥斯"] = true,
			["伦鲁迪洛尔"] = true,
			["光芒"] = true,
			["吉兹洛克"] = true,
			["安娜丝塔丽"] = true,
			["灰烬使者"] = true,
			["艾隆纳亚"] = true,
			["克罗米"] = true,
			["希尔盖"] = true,
			["怀特迈恩"] = true,
			["沙尔图拉"] = true,
			["沙顶"] = true,
			["灵风"] = true,
			["狂野之刃"] = true,
			["辛洛斯"] = true,
			["辛迪加"] = true,
			["迈克斯纳"] = true,
			["卓越"] = true,
			["审判"] = true,
			["帕奇维克"] = true,
			["拉姆斯登"] = true,
			["法尔班克斯"] = true,
			["法拉克斯"] = true,
			["法琳娜"] = true,
			["觅心者"] = true,
			["阿什坎迪"] = true,
			["阿拉希盆地"] = true,
			["阿鲁高"] = true,
			["哈霍兰"] = true,
			["奎尔塞拉"] = true,
			["娅尔罗"] = true,
			["怒炉"] = true,
			["狮心"] = true,
			["祈福"] = true,
			["范克瑞斯"] = true,
			["范克瑞斯"] = true,
			["范沃森"] = true,
			["埃提耶什"] = true,
			["席瓦莱恩"] = true,
			["神谕林地"] = true,
			["秩序之源"] = true,
			["诺克赛恩"] = true,
			["诺格弗格"] = true,
			["骨火"] = true,
			["曼多基尔"] = true,
			["维克尼拉斯"] = true,
			["维克托"] = true,
			["维克洛尔"] = true,
			["维希度斯"] = true,
			["莫格莱尼"] = true,
			["奥罗"] = true,
			["奥金斧"] = true,
			["寒冰之王"] = true,
			["寒脊山小径"] = true,
			["湖畔镇"] = true,
			["黑曜石之锋"] = true,
			["塞卡尔"] = true,
			["塞雷布拉斯"] = true,
			["毁灭之刃"] = true,
			["萨弗拉斯"] = true,
			["萨弗隆"] = true,
			["雷德"] = true,
			["雷霆之击"] = true,
			["碧玉矿洞"] = true,
			["碧空之歌"] = true,
			["赫洛德"] = true,
			["德姆塞卡尔"] = true,
			["震地者"] = true,
			["霜语"] = true,
		}
	else
		NWB.usRealms = {
			--["Arugal"] = true,
			--RP era server, no linked realms, full and layered.
			["Bloodsail Buccaneers"] = true,
			--Main west era cluster of linked realms, full and layered.
			["Arcanite Reaper"] = true,
			["Anathema"] = true,
			["Thunderfury"] = true,
			["Smolderweb"] = true,
			["Fairbanks"] = true,
			["Rattlegore"] = true,
			["Kurinnaxx"] = true,
			["Bigglesworth"] = true,
			["Blaumeux"] = true,
			["Whitemane"] = true,
			--Main east era cluster of linked realms, full and layered.
			["Ashkandi"] = true,
			["Mankrik"] = true,
			["Pagle"] = true,
			["Westfall"] = true,
			["Windseeker"] = true,
		}
		
		NWB.euRealms = {
			--RP era server, no linked realms, full and layered.
			["Hydraxian Waterlords"] = true,
			--Main era cluster of linked realms, full and layered.
			["Dragonfang"] = true,
			["Ashbringer"] = true,
			["Firemaw"] = true,
			["Earthshaker"] = true,
			["Bloodfang"] = true,
			["Golemagg"] = true,
			["Mograine"] = true,
			["Skullflame"] = true,
			["Noggenfogger"] = true,
			["Gandling"] = true,
		}
		
		NWB.krRealms = {
			["로크홀라"] = true,
			["얼음피"] = true,
			["힐스브래드"] = true,
			["라그나로스"] = true,
			["소금 평원"] = true,
		}
		
		NWB.twRealms = {
			["伊弗斯"] = true,
			["瑪拉頓"] = true,
		}
		
		NWB.cnRealms = {
			["匕首岭"] = true,
			["乌洛克"] = true,
			["厄运之槌"] = true,
			["巴罗夫"] = true,
			["无尽风暴"] = true,
			["无畏"] = true,
			["木喉要塞"] = true,
			["比格沃斯"] = true,
			["比斯巨兽"] = true,
			["水晶之牙"] = true,
			["火锤"] = true,
			["加丁"] = true,
			["巨人追猎者"] = true,
			["巨龙沼泽"] = true,
			["巨龙追猎者"] = true,
			["布劳缪克丝"] = true,
			["布鲁"] = true,
			["弗莱拉斯"] = true,
			["末日之刃"] = true,
			["龙之召唤"] = true,
			["龙牙"] = true,
			["伊森迪奥斯"] = true,
			["伦鲁迪洛尔"] = true,
			["光芒"] = true,
			["吉兹洛克"] = true,
			["安娜丝塔丽"] = true,
			["灰烬使者"] = true,
			["艾隆纳亚"] = true,
			["克罗米"] = true,
			["希尔盖"] = true,
			["怀特迈恩"] = true,
			["沙尔图拉"] = true,
			["沙顶"] = true,
			["灵风"] = true,
			["狂野之刃"] = true,
			["辛洛斯"] = true,
			["辛迪加"] = true,
			["迈克斯纳"] = true,
			["卓越"] = true,
			["审判"] = true,
			["帕奇维克"] = true,
			["拉姆斯登"] = true,
			["法尔班克斯"] = true,
			["法拉克斯"] = true,
			["法琳娜"] = true,
			["觅心者"] = true,
			["阿什坎迪"] = true,
			["阿拉希盆地"] = true,
			["阿鲁高"] = true,
			["哈霍兰"] = true,
			["奎尔塞拉"] = true,
			["娅尔罗"] = true,
			["怒炉"] = true,
			["狮心"] = true,
			["祈福"] = true,
			["范克瑞斯"] = true,
			["范克瑞斯"] = true,
			["范沃森"] = true,
			["埃提耶什"] = true,
			["席瓦莱恩"] = true,
			["神谕林地"] = true,
			["秩序之源"] = true,
			["诺克赛恩"] = true,
			["诺格弗格"] = true,
			["骨火"] = true,
			["曼多基尔"] = true,
			["维克尼拉斯"] = true,
			["维克托"] = true,
			["维克洛尔"] = true,
			["维希度斯"] = true,
			["莫格莱尼"] = true,
			["奥罗"] = true,
			["奥金斧"] = true,
			["寒冰之王"] = true,
			["寒脊山小径"] = true,
			["湖畔镇"] = true,
			["黑曜石之锋"] = true,
			["塞卡尔"] = true,
			["塞雷布拉斯"] = true,
			["毁灭之刃"] = true,
			["萨弗拉斯"] = true,
			["萨弗隆"] = true,
			["雷德"] = true,
			["雷霆之击"] = true,
			["碧玉矿洞"] = true,
			["碧空之歌"] = true,
			["赫洛德"] = true,
			["德姆塞卡尔"] = true,
			["震地者"] = true,
			["霜语"] = true,
		}
	end
end