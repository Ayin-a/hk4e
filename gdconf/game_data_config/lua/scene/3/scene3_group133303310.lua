-- 基础信息
local base_info = {
	group_id = 133303310
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
	{ config_id = 310001, gadget_id = 70290436, pos = { x = -1494.137, y = 131.212, z = 3371.930 }, rot = { x = 0.000, y = 303.471, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 310003, gadget_id = 70211002, pos = { x = -1493.954, y = 127.766, z = 3372.698 }, rot = { x = 0.000, y = 90.106, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1310002, name = "GADGET_STATE_CHANGE_310002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310002", action = "action_EVENT_GADGET_STATE_CHANGE_310002", trigger_count = 0 },
	{ config_id = 1310004, name = "GADGET_STATE_CHANGE_310004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310004", action = "action_EVENT_GADGET_STATE_CHANGE_310004", trigger_count = 0 }
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
		gadgets = { 310001, 310003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_310002", "GADGET_STATE_CHANGE_310004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_310002(context, evt)
	if 310001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310002(context, evt)
	-- 将configid为 310003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_310004(context, evt)
	if 310001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310004(context, evt)
	-- 将configid为 310003 的物件更改为状态 GadgetState.ChestTrap
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310003, GadgetState.ChestTrap) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/VarunaStandard"