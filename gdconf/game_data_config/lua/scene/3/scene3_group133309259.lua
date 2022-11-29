-- 基础信息
local base_info = {
	group_id = 133309259
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 259002,
	gadget_fireBase1 = 259001,
	gadget_fire1 = 259003,
	gadget_fireBase2 = 259004,
	gadget_fire2 = 259005,
	gadget_fireBase3 = 259006,
	gadget_fire3 = 259008,
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
	{ config_id = 259001, gadget_id = 70330279, pos = { x = -2340.196, y = 49.691, z = 5318.801 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 259002, gadget_id = 70330278, pos = { x = -2361.893, y = 16.728, z = 5227.197 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 259003, gadget_id = 70330257, pos = { x = -2340.196, y = 51.498, z = 5318.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900086, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 259004, gadget_id = 70330279, pos = { x = -2360.012, y = 21.559, z = 5306.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 259005, gadget_id = 70330257, pos = { x = -2360.012, y = 23.338, z = 5306.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900087, persistent = true, area_id = 27 },
	-- 3号基座
	{ config_id = 259006, gadget_id = 70330279, pos = { x = -2400.248, y = 7.067, z = 5334.048 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3号火种
	{ config_id = 259008, gadget_id = 70330257, pos = { x = -2400.248, y = 8.883, z = 5334.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900091, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1259007, name = "GADGET_STATE_CHANGE_259007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259007", action = "action_EVENT_GADGET_STATE_CHANGE_259007" },
	-- 玩法完成
	{ config_id = 1259009, name = "GROUP_LOAD_259009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_259009", action = "action_EVENT_GROUP_LOAD_259009", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1259010, name = "GADGET_STATE_CHANGE_259010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259010", action = "action_EVENT_GADGET_STATE_CHANGE_259010" },
	-- 玩法进度埋点
	{ config_id = 1259011, name = "GADGET_STATE_CHANGE_259011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259011", action = "action_EVENT_GADGET_STATE_CHANGE_259011" },
	-- 玩法进度埋点
	{ config_id = 1259012, name = "GADGET_STATE_CHANGE_259012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259012", action = "action_EVENT_GADGET_STATE_CHANGE_259012" }
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
		gadgets = { 259001, 259002, 259004, 259006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_259007", "GROUP_LOAD_259009", "GADGET_STATE_CHANGE_259010", "GADGET_STATE_CHANGE_259011", "GADGET_STATE_CHANGE_259012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259007(context, evt)
	if 259002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259007(context, evt)
	-- 将本组内变量名为 "torch1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch1", 1, 133309497) then
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
function condition_EVENT_GROUP_LOAD_259009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309259, 259002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_259009(context, evt)
	-- 将本组内变量名为 "torch1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch1", 1, 133309497) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259010(context, evt)
	if 259001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259011(context, evt)
	if 259004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259012(context, evt)
	if 259006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"