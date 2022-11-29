-- 基础信息
local base_info = {
	group_id = 133001306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1311, monster_id = 21010201, pos = { x = 1881.463, y = 195.773, z = -1548.085 }, rot = { x = 0.000, y = 175.866, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1312, monster_id = 21010201, pos = { x = 1876.071, y = 195.972, z = -1547.714 }, rot = { x = 0.000, y = 195.412, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1313, monster_id = 21020101, pos = { x = 1871.889, y = 196.329, z = -1546.561 }, rot = { x = 0.000, y = 198.959, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 2 },
	{ config_id = 1314, monster_id = 21010201, pos = { x = 1872.010, y = 196.591, z = -1548.796 }, rot = { x = 0.000, y = 70.036, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1315, monster_id = 21010201, pos = { x = 1880.950, y = 195.849, z = -1550.253 }, rot = { x = 0.000, y = 43.132, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1316, monster_id = 21010601, pos = { x = 1891.967, y = 197.454, z = -1533.523 }, rot = { x = 0.000, y = 203.061, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1317, monster_id = 21010601, pos = { x = 1893.873, y = 197.651, z = -1533.583 }, rot = { x = 0.000, y = 219.048, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1318, monster_id = 21020201, pos = { x = 1894.147, y = 197.538, z = -1536.272 }, rot = { x = 0.000, y = 230.028, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3238, gadget_id = 70220013, pos = { x = 1883.948, y = 195.764, z = -1546.506 }, rot = { x = 355.551, y = 328.316, z = 359.597 }, level = 1, area_id = 2 },
	{ config_id = 3239, gadget_id = 70220013, pos = { x = 1867.543, y = 196.085, z = -1542.016 }, rot = { x = 5.570, y = 343.044, z = 2.960 }, level = 1, area_id = 2 },
	{ config_id = 3241, gadget_id = 70300100, pos = { x = 1874.828, y = 196.110, z = -1549.153 }, rot = { x = 0.000, y = 152.300, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3242, gadget_id = 70300100, pos = { x = 1881.431, y = 195.735, z = -1549.558 }, rot = { x = 0.000, y = 122.900, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000467, name = "ANY_MONSTER_DIE_467", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_467", action = "action_EVENT_ANY_MONSTER_DIE_467" },
	{ config_id = 1000468, name = "ANY_MONSTER_LIVE_468", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_468", action = "action_EVENT_ANY_MONSTER_LIVE_468" }
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
		monsters = { 1311, 1312, 1313, 1314, 1315 },
		gadgets = { 3238, 3239, 3241, 3242 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_467", "ANY_MONSTER_LIVE_468" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_467(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_467(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1317, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1318, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1316, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1868, y=196, z=-1548}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1868,y=196,z=-1548}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_468(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_468(context, evt)
	-- 通知groupid为133001306中,configid为：1318的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1318, 133001306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133001306中,configid为：1316的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1316, 133001306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133001306中,configid为：1317的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1317, 133001306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end