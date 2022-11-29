-- 基础信息
local base_info = {
	group_id = 133308602
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 602002,
	gadget_fireBase1 = 602001,
	gadget_fire1 = 602003,
	gadget_fireBase2 = 0,
	gadget_fire2 = 0,
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
	{ config_id = 602001, gadget_id = 70330279, pos = { x = -1493.699, y = 47.882, z = 4424.521 }, rot = { x = 0.000, y = 189.736, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 602002, gadget_id = 70330278, pos = { x = -1495.569, y = 4.872, z = 4413.305 }, rot = { x = 0.000, y = 10.662, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 1号火种
	{ config_id = 602003, gadget_id = 70330257, pos = { x = -1493.724, y = 49.556, z = 4424.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800154, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1602007, name = "GADGET_STATE_CHANGE_602007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_602007", action = "action_EVENT_GADGET_STATE_CHANGE_602007" },
	-- 保底
	{ config_id = 1602008, name = "GROUP_LOAD_602008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_602008", action = "action_EVENT_GROUP_LOAD_602008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1602009, name = "GADGET_STATE_CHANGE_602009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_602009", action = "action_EVENT_GADGET_STATE_CHANGE_602009" },
	-- 玩法进度埋点
	{ config_id = 1602010, name = "GADGET_STATE_CHANGE_602010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_602010", action = "action_EVENT_GADGET_STATE_CHANGE_602010" }
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
		gadgets = { 602001, 602002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_602007", "GROUP_LOAD_602008", "GADGET_STATE_CHANGE_602009", "GADGET_STATE_CHANGE_602010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_602007(context, evt)
	if 602002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_602007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133308301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308592, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_602008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308602, 602002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_602008(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133308301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308592, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_602009(context, evt)
	if 602001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_602009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_602010(context, evt)
	if 602002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_602010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"