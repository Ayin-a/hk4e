-- 基础信息
local base_info = {
	group_id = 133309218
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 218002,
	gadget_fireBase1 = 218001,
	gadget_fire1 = 218003,
	gadget_fireBase2 = 218004,
	gadget_fire2 = 218005,
	gadget_fireBase3 = 218009,
	gadget_fire3 = 218010,
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
	{ config_id = 218001, gadget_id = 70330279, pos = { x = -2577.909, y = 33.554, z = 5537.358 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 218002, gadget_id = 70330278, pos = { x = -2455.000, y = -18.144, z = 5465.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 218003, gadget_id = 70330257, pos = { x = -2577.909, y = 35.367, z = 5537.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900069, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 218004, gadget_id = 70330279, pos = { x = -2565.340, y = 9.565, z = 5522.212 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 218005, gadget_id = 70330257, pos = { x = -2565.340, y = 11.344, z = 5522.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900070, persistent = true, area_id = 27 },
	-- 3号基座
	{ config_id = 218009, gadget_id = 70330279, pos = { x = -2507.721, y = 9.696, z = 5524.206 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3号火种
	{ config_id = 218010, gadget_id = 70330257, pos = { x = -2507.711, y = 11.462, z = 5524.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900075, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1218006, name = "GADGET_STATE_CHANGE_218006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218006", action = "action_EVENT_GADGET_STATE_CHANGE_218006" },
	-- 玩法完成
	{ config_id = 1218007, name = "GROUP_LOAD_218007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_218007", action = "action_EVENT_GROUP_LOAD_218007", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1218008, name = "GADGET_STATE_CHANGE_218008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218008", action = "action_EVENT_GADGET_STATE_CHANGE_218008" },
	-- 玩法进度埋点
	{ config_id = 1218011, name = "GADGET_STATE_CHANGE_218011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218011", action = "action_EVENT_GADGET_STATE_CHANGE_218011" },
	-- 玩法进度埋点
	{ config_id = 1218012, name = "GADGET_STATE_CHANGE_218012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218012", action = "action_EVENT_GADGET_STATE_CHANGE_218012" }
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
		gadgets = { 218001, 218002, 218004, 218009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_218006", "GROUP_LOAD_218007", "GADGET_STATE_CHANGE_218008", "GADGET_STATE_CHANGE_218011", "GADGET_STATE_CHANGE_218012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218006(context, evt)
	if 218002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218006(context, evt)
	-- 将本组内变量名为 "torch1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch1", 1, 133309500) then
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
function condition_EVENT_GROUP_LOAD_218007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309218, 218002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_218007(context, evt)
	-- 将本组内变量名为 "torch1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch1", 1, 133309500) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218008(context, evt)
	if 218001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218011(context, evt)
	if 218004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218012(context, evt)
	if 218009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"