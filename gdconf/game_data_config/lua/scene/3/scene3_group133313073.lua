-- 基础信息
local base_info = {
	group_id = 133313073
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
	{ config_id = 73001, gadget_id = 70211132, pos = { x = -316.086, y = -243.202, z = 5473.570 }, rot = { x = 0.000, y = 266.201, z = 359.730 }, level = 26, drop_tag = "解谜超级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 解锁箱
	{ config_id = 1073002, name = "VARIABLE_CHANGE_73002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_73002", action = "action_EVENT_VARIABLE_CHANGE_73002" },
	{ config_id = 1073003, name = "GROUP_LOAD_73003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_73003", action = "action_EVENT_GROUP_LOAD_73003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin_1", value = 0, no_refresh = true },
	{ config_id = 4, name = "fin_2", value = 0, no_refresh = true },
	{ config_id = 5, name = "fin_3", value = 0, no_refresh = true }
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
		gadgets = { 73001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_73002", "GROUP_LOAD_73003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_73002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fin_1"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_1") ~= 1 then
			return false
	end
	
	-- 判断变量"fin_2"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_2") ~= 1 then
			return false
	end
	
	-- 判断变量"fin_3"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_73002(context, evt)
	-- 将configid为 73001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_73003(context, evt)
	-- 判断变量"fin_1"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_1") ~= 1 then
			return false
	end
	
	-- 判断变量"fin_2"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_2") ~= 1 then
			return false
	end
	
	-- 判断变量"fin_3"为1
	if ScriptLib.GetGroupVariableValue(context, "fin_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_73003(context, evt)
	-- 将configid为 73001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end