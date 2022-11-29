-- 基础信息
local base_info = {
	group_id = 133002267
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 955, monster_id = 21010501, pos = { x = 1786.154, y = 244.892, z = -657.000 }, rot = { x = 0.000, y = 338.200, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 956, monster_id = 21010501, pos = { x = 1786.752, y = 244.931, z = -659.303 }, rot = { x = 0.000, y = 20.800, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 957, monster_id = 21020101, pos = { x = 1782.783, y = 244.856, z = -659.582 }, rot = { x = 0.000, y = 78.563, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 3 },
	{ config_id = 958, monster_id = 21010901, pos = { x = 1786.608, y = 245.159, z = -665.279 }, rot = { x = 0.000, y = 2.106, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 959, monster_id = 21010901, pos = { x = 1787.228, y = 245.116, z = -663.050 }, rot = { x = 0.000, y = 18.200, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 960, monster_id = 21010601, pos = { x = 1762.038, y = 249.315, z = -663.915 }, rot = { x = 0.000, y = 91.374, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 961, monster_id = 21010601, pos = { x = 1762.174, y = 249.140, z = -662.431 }, rot = { x = 0.000, y = 64.271, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 962, monster_id = 21020201, pos = { x = 1764.779, y = 248.798, z = -660.925 }, rot = { x = 0.000, y = 123.380, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2240, gadget_id = 70220013, pos = { x = 1782.202, y = 245.090, z = -666.607 }, rot = { x = 0.000, y = 328.300, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2241, gadget_id = 70220013, pos = { x = 1780.424, y = 245.115, z = -665.274 }, rot = { x = 0.000, y = 342.900, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2248, gadget_id = 70300106, pos = { x = 1796.350, y = 246.184, z = -661.121 }, rot = { x = 0.000, y = 172.753, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2249, gadget_id = 70300106, pos = { x = 1795.188, y = 246.032, z = -656.700 }, rot = { x = 0.000, y = 173.413, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000346, name = "ANY_MONSTER_DIE_346", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_346", action = "action_EVENT_ANY_MONSTER_DIE_346" },
	{ config_id = 1000347, name = "ANY_MONSTER_LIVE_347", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_347", action = "action_EVENT_ANY_MONSTER_LIVE_347" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 955, 956, 957, 958, 959 },
		gadgets = { 2240, 2241, 2248, 2249 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_346", "ANY_MONSTER_LIVE_347" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_346(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_346(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 961, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 962, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 960, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1775, y=246, z=-659}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1775,y=246,z=-659}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_347(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_347(context, evt)
	-- 通知groupid为133002267中,configid为：962的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 962, 133002267) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133002267中,configid为：960的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 960, 133002267) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133002267中,configid为：961的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 961, 133002267) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end