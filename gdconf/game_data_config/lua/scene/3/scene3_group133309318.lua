-- 基础信息
local base_info = {
	group_id = 133309318
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 318002,
	gadget_fireBase1 = 318001,
	gadget_fire1 = 318003,
	gadget_fireBase2 = 318004,
	gadget_fire2 = 318005,
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
	{ config_id = 318007, monster_id = 24040101, pos = { x = -2385.927, y = -269.018, z = 5497.856 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 27 },
	{ config_id = 318008, monster_id = 24040301, pos = { x = -2380.477, y = -269.018, z = 5492.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 1号基座
	{ config_id = 318001, gadget_id = 70330279, pos = { x = -2345.333, y = -264.438, z = 5482.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 318002, gadget_id = 70330278, pos = { x = -2367.300, y = -268.733, z = 5510.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 318003, gadget_id = 70330257, pos = { x = -2345.333, y = -262.633, z = 5482.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900191, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 318004, gadget_id = 70330279, pos = { x = -2380.237, y = -268.224, z = 5498.068 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 318005, gadget_id = 70330257, pos = { x = -2380.237, y = -266.469, z = 5498.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900192, persistent = true, area_id = 27 },
	{ config_id = 318009, gadget_id = 70330278, pos = { x = -2323.300, y = -268.733, z = 5510.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1318006, name = "GADGET_STATE_CHANGE_318006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318006", action = "action_EVENT_GADGET_STATE_CHANGE_318006" },
	{ config_id = 1318010, name = "GADGET_STATE_CHANGE_318010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318010", action = "action_EVENT_GADGET_STATE_CHANGE_318010" },
	-- 玩法开始埋点
	{ config_id = 1318011, name = "GADGET_STATE_CHANGE_318011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318011", action = "action_EVENT_GADGET_STATE_CHANGE_318011" },
	-- 玩法进度埋点
	{ config_id = 1318012, name = "GADGET_STATE_CHANGE_318012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318012", action = "action_EVENT_GADGET_STATE_CHANGE_318012" }
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
		gadgets = { 318001, 318002, 318004, 318009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_318006", "GADGET_STATE_CHANGE_318010", "GADGET_STATE_CHANGE_318011", "GADGET_STATE_CHANGE_318012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_318006(context, evt)
	if 318004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_318006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 318007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 318008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_318010(context, evt)
	if 318002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_318010(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reminder", 1, 133309207) then
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
function condition_EVENT_GADGET_STATE_CHANGE_318011(context, evt)
	if 318001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_318011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_318012(context, evt)
	if 318004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_318012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"