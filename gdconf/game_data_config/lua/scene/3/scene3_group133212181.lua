-- 基础信息
local base_info = {
	group_id = 133212181
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 21020701, pos = { x = -3955.279, y = 230.773, z = -2145.351 }, rot = { x = 0.000, y = 101.894, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 13 },
	{ config_id = 181002, monster_id = 21030601, pos = { x = -3952.728, y = 232.436, z = -2151.741 }, rot = { x = 0.000, y = 162.910, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 13 },
	{ config_id = 181003, monster_id = 21010502, pos = { x = -3933.979, y = 234.649, z = -2144.418 }, rot = { x = 0.000, y = 52.690, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 13 },
	{ config_id = 181004, monster_id = 22010401, pos = { x = -3952.754, y = 233.733, z = -2155.719 }, rot = { x = 0.000, y = 344.920, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 181005, monster_id = 21011601, pos = { x = -3963.402, y = 229.293, z = -2140.891 }, rot = { x = 0.000, y = 118.584, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 13 },
	{ config_id = 181006, monster_id = 21010601, pos = { x = -3963.980, y = 230.057, z = -2144.023 }, rot = { x = 0.000, y = 101.396, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 13 },
	{ config_id = 181020, monster_id = 21010502, pos = { x = -3941.523, y = 238.464, z = -2161.913 }, rot = { x = 0.000, y = 176.550, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 181007, gadget_id = 70300122, pos = { x = -3926.194, y = 228.800, z = -2146.190 }, rot = { x = 0.000, y = 309.891, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181008, gadget_id = 70300090, pos = { x = -3934.119, y = 229.112, z = -2144.549 }, rot = { x = 0.000, y = 231.401, z = 0.000 }, level = 19, area_id = 13 },
	{ config_id = 181009, gadget_id = 70300101, pos = { x = -3922.217, y = 233.216, z = -2162.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 181010, gadget_id = 70300101, pos = { x = -3945.581, y = 229.776, z = -2134.670 }, rot = { x = 0.000, y = 13.680, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 181011, gadget_id = 70300086, pos = { x = -3957.413, y = 230.234, z = -2139.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 13 },
	{ config_id = 181012, gadget_id = 70300086, pos = { x = -3959.282, y = 232.131, z = -2149.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 13 },
	{ config_id = 181013, gadget_id = 70300084, pos = { x = -3952.165, y = 235.422, z = -2162.665 }, rot = { x = 0.000, y = 75.359, z = 0.000 }, level = 19, area_id = 13 },
	{ config_id = 181014, gadget_id = 70300084, pos = { x = -3922.326, y = 232.117, z = -2156.237 }, rot = { x = 0.000, y = 305.346, z = 0.000 }, level = 19, area_id = 13 },
	{ config_id = 181015, gadget_id = 70300084, pos = { x = -3943.038, y = 230.317, z = -2127.708 }, rot = { x = 0.000, y = 297.879, z = 0.000 }, level = 19, area_id = 13 },
	{ config_id = 181018, gadget_id = 70300076, pos = { x = -3936.032, y = 234.570, z = -2166.678 }, rot = { x = 0.000, y = 11.551, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181019, gadget_id = 70300090, pos = { x = -3941.629, y = 233.039, z = -2161.990 }, rot = { x = 0.000, y = 6.299, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181021, gadget_id = 70300089, pos = { x = -3953.194, y = 234.326, z = -2157.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181022, gadget_id = 70300089, pos = { x = -3955.952, y = 232.476, z = -2150.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181023, gadget_id = 70300089, pos = { x = -3947.882, y = 232.140, z = -2152.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181024, gadget_id = 70300107, pos = { x = -3952.696, y = 233.265, z = -2153.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 181025, gadget_id = 70300122, pos = { x = -3924.541, y = 228.939, z = -2147.392 }, rot = { x = 0.000, y = 309.949, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181026, gadget_id = 70300084, pos = { x = -3952.823, y = 235.837, z = -2163.954 }, rot = { x = 23.720, y = 59.286, z = 166.559 }, level = 27, area_id = 13 },
	{ config_id = 181027, gadget_id = 70300086, pos = { x = -3922.213, y = 233.934, z = -2162.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181029, gadget_id = 70300086, pos = { x = -3945.612, y = 230.421, z = -2134.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181030, gadget_id = 70220026, pos = { x = -3944.544, y = 230.392, z = -2130.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181031, gadget_id = 70220013, pos = { x = -3942.844, y = 230.304, z = -2130.068 }, rot = { x = 0.000, y = 343.339, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181032, gadget_id = 70220013, pos = { x = -3944.785, y = 230.404, z = -2128.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181033, gadget_id = 70220013, pos = { x = -3923.073, y = 233.025, z = -2159.088 }, rot = { x = 0.000, y = 292.209, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181034, gadget_id = 70220013, pos = { x = -3924.426, y = 232.445, z = -2157.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181035, gadget_id = 70220014, pos = { x = -3924.656, y = 232.987, z = -2159.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 181036, gadget_id = 70310001, pos = { x = -3955.468, y = 230.432, z = -2141.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 181037, gadget_id = 70310001, pos = { x = -3957.271, y = 231.333, z = -2147.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 181038, gadget_id = 70310001, pos = { x = -3931.909, y = 230.635, z = -2153.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 181039, gadget_id = 70310001, pos = { x = -3939.014, y = 230.392, z = -2151.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1181016, name = "SPECIFIC_GADGET_HP_CHANGE_181016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "181009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_181016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_181016" },
	{ config_id = 1181017, name = "SPECIFIC_GADGET_HP_CHANGE_181017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "181010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_181017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_181017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ison", value = 0, no_refresh = false }
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
		monsters = { 181001, 181002, 181003, 181004, 181020 },
		gadgets = { 181007, 181008, 181009, 181010, 181011, 181012, 181013, 181014, 181015, 181018, 181019, 181021, 181022, 181023, 181024, 181025, 181026, 181027, 181029, 181030, 181031, 181032, 181033, 181034, 181035, 181036, 181037, 181038, 181039 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_181016", "SPECIFIC_GADGET_HP_CHANGE_181017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 181005, 181006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_181016(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_181016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3936.47,y=230.1059,z=-2150.838}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212181, 2)
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_181017(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_181017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3936.47,y=230.1059,z=-2150.838}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212181, 2)
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end