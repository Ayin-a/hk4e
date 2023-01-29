-- 基础信息
local base_info = {
	group_id = 133313112
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 112002,
	gadget_fireBase1 = 112001,
	gadget_fire1 = 112003,
	gadget_fireBase2 = 112004,
	gadget_fire2 = 112005,
	gadget_fireBase3 = 112006,
	gadget_fire3 = 112011,
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
	{ config_id = 112001, gadget_id = 70330279, pos = { x = -285.202, y = -45.636, z = 5623.269 }, rot = { x = 0.000, y = 165.188, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 112002, gadget_id = 70330278, pos = { x = -355.030, y = -32.237, z = 5571.761 }, rot = { x = 0.000, y = 74.405, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 112003, gadget_id = 70330257, pos = { x = -285.180, y = -44.006, z = 5623.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300030, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 112004, gadget_id = 70330279, pos = { x = -273.122, y = -47.373, z = 5577.832 }, rot = { x = 0.226, y = 346.405, z = 359.351 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 112005, gadget_id = 70330257, pos = { x = -273.074, y = -45.630, z = 5577.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300092, persistent = true, area_id = 32 },
	-- 3号基座
	{ config_id = 112006, gadget_id = 70330279, pos = { x = -339.147, y = -32.368, z = 5593.608 }, rot = { x = 0.226, y = 346.405, z = 359.351 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 112011, gadget_id = 70330257, pos = { x = -339.221, y = -30.695, z = 5593.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300031, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1112007, name = "GADGET_STATE_CHANGE_112007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_112007", action = "action_EVENT_GADGET_STATE_CHANGE_112007" },
	-- 保底
	{ config_id = 1112008, name = "GROUP_LOAD_112008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_112008", action = "action_EVENT_GROUP_LOAD_112008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1112009, name = "GADGET_STATE_CHANGE_112009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_112009", action = "action_EVENT_GADGET_STATE_CHANGE_112009" },
	-- 玩法进度埋点
	{ config_id = 1112010, name = "GADGET_STATE_CHANGE_112010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_112010", action = "action_EVENT_GADGET_STATE_CHANGE_112010" }
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
		gadgets = { 112001, 112002, 112004, 112006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_112007", "GROUP_LOAD_112008", "GADGET_STATE_CHANGE_112009", "GADGET_STATE_CHANGE_112010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_112007(context, evt)
	if 112002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_112007(context, evt)
	-- 将本组内变量名为 "fire_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fire_2", 1, 133313111) then
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
function condition_EVENT_GROUP_LOAD_112008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313112, 112002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_112008(context, evt)
	-- 将本组内变量名为 "fire_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fire_2", 1, 133313111) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_112009(context, evt)
	if 112001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_112009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_112010(context, evt)
	if 112004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_112010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"