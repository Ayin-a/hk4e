-- 基础信息
local base_info = {
	group_id = 133312011
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
	{ config_id = 11001, gadget_id = 70330262, pos = { x = -3148.833, y = 182.421, z = 4659.349 }, rot = { x = 71.281, y = 56.618, z = 337.197 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 11002, gadget_id = 70330437, pos = { x = -3151.467, y = 186.090, z = 4662.437 }, rot = { x = 353.190, y = 285.210, z = 345.781 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成
	{ config_id = 1011003, name = "ANY_GADGET_DIE_11003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_11003", action = "action_EVENT_ANY_GADGET_DIE_11003", trigger_count = 0 },
	-- 保底
	{ config_id = 1011004, name = "GROUP_LOAD_11004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_11004", action = "action_EVENT_GROUP_LOAD_11004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
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
		gadgets = { 11001, 11002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_11003", "GROUP_LOAD_11004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_11003(context, evt)
	if 11001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_11003(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 11002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_11004(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11004(context, evt)
	-- 将configid为 11002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end