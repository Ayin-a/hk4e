-- 基础信息
local base_info = {
	group_id = 133309739
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 739002,
	gadget_fireBase1 = 739001,
	gadget_fire1 = 739003,
	gadget_fireBase2 = 739004,
	gadget_fire2 = 739005,
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
	{ config_id = 739001, gadget_id = 70330279, pos = { x = -2836.720, y = 155.382, z = 5939.435 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 739002, gadget_id = 70330278, pos = { x = -2807.267, y = 179.392, z = 5985.218 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 739003, gadget_id = 70330257, pos = { x = -2836.720, y = 157.192, z = 5939.435 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 32, route_id = 330900251, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 739004, gadget_id = 70330279, pos = { x = -2826.798, y = 155.392, z = 5988.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 739005, gadget_id = 70330257, pos = { x = -2826.798, y = 157.192, z = 5988.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900252, persistent = true, area_id = 27 },
	{ config_id = 739006, gadget_id = 70211101, pos = { x = -2811.989, y = 180.086, z = 5990.190 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 739011, gadget_id = 70330225, pos = { x = -2811.887, y = 182.086, z = 5990.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1739007, name = "GADGET_STATE_CHANGE_739007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_739007", action = "action_EVENT_GADGET_STATE_CHANGE_739007" },
	-- 保底
	{ config_id = 1739008, name = "GROUP_LOAD_739008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_739008", action = "action_EVENT_GROUP_LOAD_739008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1739009, name = "GADGET_STATE_CHANGE_739009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_739009", action = "action_EVENT_GADGET_STATE_CHANGE_739009" },
	-- 玩法进度埋点
	{ config_id = 1739010, name = "GADGET_STATE_CHANGE_739010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_739010", action = "action_EVENT_GADGET_STATE_CHANGE_739010" },
	-- 射线激活时解锁
	{ config_id = 1739012, name = "VARIABLE_CHANGE_739012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_739012", action = "action_EVENT_VARIABLE_CHANGE_739012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1739013, name = "GROUP_LOAD_739013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_739013", action = "action_EVENT_GROUP_LOAD_739013", trigger_count = 0 },
		{ config_id = 1739014, name = "GROUP_LOAD_739014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_739014", action = "action_EVENT_GROUP_LOAD_739014", trigger_count = 0 }
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
		gadgets = { 739001, 739002, 739004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_739007", "GROUP_LOAD_739008", "GADGET_STATE_CHANGE_739009", "GADGET_STATE_CHANGE_739010", "VARIABLE_CHANGE_739012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_739007(context, evt)
	if 739002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_739007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建id为739011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 739011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为739006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 739006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_739008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309739, 739002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_739008(context, evt)
	-- 创建id为739006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 739006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_739009(context, evt)
	if 739001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_739009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_739010(context, evt)
	if 739004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_739010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_739012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309739, 739001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_739012(context, evt)
	-- 将configid为 739001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 739001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"
require "V3_1/Engineer_Mark"