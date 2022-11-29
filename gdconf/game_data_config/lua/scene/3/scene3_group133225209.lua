-- 基础信息
local base_info = {
	group_id = 133225209
}

-- Trigger变量
local defs = {
	group_ID = 133225209,
	gadget_1 = 209001,
	rotation_1 = 180,
	gadget_2 = 209002,
	rotation_2 = 0,
	gadget_3 = 209003,
	rotation_3 = 90,
	gadget_4 = 209010,
	rotation_4 = 0,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {},
	gadget_connect3 = {209002},
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
	{ config_id = 209001, gadget_id = 70330119, pos = { x = -6310.776, y = 246.976, z = -2796.758 }, rot = { x = 7.492, y = 155.509, z = 359.192 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 209002, gadget_id = 70330119, pos = { x = -6310.708, y = 248.210, z = -2796.906 }, rot = { x = 7.492, y = 155.509, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 209003, gadget_id = 70330119, pos = { x = -6313.497, y = 246.456, z = -2799.581 }, rot = { x = 0.000, y = 152.455, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 209004, gadget_id = 70330120, pos = { x = -6310.776, y = 246.976, z = -2796.758 }, rot = { x = 7.492, y = 155.509, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 209005, gadget_id = 70330121, pos = { x = -6310.618, y = 249.947, z = -2797.096 }, rot = { x = 354.305, y = 333.729, z = 357.340 }, level = 2, area_id = 18 },
	{ config_id = 209006, gadget_id = 70211150, pos = { x = -6312.485, y = 245.503, z = -2802.616 }, rot = { x = 1.694, y = 209.209, z = 5.615 }, level = 26, chest_drop_id = 21900005, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 209008, gadget_id = 70330120, pos = { x = -6313.470, y = 246.483, z = -2799.625 }, rot = { x = 13.603, y = 155.509, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 209009, gadget_id = 70330121, pos = { x = 0.309, y = 333.406, z = 357.713 }, rot = { x = 0.309, y = 333.406, z = 357.713 }, level = 33, area_id = 7 },
	{ config_id = 209010, gadget_id = 70330118, pos = { x = -6307.136, y = 247.085, z = -2796.623 }, rot = { x = 6.591, y = 154.662, z = 0.607 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 209011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6310.361, y = 246.940, z = -2798.557 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1209007, name = "VARIABLE_CHANGE_209007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_209007", action = "action_EVENT_VARIABLE_CHANGE_209007" },
	{ config_id = 1209012, name = "GROUP_LOAD_209012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_209012", action = "action_EVENT_GROUP_LOAD_209012", trigger_count = 0 }
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
		gadgets = { 209001, 209002, 209003, 209004, 209005, 209008, 209009, 209010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_209007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 209006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 初始,
		monsters = { },
		gadgets = { },
		regions = { 209011 },
		triggers = { "GROUP_LOAD_209012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_209007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_209007(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133225273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133225108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_209012(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_209012(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225209, 1)
	
	return 0
end

require "BlackBoxPlay/LightSquare_V2"