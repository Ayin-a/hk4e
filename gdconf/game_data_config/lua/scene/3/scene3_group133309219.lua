-- 基础信息
local base_info = {
	group_id = 133309219
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 219002,
	gadget_fireBase1 = 219001,
	gadget_fire1 = 219003,
	gadget_fireBase2 = 219004,
	gadget_fire2 = 219005,
	gadget_fireBase3 = 219009,
	gadget_fire3 = 219010,
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
	{ config_id = 219001, gadget_id = 70330279, pos = { x = -2578.741, y = 33.453, z = 5600.222 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 219002, gadget_id = 70330278, pos = { x = -2471.000, y = -18.144, z = 5481.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 219003, gadget_id = 70330257, pos = { x = -2578.741, y = 35.276, z = 5600.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900071, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 219004, gadget_id = 70330279, pos = { x = -2538.002, y = 9.551, z = 5618.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 219005, gadget_id = 70330257, pos = { x = -2538.002, y = 11.325, z = 5618.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900072, persistent = true, area_id = 27 },
	{ config_id = 219006, gadget_id = 70330278, pos = { x = -2455.000, y = -18.144, z = 5481.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 3号基座
	{ config_id = 219009, gadget_id = 70330279, pos = { x = -2494.422, y = 9.820, z = 5537.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3号火种
	{ config_id = 219010, gadget_id = 70330257, pos = { x = -2494.422, y = 11.578, z = 5537.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900076, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1219007, name = "GADGET_STATE_CHANGE_219007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219007", action = "action_EVENT_GADGET_STATE_CHANGE_219007" },
	-- 玩法完成
	{ config_id = 1219008, name = "GROUP_LOAD_219008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_219008", action = "action_EVENT_GROUP_LOAD_219008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1219011, name = "GADGET_STATE_CHANGE_219011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219011", action = "action_EVENT_GADGET_STATE_CHANGE_219011" },
	-- 玩法进度埋点
	{ config_id = 1219012, name = "GADGET_STATE_CHANGE_219012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219012", action = "action_EVENT_GADGET_STATE_CHANGE_219012" },
	-- 玩法进度埋点
	{ config_id = 1219013, name = "GADGET_STATE_CHANGE_219013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219013", action = "action_EVENT_GADGET_STATE_CHANGE_219013" }
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
		gadgets = { 219001, 219002, 219004, 219006, 219009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_219007", "GROUP_LOAD_219008", "GADGET_STATE_CHANGE_219011", "GADGET_STATE_CHANGE_219012", "GADGET_STATE_CHANGE_219013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_219007(context, evt)
	if 219002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_219007(context, evt)
	-- 将本组内变量名为 "torch2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch2", 1, 133309500) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_219008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309219, 219002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_219008(context, evt)
	-- 将本组内变量名为 "torch2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch2", 1, 133309500) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_219011(context, evt)
	if 219001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_219011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_219012(context, evt)
	if 219004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_219012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_219013(context, evt)
	if 219009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_219013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"