-- 基础信息
local base_info = {
	group_id = 133303512
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
	{ config_id = 512001, gadget_id = 70290436, pos = { x = -1816.146, y = 129.850, z = 3328.149 }, rot = { x = 0.000, y = 322.140, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 512002, gadget_id = 70211002, pos = { x = -1815.154, y = 126.405, z = 3328.738 }, rot = { x = 0.000, y = 322.140, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1512003, name = "GADGET_STATE_CHANGE_512003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_512003", action = "action_EVENT_GADGET_STATE_CHANGE_512003", trigger_count = 0 },
	{ config_id = 1512004, name = "GADGET_STATE_CHANGE_512004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_512004", action = "action_EVENT_GADGET_STATE_CHANGE_512004", trigger_count = 0 }
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
		gadgets = { 512001, 512002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_512003", "GADGET_STATE_CHANGE_512004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_512003(context, evt)
	if 512001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_512003(context, evt)
	-- 将configid为 512002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_512004(context, evt)
	if 512001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_512004(context, evt)
	-- 将configid为 512002 的物件更改为状态 GadgetState.ChestTrap
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512002, GadgetState.ChestTrap) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/VarunaStandard"