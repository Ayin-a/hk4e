-- 基础信息
local base_info = {
	group_id = 133307373
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 373002,
	gadget_fireBase1 = 373001,
	gadget_fire1 = 373003,
	gadget_fireBase2 = 373004,
	gadget_fire2 = 373005,
	gadget_fireBase3 = 373006,
	gadget_fire3 = 373011,
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
	{ config_id = 373001, gadget_id = 70330279, pos = { x = -1657.572, y = 26.762, z = 5668.497 }, rot = { x = 0.000, y = 286.282, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 373002, gadget_id = 70330278, pos = { x = -1747.588, y = 25.688, z = 5698.668 }, rot = { x = 0.000, y = 105.482, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 373003, gadget_id = 70330257, pos = { x = -1729.559, y = 28.362, z = 5715.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700099, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 373004, gadget_id = 70330279, pos = { x = -1664.620, y = 10.290, z = 5695.490 }, rot = { x = 0.000, y = 286.263, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 373005, gadget_id = 70330257, pos = { x = -1664.670, y = 11.923, z = 5695.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700100, persistent = true, area_id = 32 },
	-- 3号基座
	{ config_id = 373006, gadget_id = 70330279, pos = { x = -1726.485, y = 10.254, z = 5712.160 }, rot = { x = 0.000, y = 285.992, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 373011, gadget_id = 70330257, pos = { x = -1726.503, y = 11.886, z = 5712.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700101, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1373007, name = "GADGET_STATE_CHANGE_373007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373007", action = "action_EVENT_GADGET_STATE_CHANGE_373007" },
	-- 保底
	{ config_id = 1373008, name = "GROUP_LOAD_373008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_373008", action = "action_EVENT_GROUP_LOAD_373008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1373009, name = "GADGET_STATE_CHANGE_373009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373009", action = "action_EVENT_GADGET_STATE_CHANGE_373009" },
	-- 玩法进度埋点
	{ config_id = 1373010, name = "GADGET_STATE_CHANGE_373010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373010", action = "action_EVENT_GADGET_STATE_CHANGE_373010" }
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
		gadgets = { 373001, 373002, 373004, 373006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_373007", "GROUP_LOAD_373008", "GADGET_STATE_CHANGE_373009", "GADGET_STATE_CHANGE_373010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373007(context, evt)
	if 373002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373007(context, evt)
	-- 将本组内变量名为 "fin_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fin_2", 1, 133307361) then
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
function condition_EVENT_GROUP_LOAD_373008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307373, 373002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_373008(context, evt)
	-- 将本组内变量名为 "fin_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fin_2", 1, 133307361) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373009(context, evt)
	if 373001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_373010(context, evt)
	if 373004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"