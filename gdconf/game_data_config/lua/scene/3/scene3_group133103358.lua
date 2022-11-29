-- 基础信息
local base_info = {
	group_id = 133103358
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
	{ config_id = 358001, gadget_id = 70211122, pos = { x = 593.161, y = 293.390, z = 1726.403 }, rot = { x = 8.166, y = 60.792, z = 357.586 }, level = 21, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1358002, name = "VARIABLE_CHANGE_358002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_358002", action = "action_EVENT_VARIABLE_CHANGE_358002" }
}

-- 变量
variables = {
	{ config_id = 1, name = "var", value = 0, no_refresh = true }
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
		gadgets = { 358001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_358002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_358002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"var"为2
	if ScriptLib.GetGroupVariableValue(context, "var") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_358002(context, evt)
	-- 将configid为 358001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end