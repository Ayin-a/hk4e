-- 基础信息
local base_info = {
	group_id = 133225031
}

-- DEFS_MISCS
defs = 
{
	group_id = 133225031,
	Lightup_Seq = {31001,31004,31002,31003,31005}
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
	{ config_id = 31001, gadget_id = 70310135, pos = { x = -6427.728, y = 237.499, z = -2815.535 }, rot = { x = 3.046, y = 113.765, z = 353.513 }, level = 33, area_id = 18 },
	{ config_id = 31002, gadget_id = 70310140, pos = { x = -6429.435, y = 237.277, z = -2819.217 }, rot = { x = 2.348, y = 92.832, z = 359.982 }, level = 33, area_id = 18 },
	{ config_id = 31003, gadget_id = 70310139, pos = { x = -6428.620, y = 236.821, z = -2822.646 }, rot = { x = 0.000, y = 69.086, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 31004, gadget_id = 70310137, pos = { x = -6427.170, y = 236.178, z = -2827.700 }, rot = { x = 0.000, y = 43.217, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 31005, gadget_id = 70310134, pos = { x = -6422.839, y = 235.973, z = -2830.094 }, rot = { x = 353.251, y = 347.460, z = 2.415 }, level = 33, area_id = 18 },
	{ config_id = 31006, gadget_id = 70211111, pos = { x = -6421.819, y = 236.714, z = -2819.886 }, rot = { x = 0.000, y = 55.387, z = 0.000 }, level = 26, chest_drop_id = 1050146, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031007, name = "VARIABLE_CHANGE_31007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_31007", action = "action_EVENT_VARIABLE_CHANGE_31007" },
	{ config_id = 1031008, name = "GROUP_LOAD_31008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_31008", action = "action_EVENT_GROUP_LOAD_31008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isNeedNotify", value = 1, no_refresh = false }
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
		monsters = { },
		gadgets = { 31001, 31002, 31003, 31004, 31005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_31007", "GROUP_LOAD_31008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_31007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31007(context, evt)
	-- 创建id为31006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 31006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_31008(context, evt)
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_31008(context, evt)
	-- 创建id为31006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 31006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiStoneSeq"