-- 基础信息
local base_info = {
	group_id = 133310093
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 93002,
	gadget_fireBase1 = 93001,
	gadget_fire1 = 93003,
	gadget_fireBase2 = 93004,
	gadget_fire2 = 93005,
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
	{ config_id = 93001, gadget_id = 70330313, pos = { x = -2330.990, y = 94.915, z = 5078.986 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 93002, gadget_id = 70330278, pos = { x = -2342.000, y = 118.849, z = 5091.030 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 93003, gadget_id = 70330257, pos = { x = -2331.011, y = 96.870, z = 5078.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000026, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 93004, gadget_id = 70330279, pos = { x = -2283.935, y = 112.947, z = 5101.543 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 93005, gadget_id = 70330257, pos = { x = -2283.935, y = 114.739, z = 5101.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000027, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始埋点
	{ config_id = 1093006, name = "GADGET_STATE_CHANGE_93006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93006", action = "action_EVENT_GADGET_STATE_CHANGE_93006" },
	-- 玩法完成
	{ config_id = 1093007, name = "GADGET_STATE_CHANGE_93007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93007", action = "action_EVENT_GADGET_STATE_CHANGE_93007" },
	-- 玩法进度埋点
	{ config_id = 1093008, name = "GADGET_STATE_CHANGE_93008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93008", action = "action_EVENT_GADGET_STATE_CHANGE_93008" },
	-- 运营埋点
	{ config_id = 1093009, name = "GADGET_STATE_CHANGE_93009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93009", action = "action_EVENT_GADGET_STATE_CHANGE_93009" }
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
		gadgets = { 93001, 93002, 93004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_93006", "GADGET_STATE_CHANGE_93007", "GADGET_STATE_CHANGE_93008", "GADGET_STATE_CHANGE_93009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93006(context, evt)
	if 93001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93006(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_93007(context, evt)
	if 93002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93007(context, evt)
	-- 针对当前group内变量名为 "torch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "torch", 1, 133310009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "reminder1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "reminder1", 1, 133310287) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
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
function condition_EVENT_GADGET_STATE_CHANGE_93008(context, evt)
	if 93004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93009(context, evt)
	-- 检测config_id为93001的gadget是否从GadgetState.GearAction2变为GadgetState.GearStart
	if 93001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330313) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"