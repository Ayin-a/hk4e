-- 基础信息
local base_info = {
	group_id = 133308600
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 600002,
	gadget_fireBase1 = 600001,
	gadget_fire1 = 600003,
	gadget_fireBase2 = 600004,
	gadget_fire2 = 600005,
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
	{ config_id = 600001, gadget_id = 70330279, pos = { x = -1500.052, y = 47.882, z = 4385.067 }, rot = { x = 0.000, y = 9.969, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 600002, gadget_id = 70330278, pos = { x = -1531.438, y = 40.993, z = 4380.626 }, rot = { x = 0.000, y = 98.916, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 1号火种
	{ config_id = 600003, gadget_id = 70330257, pos = { x = -1500.011, y = 49.409, z = 4384.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800152, persistent = true, area_id = 26 },
	-- 2号基座
	{ config_id = 600004, gadget_id = 70330279, pos = { x = -1528.575, y = 40.882, z = 4374.719 }, rot = { x = 0.000, y = 99.614, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 2号火种
	{ config_id = 600005, gadget_id = 70330257, pos = { x = -1528.569, y = 42.317, z = 4374.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800153, persistent = true, area_id = 26 },
	{ config_id = 600011, gadget_id = 70330278, pos = { x = -1533.052, y = 40.882, z = 4370.333 }, rot = { x = 0.000, y = 98.916, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1600007, name = "GADGET_STATE_CHANGE_600007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_600007", action = "action_EVENT_GADGET_STATE_CHANGE_600007" },
	-- 保底
	{ config_id = 1600008, name = "GROUP_LOAD_600008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_600008", action = "action_EVENT_GROUP_LOAD_600008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1600009, name = "GADGET_STATE_CHANGE_600009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_600009", action = "action_EVENT_GADGET_STATE_CHANGE_600009" },
	-- 玩法进度埋点
	{ config_id = 1600010, name = "GADGET_STATE_CHANGE_600010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_600010", action = "action_EVENT_GADGET_STATE_CHANGE_600010" }
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
		gadgets = { 600001, 600002, 600004, 600011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_600007", "GROUP_LOAD_600008", "GADGET_STATE_CHANGE_600009", "GADGET_STATE_CHANGE_600010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_600007(context, evt)
	if 600002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_600007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133308292) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_600008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308600, 600002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_600008(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133308292) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_600009(context, evt)
	if 600001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_600009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_600010(context, evt)
	if 600004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_600010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"