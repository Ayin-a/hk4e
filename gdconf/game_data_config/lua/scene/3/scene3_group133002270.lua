-- 基础信息
local base_info = {
	group_id = 133002270
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 984, monster_id = 21010601, pos = { x = 2050.124, y = 247.582, z = -446.752 }, rot = { x = 0.000, y = 343.655, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 985, monster_id = 21010601, pos = { x = 2054.915, y = 248.047, z = -450.762 }, rot = { x = 0.000, y = 86.092, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 987, monster_id = 21020201, pos = { x = 2057.090, y = 248.803, z = -437.270 }, rot = { x = 0.000, y = 205.016, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 3 },
	{ config_id = 988, monster_id = 20011201, pos = { x = 2049.470, y = 247.991, z = -445.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 3 },
	{ config_id = 990, monster_id = 20011201, pos = { x = 2057.090, y = 248.547, z = -457.354 }, rot = { x = 0.000, y = 212.906, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 3 },
	{ config_id = 991, monster_id = 21020101, pos = { x = 2039.942, y = 248.298, z = -465.029 }, rot = { x = 0.000, y = 17.884, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 3 },
	{ config_id = 992, monster_id = 21030101, pos = { x = 2036.058, y = 249.450, z = -465.699 }, rot = { x = 0.000, y = 26.737, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 3 },
	{ config_id = 993, monster_id = 21030101, pos = { x = 2041.798, y = 248.037, z = -468.357 }, rot = { x = 0.000, y = 337.034, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2262, gadget_id = 70300102, pos = { x = 2055.676, y = 247.586, z = -450.743 }, rot = { x = 2.494, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2263, gadget_id = 70300102, pos = { x = 2050.423, y = 247.094, z = -446.108 }, rot = { x = 358.833, y = 242.111, z = 357.796 }, level = 1, area_id = 3 },
	{ config_id = 2264, gadget_id = 70300102, pos = { x = 2057.231, y = 247.504, z = -443.878 }, rot = { x = 357.356, y = 307.899, z = 2.590 }, level = 1, area_id = 3 },
	{ config_id = 2265, gadget_id = 70300087, pos = { x = 2054.544, y = 247.400, z = -447.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2266, gadget_id = 70300084, pos = { x = 2061.219, y = 247.977, z = -460.215 }, rot = { x = 0.000, y = 68.689, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2267, gadget_id = 70300084, pos = { x = 2053.431, y = 247.797, z = -461.177 }, rot = { x = 357.667, y = 95.516, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2268, gadget_id = 70300084, pos = { x = 2036.733, y = 248.869, z = -453.963 }, rot = { x = 7.865, y = 133.481, z = 5.076 }, level = 1, area_id = 3 },
	{ config_id = 2269, gadget_id = 70300084, pos = { x = 2064.917, y = 249.197, z = -436.202 }, rot = { x = 356.522, y = 322.473, z = 6.065 }, level = 1, area_id = 3 },
	{ config_id = 2270, gadget_id = 70300084, pos = { x = 2068.812, y = 249.152, z = -442.945 }, rot = { x = 354.819, y = 340.460, z = 4.696 }, level = 1, area_id = 3 },
	{ config_id = 2271, gadget_id = 70300077, pos = { x = 2057.875, y = 248.829, z = -434.983 }, rot = { x = 0.000, y = 19.273, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2272, gadget_id = 70300078, pos = { x = 2060.604, y = 248.088, z = -458.069 }, rot = { x = 0.000, y = 329.879, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2273, gadget_id = 70300078, pos = { x = 2053.908, y = 247.972, z = -458.390 }, rot = { x = 0.000, y = 4.523, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2276, gadget_id = 70300087, pos = { x = 2057.041, y = 248.094, z = -457.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2277, gadget_id = 70300087, pos = { x = 2054.281, y = 247.800, z = -441.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2278, gadget_id = 70300087, pos = { x = 2049.403, y = 247.548, z = -445.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2279, gadget_id = 70220005, pos = { x = 2057.729, y = 247.969, z = -443.753 }, rot = { x = 0.000, y = 55.925, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 2280, gadget_id = 70220005, pos = { x = 2056.269, y = 248.048, z = -450.722 }, rot = { x = 0.000, y = 110.439, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000351, name = "ANY_MONSTER_DIE_351", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_351", action = "action_EVENT_ANY_MONSTER_DIE_351" }
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
		monsters = { 984, 985, 987, 988, 990 },
		gadgets = { 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271, 2272, 2273, 2276, 2277, 2278, 2279, 2280 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_351" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_351(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_351(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2044, y=247, z=-448}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2044,y=247,z=-448}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 991, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 992, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 993, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end