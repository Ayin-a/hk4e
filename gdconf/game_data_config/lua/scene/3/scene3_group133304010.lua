-- 基础信息
local base_info = {
	group_id = 133304010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10001, gadget_id = 70290538, pos = { x = -1139.212, y = 161.390, z = 2197.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330400018, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 10003, gadget_id = 70290538, pos = { x = -1139.212, y = 155.681, z = 2197.820 }, rot = { x = 0.000, y = 335.000, z = 0.000 }, level = 30, route_id = 330400019, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- 中水位特效
	{ config_id = 10007, gadget_id = 70290470, pos = { x = -1132.421, y = 155.681, z = 2123.626 }, rot = { x = 0.000, y = 0.423, z = 0.000 }, level = 30, area_id = 21 },
	-- 低水位特效
	{ config_id = 10008, gadget_id = 70290470, pos = { x = -1132.728, y = 150.758, z = 2124.211 }, rot = { x = 359.333, y = 3.586, z = 359.556 }, level = 30, area_id = 21 },
	-- 高水位特效
	{ config_id = 10014, gadget_id = 70290470, pos = { x = -1133.017, y = 161.390, z = 2123.029 }, rot = { x = 0.000, y = 4.952, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 10015, gadget_id = 70290538, pos = { x = -1139.212, y = 150.758, z = 2197.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330400019, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 到达低水位，只留一个特效
	{ config_id = 1010002, name = "PLATFORM_REACH_POINT_10002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_10002", action = "action_EVENT_PLATFORM_REACH_POINT_10002", trigger_count = 0 },
	-- 通知高到中
	{ config_id = 1010004, name = "VARIABLE_CHANGE_10004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10004", action = "action_EVENT_VARIABLE_CHANGE_10004", trigger_count = 0 },
	-- 通知中到低
	{ config_id = 1010005, name = "VARIABLE_CHANGE_10005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10005", action = "action_EVENT_VARIABLE_CHANGE_10005", trigger_count = 0 },
	-- 保底让水位从上到中
	{ config_id = 1010006, name = "GROUP_LOAD_10006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10006", action = "action_EVENT_GROUP_LOAD_10006", trigger_count = 0 },
	-- 保底让水位从中到下
	{ config_id = 1010009, name = "GROUP_LOAD_10009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10009", action = "action_EVENT_GROUP_LOAD_10009", trigger_count = 0 },
	-- 到达低水位，只留一个特效
	{ config_id = 1010010, name = "PLATFORM_REACH_POINT_10010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_10010", action = "action_EVENT_PLATFORM_REACH_POINT_10010", trigger_count = 0 },
	-- 怪操作玩家保底，直接高到低
	{ config_id = 1010011, name = "VARIABLE_CHANGE_10011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10011", action = "action_EVENT_VARIABLE_CHANGE_10011", trigger_count = 0 },
	-- 怪操作玩家保底，让水位从上到低
	{ config_id = 1010013, name = "GROUP_LOAD_10013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10013", action = "action_EVENT_GROUP_LOAD_10013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "move1", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1010012, name = "PLATFORM_REACH_POINT_10012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_10012", action = "action_EVENT_PLATFORM_REACH_POINT_10012", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { },
		gadgets = { 10001, 10014 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_10004", "GROUP_LOAD_10006", "PLATFORM_REACH_POINT_10010", "VARIABLE_CHANGE_10011", "GROUP_LOAD_10013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 低水位的suite（最终）,
		monsters = { },
		gadgets = { 10008, 10015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 中水位的suite,
		monsters = { },
		gadgets = { 10003, 10007 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_10002", "VARIABLE_CHANGE_10005", "GROUP_LOAD_10009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_10002(context, evt)
	-- 判断是gadgetid 为 10003的移动平台，是否到达了330400019 的路线中的 1 点
	
	if 10003 ~= evt.param1 then
	  return false
	end
	
	if 330400019 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_10002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"move1"为1
	if ScriptLib.GetGroupVariableValue(context, "move1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 10001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"move1"为2
	if ScriptLib.GetGroupVariableValue(context, "move1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10005(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 10003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "qsuite" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "qsuite", 1, 133304189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10006(context, evt)
	-- 判断变量"move1"为1
	if ScriptLib.GetGroupVariableValue(context, "move1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304010, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10009(context, evt)
	-- 判断变量"move1"为2
	if ScriptLib.GetGroupVariableValue(context, "move1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "qsuite" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "qsuite", 1, 133304189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_10010(context, evt)
	-- 判断是gadgetid 为 10001的移动平台，是否到达了330400018 的路线中的 1 点
	
	if 10001 ~= evt.param1 then
	  return false
	end
	
	if 330400018 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_10010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304010, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"move1"为2
	if ScriptLib.GetGroupVariableValue(context, "move1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "qsuite" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "qsuite", 1, 133304189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10013(context, evt)
	-- 判断变量"move1"为2
	if ScriptLib.GetGroupVariableValue(context, "move1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "qsuite" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "qsuite", 1, 133304189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end