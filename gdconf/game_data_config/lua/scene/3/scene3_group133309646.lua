-- 基础信息
local base_info = {
	group_id = 133309646
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
	{ config_id = 646001, gadget_id = 70211122, pos = { x = -2309.075, y = 21.592, z = 5568.814 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1646002, name = "VARIABLE_CHANGE_646002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_646002", action = "action_EVENT_VARIABLE_CHANGE_646002" },
	{ config_id = 1646003, name = "GROUP_LOAD_646003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_646003", action = "action_EVENT_GROUP_LOAD_646003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active1", value = 0, no_refresh = true },
	{ config_id = 2, name = "active2", value = 0, no_refresh = true }
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
		gadgets = { 646001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_646002", "GROUP_LOAD_646003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_646002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active1"为1
	if ScriptLib.GetGroupVariableValue(context, "active1") ~= 1 then
			return false
	end
	
	-- 判断变量"active2"为1
	if ScriptLib.GetGroupVariableValue(context, "active2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_646002(context, evt)
	-- 将configid为 646001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 646001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_646003(context, evt)
	-- 判断变量"active1"为1
	if ScriptLib.GetGroupVariableValue(context, "active1") ~= 1 then
			return false
	end
	
	-- 判断变量"active2"为1
	if ScriptLib.GetGroupVariableValue(context, "active2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_646003(context, evt)
	-- 将configid为 646001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 646001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end