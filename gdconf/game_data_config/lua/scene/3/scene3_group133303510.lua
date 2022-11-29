-- 基础信息
local base_info = {
	group_id = 133303510
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
	{ config_id = 510001, gadget_id = 70290436, pos = { x = -1868.248, y = 184.636, z = 3147.984 }, rot = { x = 0.000, y = 82.985, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 510002, gadget_id = 70211150, pos = { x = -1868.055, y = 181.191, z = 3147.543 }, rot = { x = 0.000, y = 82.985, z = 0.000 }, level = 26, chest_drop_id = 21910067, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1510003, name = "GADGET_STATE_CHANGE_510003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_510003", action = "action_EVENT_GADGET_STATE_CHANGE_510003", trigger_count = 0 },
	{ config_id = 1510004, name = "GADGET_STATE_CHANGE_510004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_510004", action = "action_EVENT_GADGET_STATE_CHANGE_510004", trigger_count = 0 }
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
		gadgets = { 510001, 510002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_510003", "GADGET_STATE_CHANGE_510004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_510003(context, evt)
	if 510001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_510003(context, evt)
	-- 将configid为 510002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 510002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_510004(context, evt)
	if 510001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_510004(context, evt)
	-- 将configid为 510002 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 510002, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/VarunaStandard"