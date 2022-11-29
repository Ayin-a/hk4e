-- 基础信息
local base_info = {
	group_id = 133309109
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 109002,
	gadget_fireBase1 = 109001,
	gadget_fire1 = 109003,
	gadget_fireBase2 = 109004,
	gadget_fire2 = 109005,
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
	{ config_id = 109001, gadget_id = 70330279, pos = { x = -2439.673, y = 58.627, z = 5378.033 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 109002, gadget_id = 70330278, pos = { x = -2438.600, y = -29.215, z = 5366.790 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 1号火种
	{ config_id = 109003, gadget_id = 70330257, pos = { x = -2439.673, y = 60.371, z = 5378.033 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, route_id = 330900065, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 109004, gadget_id = 70330279, pos = { x = -2379.963, y = -5.493, z = 5395.644 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 109005, gadget_id = 70330257, pos = { x = -2379.963, y = -3.699, z = 5395.644 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, route_id = 330900066, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始埋点
	{ config_id = 1109006, name = "GADGET_STATE_CHANGE_109006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109006", action = "action_EVENT_GADGET_STATE_CHANGE_109006" },
	-- 玩法完成
	{ config_id = 1109007, name = "GADGET_STATE_CHANGE_109007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109007", action = "action_EVENT_GADGET_STATE_CHANGE_109007" },
	-- 玩法进度埋点
	{ config_id = 1109008, name = "GADGET_STATE_CHANGE_109008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109008", action = "action_EVENT_GADGET_STATE_CHANGE_109008" },
	-- 运营埋点
	{ config_id = 1109009, name = "GADGET_STATE_CHANGE_109009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109009", action = "action_EVENT_GADGET_STATE_CHANGE_109009" }
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
		gadgets = { 109001, 109002, 109004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_109006", "GADGET_STATE_CHANGE_109007", "GADGET_STATE_CHANGE_109008", "GADGET_STATE_CHANGE_109009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_109006(context, evt)
	if 109001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	if 109002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "active_count", 1, 133309151) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
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
function condition_EVENT_GADGET_STATE_CHANGE_109008(context, evt)
	if 109004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_109009(context, evt)
	-- 检测config_id为109001的gadget是否从GadgetState.GearAction2变为GadgetState.GearStart
	if 109001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330313) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"