-- 基础信息
local base_info = {
	group_id = 133004265
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 721, monster_id = 21010601, pos = { x = 2603.405, y = 203.685, z = -541.663 }, rot = { x = 0.000, y = 346.334, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 722, monster_id = 21010601, pos = { x = 2613.985, y = 204.272, z = -544.563 }, rot = { x = 0.000, y = 83.586, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 723, monster_id = 21020101, pos = { x = 2609.914, y = 204.013, z = -534.181 }, rot = { x = 0.000, y = 182.490, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 1 },
	{ config_id = 725, monster_id = 20011201, pos = { x = 2614.810, y = 205.707, z = -544.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 727, monster_id = 20011201, pos = { x = 2596.916, y = 202.711, z = -543.053 }, rot = { x = 0.000, y = 63.298, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 728, monster_id = 21020201, pos = { x = 2631.332, y = 204.702, z = -542.549 }, rot = { x = 0.000, y = 269.321, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 },
	{ config_id = 729, monster_id = 21010501, pos = { x = 2633.489, y = 204.658, z = -545.151 }, rot = { x = 0.000, y = 251.944, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 730, monster_id = 21010501, pos = { x = 2636.385, y = 205.000, z = -540.791 }, rot = { x = 0.000, y = 252.191, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1450, gadget_id = 70300102, pos = { x = 2614.557, y = 203.815, z = -544.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1451, gadget_id = 70300102, pos = { x = 2603.587, y = 203.251, z = -541.258 }, rot = { x = 4.201, y = 238.786, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1452, gadget_id = 70300087, pos = { x = 2596.877, y = 202.249, z = -543.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1453, gadget_id = 70300087, pos = { x = 2599.040, y = 202.328, z = -546.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1456, gadget_id = 70300087, pos = { x = 2615.536, y = 204.279, z = -544.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1457, gadget_id = 70300084, pos = { x = 2618.284, y = 203.844, z = -530.219 }, rot = { x = 0.000, y = 295.741, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1458, gadget_id = 70300084, pos = { x = 2611.199, y = 203.600, z = -527.725 }, rot = { x = 0.000, y = 280.847, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1459, gadget_id = 70300084, pos = { x = 2623.866, y = 203.920, z = -536.089 }, rot = { x = 0.064, y = 338.720, z = 0.102 }, level = 1, area_id = 1 },
	{ config_id = 1460, gadget_id = 70300084, pos = { x = 2624.246, y = 203.629, z = -550.801 }, rot = { x = 356.835, y = 11.768, z = 0.120 }, level = 1, area_id = 1 },
	{ config_id = 1461, gadget_id = 70300084, pos = { x = 2620.936, y = 202.936, z = -558.036 }, rot = { x = 357.019, y = 33.713, z = 358.929 }, level = 1, area_id = 1 },
	{ config_id = 1463, gadget_id = 70300078, pos = { x = 2620.986, y = 203.980, z = -537.986 }, rot = { x = 0.000, y = 52.662, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1464, gadget_id = 70300078, pos = { x = 2616.355, y = 203.913, z = -533.473 }, rot = { x = 0.000, y = 30.553, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1465, gadget_id = 70220005, pos = { x = 2602.971, y = 203.708, z = -540.487 }, rot = { x = 0.000, y = 344.226, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1466, gadget_id = 70220005, pos = { x = 2617.855, y = 203.923, z = -535.474 }, rot = { x = 0.000, y = 236.956, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000311, name = "ANY_MONSTER_DIE_311", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311", action = "action_EVENT_ANY_MONSTER_DIE_311" }
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
	rand_suite = false
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
		monsters = { 721, 722, 723, 725, 727 },
		gadgets = { 1450, 1451, 1452, 1453, 1456, 1457, 1458, 1459, 1460, 1461, 1463, 1464, 1465, 1466 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_311(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2615, y=205, z=-545}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2615,y=205,z=-545}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 728, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 729, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 730, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end