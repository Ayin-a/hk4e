-- 基础信息
local base_info = {
	group_id = 177005170
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
	{ config_id = 170001, gadget_id = 70350004, pos = { x = 381.879, y = 122.854, z = 856.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 170006, gadget_id = 70900009, pos = { x = 335.923, y = 119.104, z = 860.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 210 },
	{ config_id = 170007, gadget_id = 70900009, pos = { x = 373.015, y = 122.305, z = 865.381 }, rot = { x = 3.416, y = 351.314, z = 0.000 }, level = 36, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1170002, name = "GADGET_STATE_CHANGE_170002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170002", action = "action_EVENT_GADGET_STATE_CHANGE_170002", trigger_count = 0 },
	{ config_id = 1170003, name = "GADGET_STATE_CHANGE_170003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170003", action = "action_EVENT_GADGET_STATE_CHANGE_170003", trigger_count = 0 },
	{ config_id = 1170005, name = "GADGET_STATE_CHANGE_170005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170005", action = "action_EVENT_GADGET_STATE_CHANGE_170005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		gadgets = { 170001, 170006, 170007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_170002", "GADGET_STATE_CHANGE_170003", "GADGET_STATE_CHANGE_170005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170002(context, evt)
	if 170006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170002(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "default", 0, 177005160) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170003(context, evt)
	if 170007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170003(context, evt)
	-- 将configid为 170001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "default" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "default", 0, 177005160) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170005(context, evt)
	if 170006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170005(context, evt)
	-- 改变指定group组177005059中， configid为59011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177005059, 59011, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end