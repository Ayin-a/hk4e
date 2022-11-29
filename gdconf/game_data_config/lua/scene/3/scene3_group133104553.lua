-- 基础信息
local base_info = {
	group_id = 133104553
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
	{ config_id = 553001, gadget_id = 70360007, pos = { x = 81.714, y = 247.453, z = 96.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 553002, gadget_id = 70350004, pos = { x = 81.560, y = 255.935, z = 94.785 }, rot = { x = 90.000, y = 354.838, z = 0.000 }, level = 19, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1553003, name = "GADGET_STATE_CHANGE_553003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_553003", action = "action_EVENT_GADGET_STATE_CHANGE_553003", trigger_count = 0 },
	{ config_id = 1553004, name = "GADGET_STATE_CHANGE_553004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_553004", action = "action_EVENT_GADGET_STATE_CHANGE_553004", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 553001, 553002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_553003", "GADGET_STATE_CHANGE_553004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_553003(context, evt)
	if 553001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_553003(context, evt)
	-- 将configid为 553002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 553002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_553004(context, evt)
	if 553001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_553004(context, evt)
	-- 将configid为 553002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 553002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end