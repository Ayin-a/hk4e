-- 基础信息
local base_info = {
	group_id = 133309255
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 255002,
	gadget_fireBase1 = 255004,
	gadget_fire1 = 255005,
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
	{ config_id = 255002, gadget_id = 70330278, pos = { x = -2561.000, y = -24.134, z = 5460.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 2号基座
	{ config_id = 255004, gadget_id = 70330279, pos = { x = -2521.094, y = -14.797, z = 5548.169 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 255005, gadget_id = 70330257, pos = { x = -2521.094, y = -12.995, z = 5548.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900085, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号激活
	{ config_id = 1255006, name = "GADGET_STATE_CHANGE_255006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255006", action = "action_EVENT_GADGET_STATE_CHANGE_255006" },
	-- 玩法完成
	{ config_id = 1255007, name = "GADGET_STATE_CHANGE_255007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255007", action = "action_EVENT_GADGET_STATE_CHANGE_255007" },
	-- 玩法开始埋点
	{ config_id = 1255008, name = "GADGET_STATE_CHANGE_255008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255008", action = "action_EVENT_GADGET_STATE_CHANGE_255008" },
	-- 玩法进度埋点
	{ config_id = 1255009, name = "GADGET_STATE_CHANGE_255009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255009", action = "action_EVENT_GADGET_STATE_CHANGE_255009" },
	-- 火种释放保底
	{ config_id = 1255010, name = "GROUP_LOAD_255010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_255010", action = "action_EVENT_GROUP_LOAD_255010", trigger_count = 0 },
	-- 火种释放
	{ config_id = 1255011, name = "VARIABLE_CHANGE_255011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_255011", action = "action_EVENT_VARIABLE_CHANGE_255011" }
}

-- 变量
variables = {
	{ config_id = 5, name = "active", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 255001, gadget_id = 70330279, pos = { x = -2599.380, y = -1.629, z = 5569.026 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
		{ config_id = 255003, gadget_id = 70330257, pos = { x = -2599.380, y = 0.184, z = 5569.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900084, persistent = true, area_id = 27 }
	}
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
		gadgets = { 255002, 255004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_255006", "GADGET_STATE_CHANGE_255007", "GADGET_STATE_CHANGE_255008", "GADGET_STATE_CHANGE_255009", "GROUP_LOAD_255010", "VARIABLE_CHANGE_255011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255006(context, evt)
	-- 检测config_id为255004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 255004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255006(context, evt)
	-- 针对当前group内变量名为 "fight" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "fight", 1, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255007(context, evt)
	if 255002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255007(context, evt)
	-- 针对当前group内变量名为 "chestopen" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "chestopen", 1, 133309253) then
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
function condition_EVENT_GADGET_STATE_CHANGE_255008(context, evt)
	if 255004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255009(context, evt)
	if 255004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_255010(context, evt)
	-- 判断变量"active"为1
	if ScriptLib.GetGroupVariableValue(context, "active") ~= 1 then
			return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309255, 255004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_255010(context, evt)
	-- 将configid为 255004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_255011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active"为1
	if ScriptLib.GetGroupVariableValue(context, "active") ~= 1 then
			return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309255, 255004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_255011(context, evt)
	-- 将configid为 255004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"