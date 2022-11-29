-- 基础信息
local base_info = {
	group_id = 133308104
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 104002,
	gadget_fireBase1 = 104001,
	gadget_fire1 = 104003,
	gadget_fireBase2 = 104004,
	gadget_fire2 = 104005,
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
	{ config_id = 104001, gadget_id = 70330279, pos = { x = -2329.609, y = 73.822, z = 4335.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 104002, gadget_id = 70330278, pos = { x = -2357.929, y = 74.939, z = 4315.789 }, rot = { x = 0.000, y = 45.662, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 1号火种
	{ config_id = 104003, gadget_id = 70330257, pos = { x = -2329.675, y = 75.773, z = 4335.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800043, persistent = true, area_id = 26 },
	-- 2号基座
	{ config_id = 104004, gadget_id = 70330279, pos = { x = -2348.013, y = 74.913, z = 4326.901 }, rot = { x = 0.000, y = 42.674, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 2号火种
	{ config_id = 104005, gadget_id = 70330257, pos = { x = -2347.906, y = 76.855, z = 4326.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800044, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始埋点
	{ config_id = 1104006, name = "GADGET_STATE_CHANGE_104006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104006", action = "action_EVENT_GADGET_STATE_CHANGE_104006" },
	-- 玩法完成
	{ config_id = 1104007, name = "GADGET_STATE_CHANGE_104007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104007", action = "action_EVENT_GADGET_STATE_CHANGE_104007" },
	-- 保底
	{ config_id = 1104008, name = "GROUP_LOAD_104008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_104008", action = "action_EVENT_GROUP_LOAD_104008", trigger_count = 0 },
	-- 玩法进度埋点
	{ config_id = 1104009, name = "GADGET_STATE_CHANGE_104009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104009", action = "action_EVENT_GADGET_STATE_CHANGE_104009" }
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
		gadgets = { 104001, 104002, 104004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_104006", "GADGET_STATE_CHANGE_104007", "GROUP_LOAD_104008", "GADGET_STATE_CHANGE_104009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104006(context, evt)
	if 104001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104007(context, evt)
	if 104002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104007(context, evt)
	-- 将本组内变量名为 "finish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish2", 1, 133308338) then
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
function condition_EVENT_GROUP_LOAD_104008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308104, 104002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_104008(context, evt)
	-- 将本组内变量名为 "finish2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish2", 1, 133308338) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104009(context, evt)
	if 104004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"