-- 基础信息
local base_info = {
	group_id = 133310023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23001, monster_id = 25210207, pos = { x = -2837.104, y = 279.075, z = 4845.834 }, rot = { x = 0.000, y = 338.714, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 28 },
	{ config_id = 23002, monster_id = 25210207, pos = { x = -2819.745, y = 291.746, z = 4795.957 }, rot = { x = 0.000, y = 306.248, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 28 },
	{ config_id = 23003, monster_id = 25210207, pos = { x = -2807.644, y = 256.614, z = 4866.377 }, rot = { x = 0.000, y = 291.033, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 28 },
	{ config_id = 23004, monster_id = 25210207, pos = { x = -2855.608, y = 260.670, z = 4896.149 }, rot = { x = 0.000, y = 121.076, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 28 },
	{ config_id = 23007, monster_id = 25210107, pos = { x = -2927.400, y = 266.492, z = 4849.404 }, rot = { x = 0.000, y = 248.020, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9901, area_id = 28 },
	{ config_id = 23008, monster_id = 25210207, pos = { x = -2882.947, y = 263.419, z = 4867.404 }, rot = { x = 0.000, y = 248.061, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 28 },
	{ config_id = 23010, monster_id = 25210403, pos = { x = -2902.525, y = 267.588, z = 4872.014 }, rot = { x = 0.000, y = 303.636, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9502, area_id = 28 },
	{ config_id = 23015, monster_id = 25210302, pos = { x = -2913.494, y = 265.325, z = 4940.322 }, rot = { x = 0.000, y = 120.818, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9503, area_id = 28 },
	{ config_id = 23016, monster_id = 25210207, pos = { x = -2878.930, y = 262.076, z = 4941.625 }, rot = { x = 0.000, y = 47.821, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 28 },
	{ config_id = 23017, monster_id = 25210503, pos = { x = -2904.530, y = 267.583, z = 4872.090 }, rot = { x = 0.000, y = 32.344, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9511, area_id = 28 },
	{ config_id = 23018, monster_id = 25210503, pos = { x = -2903.254, y = 267.588, z = 4873.971 }, rot = { x = 0.000, y = 212.146, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9512, area_id = 28 },
	{ config_id = 23019, monster_id = 25210302, pos = { x = -2805.497, y = 257.376, z = 4880.475 }, rot = { x = 0.000, y = 95.779, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 28 },
	{ config_id = 23020, monster_id = 25210402, pos = { x = -2835.030, y = 261.932, z = 4862.931 }, rot = { x = 0.000, y = 358.449, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9504, area_id = 28 },
	{ config_id = 23021, monster_id = 25210503, pos = { x = -2903.151, y = 265.648, z = 4908.466 }, rot = { x = 0.000, y = 28.219, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9504, area_id = 28 },
	{ config_id = 23022, monster_id = 25210302, pos = { x = -2860.382, y = 262.254, z = 4906.942 }, rot = { x = 0.000, y = 39.369, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 28 },
	{ config_id = 23023, monster_id = 25210402, pos = { x = -2859.351, y = 262.309, z = 4908.262 }, rot = { x = 0.000, y = 204.832, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 23009, gadget_id = 70220128, pos = { x = -2903.961, y = 267.559, z = 4873.000 }, rot = { x = 0.000, y = 302.463, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1023005, name = "GROUP_LOAD_23005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_23005", action = "action_EVENT_GROUP_LOAD_23005", trigger_count = 0 },
	{ config_id = 1023006, name = "GROUP_LOAD_23006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_23006", action = "action_EVENT_GROUP_LOAD_23006", trigger_count = 0 },
	{ config_id = 1023011, name = "ANY_MONSTER_DIE_23011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23011", action = "action_EVENT_ANY_MONSTER_DIE_23011", trigger_count = 0 },
	{ config_id = 1023012, name = "GROUP_LOAD_23012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_23012", action = "action_EVENT_GROUP_LOAD_23012", trigger_count = 0 },
	{ config_id = 1023024, name = "GROUP_LOAD_23024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_23024", action = "action_EVENT_GROUP_LOAD_23024", trigger_count = 0 }
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
		monsters = { 23001, 23002, 23003, 23004, 23007, 23008, 23010, 23015, 23016, 23017, 23018, 23019, 23020, 23021, 23022, 23023 },
		gadgets = { 23009 },
		regions = { },
		triggers = { "GROUP_LOAD_23005", "GROUP_LOAD_23006", "ANY_MONSTER_DIE_23011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_23012", "GROUP_LOAD_23024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_23005(context, evt)
	-- 判断变量"open_the_door"为0
	if ScriptLib.GetGroupVariableValue(context, "open_the_door") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_23005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310023, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_23006(context, evt)
	-- 判断变量"open_the_door"为1
	if ScriptLib.GetGroupVariableValue(context, "open_the_door") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_23006(context, evt)
	-- 将本组内变量名为 "opendoor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "opendoor", 1, 133310022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "opendoor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "opendoor", 1, 133310167) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310023, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23011(context, evt)
	--判断死亡怪物的configid是否为 23007
	if evt.param1 ~= 23007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23011(context, evt)
	-- 调用提示id为 731900105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 731900105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_23012(context, evt)
	-- 判断变量"open_the_door"为0
	if ScriptLib.GetGroupVariableValue(context, "open_the_door") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_23012(context, evt)
	-- 将本组内变量名为 "open_the_door" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open_the_door", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_23024(context, evt)
	-- 判断变量"open_the_door"为1
	if ScriptLib.GetGroupVariableValue(context, "open_the_door") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_23024(context, evt)
	-- 将本组内变量名为 "opendoor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "opendoor", 1, 133310022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "opendoor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "opendoor", 1, 133310167) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_1/OpenTheDoor"