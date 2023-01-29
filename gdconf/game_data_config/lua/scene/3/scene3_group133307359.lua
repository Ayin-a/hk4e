-- 基础信息
local base_info = {
	group_id = 133307359
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 359002,
	gadget_fireBase1 = 359001,
	gadget_fire1 = 359003,
	gadget_fireBase2 = 359004,
	gadget_fire2 = 359005,
	gadget_fireBase3 = 359006,
	gadget_fire3 = 359011,
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
	{ config_id = 359001, gadget_id = 70330279, pos = { x = -1660.862, y = 26.762, z = 5656.538 }, rot = { x = 0.000, y = 285.184, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 359002, gadget_id = 70330278, pos = { x = -1753.125, y = 25.760, z = 5677.600 }, rot = { x = 0.000, y = 285.392, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 359003, gadget_id = 70330257, pos = { x = -1660.808, y = 28.643, z = 5656.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700094, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 359004, gadget_id = 70330279, pos = { x = -1673.295, y = 13.280, z = 5636.162 }, rot = { x = 0.000, y = 284.813, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 359005, gadget_id = 70330257, pos = { x = -1673.365, y = 14.961, z = 5636.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700095, persistent = true, area_id = 32 },
	-- 3号基座
	{ config_id = 359006, gadget_id = 70330279, pos = { x = -1738.471, y = 9.909, z = 5649.571 }, rot = { x = 0.000, y = 285.350, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 359011, gadget_id = 70330257, pos = { x = -1738.363, y = 11.620, z = 5649.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700098, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1359007, name = "GADGET_STATE_CHANGE_359007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_359007", action = "action_EVENT_GADGET_STATE_CHANGE_359007" },
	-- 保底
	{ config_id = 1359008, name = "GROUP_LOAD_359008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_359008", action = "action_EVENT_GROUP_LOAD_359008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1359009, name = "GADGET_STATE_CHANGE_359009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_359009", action = "action_EVENT_GADGET_STATE_CHANGE_359009" },
	-- 玩法进度埋点
	{ config_id = 1359010, name = "GADGET_STATE_CHANGE_359010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_359010", action = "action_EVENT_GADGET_STATE_CHANGE_359010" }
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
		gadgets = { 359001, 359002, 359004, 359006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_359007", "GROUP_LOAD_359008", "GADGET_STATE_CHANGE_359009", "GADGET_STATE_CHANGE_359010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_359007(context, evt)
	if 359002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_359007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "fin_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fin_1", 1, 133307361) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_359008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307359, 359002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_359008(context, evt)
	-- 将本组内变量名为 "fin_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fin_1", 1, 133307361) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_359009(context, evt)
	if 359001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_359009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_359010(context, evt)
	if 359004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_359010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"