-- 基础信息
local base_info = {
	group_id = 133309065
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 65002,
	gadget_fireBase1 = 65006,
	gadget_fire1 = 65003,
	gadget_fireBase2 = 65004,
	gadget_fire2 = 65005,
	gadget_fireBase3 = 65009,
	gadget_fire3 = 65010,
	gadget_fireBase4 = 65011,
	gadget_fire4 = 65012
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
	{ config_id = 65002, gadget_id = 70330278, pos = { x = -2205.370, y = 44.142, z = 5577.350 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 65003, gadget_id = 70330257, pos = { x = -2268.718, y = 4.254, z = 5609.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900054, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 65004, gadget_id = 70330279, pos = { x = -2198.761, y = 2.202, z = 5568.462 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 65005, gadget_id = 70330257, pos = { x = -2198.761, y = 3.975, z = 5568.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900055, persistent = true, area_id = 27 },
	{ config_id = 65006, gadget_id = 70330313, pos = { x = -2268.697, y = 2.282, z = 5609.501 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	-- 3号基座
	{ config_id = 65009, gadget_id = 70330279, pos = { x = -2185.645, y = 8.222, z = 5541.613 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3号火种
	{ config_id = 65010, gadget_id = 70330257, pos = { x = -2185.645, y = 10.025, z = 5541.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900058, persistent = true, area_id = 27 },
	-- 4号基座
	{ config_id = 65011, gadget_id = 70330279, pos = { x = -2151.438, y = 26.270, z = 5575.546 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 4号火种
	{ config_id = 65012, gadget_id = 70330257, pos = { x = -2151.438, y = 28.018, z = 5575.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900059, persistent = true, area_id = 27 },
	{ config_id = 65017, gadget_id = 70330416, pos = { x = -2183.662, y = 8.524, z = 5538.514 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1065001, name = "GADGET_STATE_CHANGE_65001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65001", action = "action_EVENT_GADGET_STATE_CHANGE_65001" },
	-- 65009激活
	{ config_id = 1065007, name = "GADGET_STATE_CHANGE_65007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65007", action = "action_EVENT_GADGET_STATE_CHANGE_65007" },
	-- 65009激活保底
	{ config_id = 1065008, name = "GROUP_LOAD_65008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65008", action = "action_EVENT_GROUP_LOAD_65008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1065013, name = "GADGET_STATE_CHANGE_65013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65013", action = "action_EVENT_GADGET_STATE_CHANGE_65013" },
	-- 玩法进度埋点
	{ config_id = 1065014, name = "GADGET_STATE_CHANGE_65014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65014", action = "action_EVENT_GADGET_STATE_CHANGE_65014" },
	-- 玩法进度埋点
	{ config_id = 1065015, name = "GADGET_STATE_CHANGE_65015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65015", action = "action_EVENT_GADGET_STATE_CHANGE_65015" },
	-- 玩法进度埋点
	{ config_id = 1065016, name = "GADGET_STATE_CHANGE_65016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65016", action = "action_EVENT_GADGET_STATE_CHANGE_65016" },
	-- 运营埋点
	{ config_id = 1065018, name = "GADGET_STATE_CHANGE_65018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65018", action = "action_EVENT_GADGET_STATE_CHANGE_65018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "active", value = 0, no_refresh = true }
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
		gadgets = { 65002, 65004, 65006, 65009, 65011, 65017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_65001", "GADGET_STATE_CHANGE_65007", "GROUP_LOAD_65008", "GADGET_STATE_CHANGE_65013", "GADGET_STATE_CHANGE_65014", "GADGET_STATE_CHANGE_65015", "GADGET_STATE_CHANGE_65016", "GADGET_STATE_CHANGE_65018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65001(context, evt)
	if 65002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65001(context, evt)
	-- 针对当前group内变量名为 "torch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "torch", 1, 133309028) then
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
function condition_EVENT_GADGET_STATE_CHANGE_65007(context, evt)
	if 65009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65007(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "active", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 65017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_65008(context, evt)
	-- 判断变量"active"为1
	if ScriptLib.GetGroupVariableValue(context, "active") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65008(context, evt)
	-- 将configid为 65017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65013(context, evt)
	if 65006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65014(context, evt)
	if 65004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65015(context, evt)
	if 65009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65016(context, evt)
	if 65011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65016(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65018(context, evt)
	-- 检测config_id为65006的gadget是否从GadgetState.GearAction2变为GadgetState.GearStart
	if 65006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65018(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330313) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"