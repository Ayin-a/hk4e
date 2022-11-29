-- 基础信息
local base_info = {
	group_id = 133212270
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
	{ config_id = 270001, gadget_id = 70350004, pos = { x = -3819.689, y = 249.508, z = -2380.731 }, rot = { x = 270.000, y = 247.893, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 270002, gadget_id = 70350006, pos = { x = -3824.365, y = 265.824, z = -2344.251 }, rot = { x = 270.000, y = 251.884, z = 0.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1270003, name = "VARIABLE_CHANGE_270003", event = EventType.EVENT_VARIABLE_CHANGE, source = "num", condition = "condition_EVENT_VARIABLE_CHANGE_270003", action = "action_EVENT_VARIABLE_CHANGE_270003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "num", value = 0, no_refresh = true }
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
		gadgets = { 270001, 270002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_270003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_270003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"num"为1
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_270003(context, evt)
	-- 将configid为 270001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 270002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end