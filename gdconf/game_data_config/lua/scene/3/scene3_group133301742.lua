-- 基础信息
local base_info = {
	group_id = 133301742
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
	{ config_id = 742001, gadget_id = 70360079, pos = { x = -797.212, y = 109.849, z = 3414.011 }, rot = { x = 0.000, y = 128.601, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1742002, name = "VARIABLE_CHANGE_742002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_742002", action = "action_EVENT_VARIABLE_CHANGE_742002", trigger_count = 0 },
	{ config_id = 1742003, name = "GROUP_LOAD_742003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_742003", action = "action_EVENT_GROUP_LOAD_742003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "door", value = 0, no_refresh = true }
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
		gadgets = { 742001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_742002", "GROUP_LOAD_742003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_742002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door"为1
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_742002(context, evt)
	-- 将configid为 742001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 742001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_742003(context, evt)
	-- 判断变量"door"为1
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_742003(context, evt)
	-- 将configid为 742001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 742001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end