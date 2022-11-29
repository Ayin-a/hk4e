-- 基础信息
local base_info = {
	group_id = 133213218
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
	{ config_id = 218001, gadget_id = 70211132, pos = { x = -3296.464, y = 224.034, z = -3267.136 }, rot = { x = 349.935, y = 1.065, z = 347.956 }, level = 26, drop_tag = "解谜超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1218002, name = "GADGET_CREATE_218002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_218002", action = "action_EVENT_GADGET_CREATE_218002", trigger_count = 0 },
	{ config_id = 1218003, name = "VARIABLE_CHANGE_218003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_218003", action = "action_EVENT_VARIABLE_CHANGE_218003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count1", value = 0, no_refresh = true },
	{ config_id = 2, name = "count2", value = 0, no_refresh = true },
	{ config_id = 3, name = "count3", value = 0, no_refresh = true }
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
		gadgets = { 218001 },
		regions = { },
		triggers = { "GADGET_CREATE_218002", "VARIABLE_CHANGE_218003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_218002(context, evt)
	-- 判断变量"count1"为1
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 1 then
			return false
	end
	
	-- 判断变量"count2"为1
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 1 then
			return false
	end
	
	-- 判断变量"count3"为1
	if ScriptLib.GetGroupVariableValue(context, "count3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_218002(context, evt)
	-- 将configid为 218001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_218003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count1"为1
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 1 then
			return false
	end
	
	-- 判断变量"count2"为1
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 1 then
			return false
	end
	
	-- 判断变量"count3"为1
	if ScriptLib.GetGroupVariableValue(context, "count3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_218003(context, evt)
	-- 将configid为 218001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end