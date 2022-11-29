-- 基础信息
local base_info = {
	group_id = 133212601
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
	{ config_id = 601001, gadget_id = 70800054, pos = { x = -3861.317, y = 200.144, z = -2928.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action01, area_id = 12 },
	{ config_id = 601002, gadget_id = 70290196, pos = { x = -3862.596, y = 200.000, z = -2925.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1601003, name = "GROUP_LOAD_601003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_601003", action = "action_EVENT_GROUP_LOAD_601003" },
	{ config_id = 1601004, name = "VARIABLE_CHANGE_601004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_601004", action = "action_EVENT_VARIABLE_CHANGE_601004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "stage", value = 0, no_refresh = true }
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
		gadgets = { 601002 },
		regions = { },
		triggers = { "GROUP_LOAD_601003", "VARIABLE_CHANGE_601004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_601003(context, evt)
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_601003(context, evt)
	-- 创建id为601001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 601001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_601004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_601004(context, evt)
	-- 创建id为601001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 601001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end