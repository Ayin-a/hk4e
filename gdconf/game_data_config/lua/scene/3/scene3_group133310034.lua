-- 基础信息
local base_info = {
	group_id = 133310034
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
	{ config_id = 34004, gadget_id = 70211132, pos = { x = -3193.285, y = 260.796, z = 4767.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜超级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034001, name = "VARIABLE_CHANGE_34001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34001", action = "action_EVENT_VARIABLE_CHANGE_34001" },
	{ config_id = 1034002, name = "GROUP_LOAD_34002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_34002", action = "action_EVENT_GROUP_LOAD_34002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active1", value = 0, no_refresh = true },
	{ config_id = 2, name = "active2", value = 0, no_refresh = true },
	{ config_id = 3, name = "active3", value = 0, no_refresh = true }
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
		gadgets = { 34004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_34001", "GROUP_LOAD_34002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active1"为1
	if ScriptLib.GetGroupVariableValue(context, "active1") ~= 1 then
			return false
	end
	
	-- 判断变量"active2"为1
	if ScriptLib.GetGroupVariableValue(context, "active2") ~= 1 then
			return false
	end
	
	-- 判断变量"active3"为1
	if ScriptLib.GetGroupVariableValue(context, "active3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34001(context, evt)
	-- 将configid为 34004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_34002(context, evt)
	-- 判断变量"active1"为1
	if ScriptLib.GetGroupVariableValue(context, "active1") ~= 1 then
			return false
	end
	
	-- 判断变量"active2"为1
	if ScriptLib.GetGroupVariableValue(context, "active2") ~= 1 then
			return false
	end
	
	-- 判断变量"active3"为1
	if ScriptLib.GetGroupVariableValue(context, "active3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_34002(context, evt)
	-- 将configid为 34004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end