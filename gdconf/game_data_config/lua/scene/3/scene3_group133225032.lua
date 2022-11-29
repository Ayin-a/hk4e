-- 基础信息
local base_info = {
	group_id = 133225032
}

-- DEFS_MISCS
defs = {
	group_id = 133225032,
	Lightup_Seq = {32004,32001,32005,32002,32003}
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
	{ config_id = 32001, gadget_id = 70310140, pos = { x = -6183.525, y = 214.502, z = -2786.435 }, rot = { x = 350.920, y = 192.033, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 32002, gadget_id = 70310134, pos = { x = -6177.670, y = 214.337, z = -2788.322 }, rot = { x = 317.565, y = 197.406, z = 3.964 }, level = 33, area_id = 18 },
	{ config_id = 32003, gadget_id = 70310136, pos = { x = -6184.772, y = 214.744, z = -2798.519 }, rot = { x = 13.889, y = 244.320, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 32004, gadget_id = 70310137, pos = { x = -6172.692, y = 214.476, z = -2790.041 }, rot = { x = 6.034, y = 69.000, z = 30.371 }, level = 33, area_id = 18 },
	{ config_id = 32005, gadget_id = 70310138, pos = { x = -6174.647, y = 214.951, z = -2798.291 }, rot = { x = 359.852, y = 280.366, z = 0.810 }, level = 33, area_id = 18 },
	{ config_id = 32006, gadget_id = 70211111, pos = { x = -6179.229, y = 214.950, z = -2795.428 }, rot = { x = 0.000, y = 78.608, z = 0.000 }, level = 26, chest_drop_id = 1050146, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032007, name = "GADGET_STATE_CHANGE_32007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32007", action = "action_EVENT_GADGET_STATE_CHANGE_32007" },
	{ config_id = 1032008, name = "GROUP_LOAD_32008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_32008", action = "action_EVENT_GROUP_LOAD_32008", trigger_count = 0 },
	{ config_id = 1032010, name = "VARIABLE_CHANGE_32010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_32010", action = "action_EVENT_VARIABLE_CHANGE_32010" }
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
		gadgets = { 32001, 32002, 32003, 32004, 32005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_32007", "GROUP_LOAD_32008", "VARIABLE_CHANGE_32010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32007(context, evt)
	if 32006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32007(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133225053) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_32008(context, evt)
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_32008(context, evt)
	-- 创建id为32006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 32006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_32010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_32010(context, evt)
	-- 创建id为32006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 32006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiStoneSeq"