-- 基础信息
local base_info = {
	group_id = 133309220
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 220002,
	gadget_fireBase1 = 220001,
	gadget_fire1 = 220003,
	gadget_fireBase2 = 220004,
	gadget_fire2 = 220005,
	gadget_fireBase3 = 220009,
	gadget_fire3 = 220010,
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
	{ config_id = 220001, gadget_id = 70330279, pos = { x = -2577.709, y = 27.295, z = 5566.990 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 220002, gadget_id = 70330278, pos = { x = -2471.000, y = -18.144, z = 5465.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 220003, gadget_id = 70330257, pos = { x = -2577.709, y = 29.113, z = 5566.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900073, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 220004, gadget_id = 70330279, pos = { x = -2566.384, y = -14.429, z = 5516.997 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 220005, gadget_id = 70330257, pos = { x = -2566.384, y = -12.661, z = 5516.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900074, persistent = true, area_id = 27 },
	-- 3号基座
	{ config_id = 220009, gadget_id = 70330279, pos = { x = -2534.408, y = -14.436, z = 5522.490 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3号火种
	{ config_id = 220010, gadget_id = 70330257, pos = { x = -2534.408, y = -12.676, z = 5522.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900077, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1220006, name = "GADGET_STATE_CHANGE_220006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220006", action = "action_EVENT_GADGET_STATE_CHANGE_220006" },
	-- 玩法完成
	{ config_id = 1220007, name = "GROUP_LOAD_220007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_220007", action = "action_EVENT_GROUP_LOAD_220007", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1220008, name = "GADGET_STATE_CHANGE_220008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220008", action = "action_EVENT_GADGET_STATE_CHANGE_220008" },
	-- 玩法进度埋点
	{ config_id = 1220011, name = "GADGET_STATE_CHANGE_220011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220011", action = "action_EVENT_GADGET_STATE_CHANGE_220011" },
	-- 玩法进度埋点
	{ config_id = 1220012, name = "GADGET_STATE_CHANGE_220012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220012", action = "action_EVENT_GADGET_STATE_CHANGE_220012" }
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
		gadgets = { 220001, 220002, 220004, 220009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_220006", "GROUP_LOAD_220007", "GADGET_STATE_CHANGE_220008", "GADGET_STATE_CHANGE_220011", "GADGET_STATE_CHANGE_220012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_220006(context, evt)
	if 220002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220006(context, evt)
	-- 将本组内变量名为 "torch3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch3", 1, 133309500) then
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
function condition_EVENT_GROUP_LOAD_220007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309220, 220002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_220007(context, evt)
	-- 将本组内变量名为 "torch3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch3", 1, 133309500) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_220008(context, evt)
	if 220001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_220011(context, evt)
	if 220004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_220012(context, evt)
	if 220009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"