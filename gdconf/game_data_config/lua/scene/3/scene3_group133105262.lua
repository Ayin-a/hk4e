-- 基础信息
local base_info = {
	group_id = 133105262
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 262001, monster_id = 21010301, pos = { x = 638.903, y = 222.378, z = -479.394 }, rot = { x = 0.000, y = 193.740, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 262002, monster_id = 21010301, pos = { x = 635.719, y = 221.974, z = -480.486 }, rot = { x = 0.000, y = 130.279, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 262003, monster_id = 21020201, pos = { x = 632.957, y = 221.417, z = -474.964 }, rot = { x = 0.000, y = 257.403, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 262004, monster_id = 21010301, pos = { x = 626.398, y = 221.588, z = -484.422 }, rot = { x = 0.000, y = 128.130, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 262005, monster_id = 21010301, pos = { x = 631.876, y = 222.047, z = -486.732 }, rot = { x = 0.000, y = 15.435, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 262006, monster_id = 21011001, pos = { x = 622.492, y = 220.773, z = -453.824 }, rot = { x = 0.000, y = 186.056, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 9 },
	{ config_id = 262007, monster_id = 21011001, pos = { x = 618.794, y = 220.402, z = -455.279 }, rot = { x = 0.000, y = 124.732, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 9 },
	{ config_id = 262008, monster_id = 21020301, pos = { x = 621.388, y = 220.801, z = -456.848 }, rot = { x = 0.000, y = 156.191, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 262011, monster_id = 21011001, pos = { x = 620.005, y = 220.640, z = -452.949 }, rot = { x = 0.000, y = 165.563, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 262009, gadget_id = 70300089, pos = { x = 637.952, y = 222.181, z = -481.916 }, rot = { x = 0.000, y = 99.863, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 262010, gadget_id = 70220013, pos = { x = 638.131, y = 221.758, z = -472.577 }, rot = { x = 0.000, y = 328.271, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 262012, gadget_id = 70300089, pos = { x = 628.324, y = 221.595, z = -485.408 }, rot = { x = 0.000, y = 99.863, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 262013, gadget_id = 70300089, pos = { x = 634.023, y = 222.197, z = -484.798 }, rot = { x = 0.000, y = 122.893, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 262014, gadget_id = 70220013, pos = { x = 641.720, y = 223.053, z = -484.836 }, rot = { x = 0.000, y = 328.271, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 262015, gadget_id = 70220013, pos = { x = 626.591, y = 221.318, z = -490.609 }, rot = { x = 0.000, y = 328.271, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 262016, gadget_id = 70220014, pos = { x = 625.686, y = 221.172, z = -489.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 262019, gadget_id = 70220014, pos = { x = 628.235, y = 221.557, z = -490.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 262020, gadget_id = 70220014, pos = { x = 642.163, y = 223.101, z = -483.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262017, name = "ANY_MONSTER_DIE_262017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_262017", action = "action_EVENT_ANY_MONSTER_DIE_262017" },
	{ config_id = 1262018, name = "ANY_MONSTER_LIVE_262018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_262018", action = "action_EVENT_ANY_MONSTER_LIVE_262018" }
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
		monsters = { 262001, 262002, 262003, 262004, 262005 },
		gadgets = { 262009, 262010, 262012, 262013, 262014, 262015, 262016, 262019, 262020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_262017", "ANY_MONSTER_LIVE_262018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_262017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_262017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=626, y=221, z=-480}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=626,y=221,z=-480}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 262007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 262008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 262006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 262011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_262018(context, evt)
	if 262008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_262018(context, evt)
	-- 通知groupid为133105262中,configid为：262008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 262008, 133105262) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133105262中,configid为：262006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 262006, 133105262) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133105262中,configid为：262007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 262007, 133105262) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end