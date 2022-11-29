-- 基础信息
local base_info = {
	group_id = 133303511
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
	{ config_id = 511001, gadget_id = 70290436, pos = { x = -1694.824, y = 140.742, z = 3387.614 }, rot = { x = 0.000, y = 82.985, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 511002, gadget_id = 70211150, pos = { x = -1694.631, y = 137.297, z = 3387.173 }, rot = { x = 0.000, y = 82.985, z = 0.000 }, level = 26, chest_drop_id = 21910068, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1511003, name = "GADGET_STATE_CHANGE_511003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_511003", action = "action_EVENT_GADGET_STATE_CHANGE_511003", trigger_count = 0 },
	{ config_id = 1511004, name = "GADGET_STATE_CHANGE_511004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_511004", action = "action_EVENT_GADGET_STATE_CHANGE_511004", trigger_count = 0 }
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
		gadgets = { 511001, 511002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_511003", "GADGET_STATE_CHANGE_511004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_511003(context, evt)
	if 511001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_511003(context, evt)
	-- 将configid为 511002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 511002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_511004(context, evt)
	if 511001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_511004(context, evt)
	-- 将configid为 511002 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 511002, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/VarunaStandard"