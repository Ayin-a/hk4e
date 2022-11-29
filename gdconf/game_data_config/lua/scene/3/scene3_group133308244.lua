-- 基础信息
local base_info = {
	group_id = 133308244
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 244002,
	gadget_fireBase1 = 244001,
	gadget_fire1 = 244003,
	gadget_fireBase2 = 244004,
	gadget_fire2 = 244005,
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
	{ config_id = 244001, gadget_id = 70330279, pos = { x = -1512.391, y = 47.882, z = 4407.447 }, rot = { x = 0.000, y = 279.650, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 244002, gadget_id = 70330278, pos = { x = -1526.945, y = 52.882, z = 4404.485 }, rot = { x = 0.000, y = 278.652, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 1号火种
	{ config_id = 244003, gadget_id = 70330257, pos = { x = -1512.375, y = 49.338, z = 4407.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800074, persistent = true, area_id = 26 },
	-- 2号基座
	{ config_id = 244004, gadget_id = 70330279, pos = { x = -1536.394, y = 38.882, z = 4410.969 }, rot = { x = 0.000, y = 9.916, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 2号火种
	{ config_id = 244005, gadget_id = 70330257, pos = { x = -1536.375, y = 40.551, z = 4410.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800075, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1244006, name = "GROUP_LOAD_244006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_244006", action = "action_EVENT_GROUP_LOAD_244006", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1244007, name = "GADGET_STATE_CHANGE_244007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244007", action = "action_EVENT_GADGET_STATE_CHANGE_244007" },
	-- 玩法开始埋点
	{ config_id = 1244011, name = "GADGET_STATE_CHANGE_244011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244011", action = "action_EVENT_GADGET_STATE_CHANGE_244011" },
	-- 玩法进度埋点
	{ config_id = 1244012, name = "GADGET_STATE_CHANGE_244012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244012", action = "action_EVENT_GADGET_STATE_CHANGE_244012" }
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
		gadgets = { 244001, 244002, 244004 },
		regions = { },
		triggers = { "GROUP_LOAD_244006", "GADGET_STATE_CHANGE_244007", "GADGET_STATE_CHANGE_244011", "GADGET_STATE_CHANGE_244012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_244006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308244, 244002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_244006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133308293) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_244007(context, evt)
	if 244002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_244007(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133308293) then
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
function condition_EVENT_GADGET_STATE_CHANGE_244011(context, evt)
	if 244001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_244011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_244012(context, evt)
	if 244004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_244012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"