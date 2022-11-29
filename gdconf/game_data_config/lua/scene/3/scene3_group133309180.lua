-- 基础信息
local base_info = {
	group_id = 133309180
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 180002,
	gadget_fireBase1 = 180001,
	gadget_fire1 = 180003,
	gadget_fireBase2 = 180004,
	gadget_fire2 = 180005,
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
	{ config_id = 180007, monster_id = 24040201, pos = { x = -2385.121, y = -269.018, z = 5568.177 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 27 },
	{ config_id = 180008, monster_id = 24040101, pos = { x = -2380.784, y = -269.018, z = 5573.081 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 1号基座
	{ config_id = 180001, gadget_id = 70330279, pos = { x = -2403.580, y = -264.698, z = 5533.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 180002, gadget_id = 70330278, pos = { x = -2367.300, y = -268.733, z = 5554.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 180003, gadget_id = 70330257, pos = { x = -2403.580, y = -262.878, z = 5533.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900189, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 180004, gadget_id = 70330279, pos = { x = -2380.242, y = -268.253, z = 5568.003 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 180005, gadget_id = 70330257, pos = { x = -2380.242, y = -266.473, z = 5568.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900190, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1180006, name = "GADGET_STATE_CHANGE_180006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_180006", action = "action_EVENT_GADGET_STATE_CHANGE_180006" },
	{ config_id = 1180009, name = "GADGET_STATE_CHANGE_180009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_180009", action = "action_EVENT_GADGET_STATE_CHANGE_180009" },
	-- 玩法开始埋点
	{ config_id = 1180010, name = "GADGET_STATE_CHANGE_180010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_180010", action = "action_EVENT_GADGET_STATE_CHANGE_180010" },
	-- 玩法进度埋点
	{ config_id = 1180011, name = "GADGET_STATE_CHANGE_180011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_180011", action = "action_EVENT_GADGET_STATE_CHANGE_180011" }
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
		gadgets = { 180001, 180002, 180004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_180006", "GADGET_STATE_CHANGE_180009", "GADGET_STATE_CHANGE_180010", "GADGET_STATE_CHANGE_180011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_180006(context, evt)
	if 180004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_180006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 180007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 180008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_180009(context, evt)
	if 180002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_180009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_180010(context, evt)
	if 180001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_180010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_180011(context, evt)
	if 180004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_180011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"