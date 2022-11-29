-- 基础信息
local base_info = {
	group_id = 133213294
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
	{ config_id = 294001, gadget_id = 70360170, pos = { x = -3780.932, y = 203.984, z = -3102.702 }, rot = { x = 87.764, y = 261.010, z = 18.623 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 294002, gadget_id = 70360122, pos = { x = -3781.268, y = 203.972, z = -3102.856 }, rot = { x = 0.000, y = 240.636, z = 0.000 }, level = 27, isOneoff = true, persistent = true, interact_id = 44, area_id = 12 },
	{ config_id = 294003, gadget_id = 70350004, pos = { x = -3783.946, y = 202.888, z = -3102.773 }, rot = { x = 0.000, y = 339.931, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1294004, name = "GADGET_STATE_CHANGE_294004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_294004", action = "action_EVENT_GADGET_STATE_CHANGE_294004" },
	{ config_id = 1294005, name = "GADGET_CREATE_294005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_294005", action = "action_EVENT_GADGET_CREATE_294005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 1, no_refresh = false }
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
		gadgets = { 294001, 294002, 294003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_294004", "GADGET_CREATE_294005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_294004(context, evt)
	if 294002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294004(context, evt)
	-- 将configid为 294003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133213130) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_294005(context, evt)
	if 294002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_294005(context, evt)
	-- 将configid为 294003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133213130) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end