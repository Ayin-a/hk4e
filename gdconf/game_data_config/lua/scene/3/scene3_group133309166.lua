-- 基础信息
local base_info = {
	group_id = 133309166
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 166002,
	gadget_fireBase1 = 166001,
	gadget_fire1 = 166003,
	gadget_fireBase2 = 166004,
	gadget_fire2 = 166005,
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
	{ config_id = 166007, monster_id = 24040201, pos = { x = -2309.952, y = -269.018, z = 5572.739 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 27 },
	{ config_id = 166008, monster_id = 24040301, pos = { x = -2305.674, y = -269.018, z = 5568.074 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 1号基座
	{ config_id = 166001, gadget_id = 70330279, pos = { x = -2289.222, y = -264.745, z = 5532.995 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 166002, gadget_id = 70330278, pos = { x = -2323.300, y = -268.733, z = 5554.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 166003, gadget_id = 70330257, pos = { x = -2289.222, y = -262.936, z = 5532.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900187, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 166004, gadget_id = 70330279, pos = { x = -2310.358, y = -268.241, z = 5567.964 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 166005, gadget_id = 70330257, pos = { x = -2310.358, y = -266.482, z = 5567.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900188, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1166006, name = "GADGET_STATE_CHANGE_166006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166006", action = "action_EVENT_GADGET_STATE_CHANGE_166006" },
	{ config_id = 1166009, name = "GADGET_STATE_CHANGE_166009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166009", action = "action_EVENT_GADGET_STATE_CHANGE_166009" },
	-- 玩法开始埋点
	{ config_id = 1166010, name = "GADGET_STATE_CHANGE_166010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166010", action = "action_EVENT_GADGET_STATE_CHANGE_166010" },
	-- 玩法进度埋点
	{ config_id = 1166011, name = "GADGET_STATE_CHANGE_166011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166011", action = "action_EVENT_GADGET_STATE_CHANGE_166011" }
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
		gadgets = { 166001, 166002, 166004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_166006", "GADGET_STATE_CHANGE_166009", "GADGET_STATE_CHANGE_166010", "GADGET_STATE_CHANGE_166011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_166006(context, evt)
	if 166004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_166006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 166007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 166008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_166009(context, evt)
	if 166002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_166009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_166010(context, evt)
	if 166001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_166010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_166011(context, evt)
	if 166004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_166011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"