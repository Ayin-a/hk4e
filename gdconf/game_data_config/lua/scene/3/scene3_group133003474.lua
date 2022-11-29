-- 基础信息
local base_info = {
	group_id = 133003474
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1638, monster_id = 21010501, pos = { x = 2519.255, y = 202.923, z = -1122.435 }, rot = { x = 0.000, y = 338.200, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 1640, monster_id = 21010501, pos = { x = 2516.671, y = 202.669, z = -1120.113 }, rot = { x = 0.000, y = 128.874, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 1653, monster_id = 21020201, pos = { x = 2504.588, y = 202.984, z = -1135.972 }, rot = { x = 0.000, y = 70.827, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 1 },
	{ config_id = 1654, monster_id = 21010201, pos = { x = 2510.529, y = 202.494, z = -1134.095 }, rot = { x = 0.000, y = 337.425, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1655, monster_id = 21010201, pos = { x = 2516.369, y = 202.543, z = -1132.420 }, rot = { x = 0.000, y = 351.873, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1656, monster_id = 21010601, pos = { x = 2525.887, y = 204.831, z = -1145.989 }, rot = { x = 0.000, y = 32.300, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1657, monster_id = 21010601, pos = { x = 2516.287, y = 204.412, z = -1146.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1658, monster_id = 21020101, pos = { x = 2520.387, y = 204.818, z = -1145.789 }, rot = { x = 0.000, y = 357.815, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4264, gadget_id = 70220013, pos = { x = 2506.130, y = 202.494, z = -1127.798 }, rot = { x = 0.000, y = 328.300, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4275, gadget_id = 70220013, pos = { x = 2507.087, y = 202.156, z = -1124.989 }, rot = { x = 7.332, y = 342.875, z = 359.605 }, level = 1, area_id = 1 },
	{ config_id = 4277, gadget_id = 70300100, pos = { x = 2514.057, y = 202.482, z = -1129.716 }, rot = { x = 0.000, y = 152.300, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4278, gadget_id = 70300100, pos = { x = 2508.946, y = 202.489, z = -1130.577 }, rot = { x = 0.000, y = 122.900, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4454, gadget_id = 70300098, pos = { x = 2518.335, y = 202.812, z = -1121.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000569, name = "ANY_MONSTER_DIE_569", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_569", action = "action_EVENT_ANY_MONSTER_DIE_569" },
	{ config_id = 1000574, name = "ANY_MONSTER_LIVE_574", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_574", action = "action_EVENT_ANY_MONSTER_LIVE_574" }
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
		monsters = { 1638, 1640, 1653, 1654, 1655 },
		gadgets = { 4264, 4275, 4277, 4278, 4454 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_569", "ANY_MONSTER_LIVE_574" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_569(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_569(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1657, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1658, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1656, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2510, y=194, z=-1141}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2510,y=194,z=-1141}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_574(context, evt)
	if 1656 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_574(context, evt)
	-- 通知groupid为133003474中,configid为：1656的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1656, 133003474) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133003474中,configid为：1657的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1657, 133003474) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133003474中,configid为：1658的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1658, 133003474) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end