-- 基础信息
local base_info = {
	group_id = 133223224
}

-- DEFS_MISCS
defs = {
	group_id = 133223224,
	Lightup_Seq = {224002,224001,224005,224003,224004}
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
	{ config_id = 224001, gadget_id = 70310139, pos = { x = -6036.643, y = 207.134, z = -2844.932 }, rot = { x = 12.086, y = 88.291, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 224002, gadget_id = 70310138, pos = { x = -6043.654, y = 206.865, z = -2843.441 }, rot = { x = 337.323, y = 42.086, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 224003, gadget_id = 70310134, pos = { x = -6048.349, y = 206.823, z = -2835.465 }, rot = { x = 349.938, y = 217.913, z = 3.823 }, level = 30, area_id = 18 },
	{ config_id = 224004, gadget_id = 70310137, pos = { x = -6049.401, y = 206.999, z = -2851.945 }, rot = { x = 353.075, y = 24.016, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 224005, gadget_id = 70310140, pos = { x = -6059.730, y = 206.983, z = -2843.253 }, rot = { x = 352.380, y = 67.743, z = 14.481 }, level = 30, area_id = 18 },
	{ config_id = 224006, gadget_id = 70211111, pos = { x = -6049.588, y = 207.058, z = -2842.065 }, rot = { x = 0.000, y = 18.365, z = 0.000 }, level = 26, chest_drop_id = 1050146, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创建保底
	{ config_id = 1224007, name = "GROUP_LOAD_224007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_224007", action = "action_EVENT_GROUP_LOAD_224007", trigger_count = 0 },
	{ config_id = 1224010, name = "VARIABLE_CHANGE_224010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_224010", action = "action_EVENT_VARIABLE_CHANGE_224010", trigger_count = 0 }
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
		gadgets = { 224001, 224002, 224003, 224004, 224005 },
		regions = { },
		triggers = { "GROUP_LOAD_224007", "VARIABLE_CHANGE_224010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_224007(context, evt)
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_224007(context, evt)
	-- 创建id为224006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 224006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_224010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_224010(context, evt)
	-- 创建id为224006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 224006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiStoneSeq"