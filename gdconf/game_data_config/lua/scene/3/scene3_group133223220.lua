-- 基础信息
local base_info = {
	group_id = 133223220
}

-- DEFS_MISCS
defs = {
	group_id = 133223220,
	Lightup_Seq = {220005,220004,220002,220001,220003}
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
	{ config_id = 220001, gadget_id = 70310140, pos = { x = -6005.637, y = 181.888, z = -2538.684 }, rot = { x = 359.761, y = 186.273, z = 7.083 }, level = 30, area_id = 18 },
	{ config_id = 220002, gadget_id = 70310137, pos = { x = -6005.649, y = 183.499, z = -2550.573 }, rot = { x = 0.000, y = 40.903, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 220003, gadget_id = 70310136, pos = { x = -6007.768, y = 183.410, z = -2548.698 }, rot = { x = 4.454, y = 64.354, z = 16.336 }, level = 30, area_id = 18 },
	{ config_id = 220004, gadget_id = 70310135, pos = { x = -6001.790, y = 182.757, z = -2551.063 }, rot = { x = 351.268, y = 358.964, z = 357.253 }, level = 30, area_id = 18 },
	{ config_id = 220005, gadget_id = 70310139, pos = { x = -6008.192, y = 182.409, z = -2540.169 }, rot = { x = 351.353, y = 133.819, z = 22.400 }, level = 30, area_id = 18 },
	{ config_id = 220006, gadget_id = 70211111, pos = { x = -6000.389, y = 180.332, z = -2543.831 }, rot = { x = 0.000, y = 93.038, z = 0.000 }, level = 26, chest_drop_id = 1050146, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1220007, name = "VARIABLE_CHANGE_220007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_220007", action = "action_EVENT_VARIABLE_CHANGE_220007" },
	-- 创建保底
	{ config_id = 1220008, name = "GROUP_LOAD_220008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_220008", action = "action_EVENT_GROUP_LOAD_220008", trigger_count = 0 }
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
		gadgets = { 220001, 220002, 220003, 220004, 220005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_220007", "GROUP_LOAD_220008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_220007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_220007(context, evt)
	-- 创建id为220006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 220006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_220008(context, evt)
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_220008(context, evt)
	-- 创建id为220006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 220006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiStoneSeq"