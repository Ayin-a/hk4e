-- 基础信息
local base_info = {
	group_id = 133223102
}

-- Trigger变量
local defs = {
	group_ID = 133223102,
	gadget_1 = 102001,
	rotation_1 = 0,
	gadget_2 = 102002,
	rotation_2 = 180,
	gadget_3 = 102003,
	rotation_3 = 90,
	gadget_4 = 102006,
	rotation_4 = 0,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {102003},
	gadget_connect2 = {},
	gadget_connect3 = {},
	gadget_connect4 = {},
	gadget_connect5 = {}
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
	{ config_id = 102001, gadget_id = 70330119, pos = { x = -5780.943, y = 209.960, z = -2592.717 }, rot = { x = 0.000, y = 321.038, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 102002, gadget_id = 70330119, pos = { x = -5780.943, y = 211.181, z = -2592.717 }, rot = { x = 0.000, y = 321.038, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 102003, gadget_id = 70330119, pos = { x = -5784.678, y = 210.545, z = -2596.560 }, rot = { x = 0.000, y = 321.038, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 102004, gadget_id = 70330120, pos = { x = -5780.943, y = 210.002, z = -2592.717 }, rot = { x = 0.000, y = 321.038, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 102005, gadget_id = 70330121, pos = { x = -5784.658, y = 212.280, z = -2596.566 }, rot = { x = 0.000, y = 321.038, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 102006, gadget_id = 70330118, pos = { x = -5785.561, y = 210.220, z = -2590.969 }, rot = { x = 0.000, y = 319.496, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 102008, gadget_id = 70330120, pos = { x = -5784.833, y = 210.220, z = -2596.345 }, rot = { x = 0.000, y = 321.038, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 102009, gadget_id = 70330121, pos = { x = -5780.907, y = 212.911, z = -2592.735 }, rot = { x = 0.000, y = 321.038, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1102007, name = "VARIABLE_CHANGE_102007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_102007", action = "action_EVENT_VARIABLE_CHANGE_102007" },
	{ config_id = 1102010, name = "GROUP_LOAD_102010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_102010", action = "", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		monsters = { },
		gadgets = { 102001, 102002, 102003, 102004, 102005, 102006, 102008, 102009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_102007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 初始,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_102010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_102007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_102007(context, evt)
	-- 针对当前group内变量名为 "puzzle_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "puzzle_progress", 1, 133223096) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133225273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133223411) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_102010(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare_V2"