-- 基础信息
local base_info = {
	group_id = 133313030
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 30002,
	gadget_fireBase1 = 30001,
	gadget_fire1 = 30003,
	gadget_fireBase2 = 30004,
	gadget_fire2 = 30005,
	gadget_fireBase3 = 0,
	gadget_fire3 = 0,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0
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
	-- 1号基座
	{ config_id = 30001, gadget_id = 70330279, pos = { x = -398.186, y = -86.377, z = 5509.742 }, rot = { x = 359.967, y = 1.151, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 30002, gadget_id = 70330278, pos = { x = -441.240, y = -77.545, z = 5501.645 }, rot = { x = 0.000, y = 269.832, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 30003, gadget_id = 70330257, pos = { x = -398.193, y = -84.540, z = 5509.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300001, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 30004, gadget_id = 70330279, pos = { x = -421.639, y = -73.477, z = 5541.521 }, rot = { x = 0.000, y = 141.631, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 30005, gadget_id = 70330257, pos = { x = -421.732, y = -71.892, z = 5541.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300002, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1030007, name = "GADGET_STATE_CHANGE_30007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_30007", action = "action_EVENT_GADGET_STATE_CHANGE_30007" },
	-- 保底
	{ config_id = 1030008, name = "GROUP_LOAD_30008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_30008", action = "action_EVENT_GROUP_LOAD_30008", trigger_count = 0 }
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
		gadgets = { 30001, 30002, 30004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_30007", "GROUP_LOAD_30008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_30007(context, evt)
	if 30002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30007(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "phase", 1, 133313018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_30008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313030, 30002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_30008(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "phase", 1, 133313018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"