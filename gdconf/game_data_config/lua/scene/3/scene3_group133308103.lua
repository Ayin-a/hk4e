-- 基础信息
local base_info = {
	group_id = 133308103
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 103002,
	gadget_fireBase1 = 103001,
	gadget_fire1 = 103003,
	gadget_fireBase2 = 103004,
	gadget_fire2 = 103005,
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
	{ config_id = 103001, gadget_id = 70330279, pos = { x = -2431.732, y = 52.092, z = 4391.343 }, rot = { x = 0.000, y = 89.596, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 103002, gadget_id = 70330278, pos = { x = -2393.587, y = 49.862, z = 4320.167 }, rot = { x = 0.000, y = 46.132, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 1号火种
	{ config_id = 103003, gadget_id = 70330257, pos = { x = -2431.541, y = 53.983, z = 4391.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800041, persistent = true, area_id = 26 },
	-- 2号基座
	{ config_id = 103004, gadget_id = 70330279, pos = { x = -2383.010, y = 49.922, z = 4342.427 }, rot = { x = 0.000, y = 272.889, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 2号火种
	{ config_id = 103005, gadget_id = 70330257, pos = { x = -2383.174, y = 51.635, z = 4342.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800042, persistent = true, area_id = 26 },
	{ config_id = 103006, gadget_id = 70211101, pos = { x = -2398.810, y = 49.862, z = 4325.461 }, rot = { x = 0.000, y = 46.985, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1103007, name = "GADGET_STATE_CHANGE_103007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103007", action = "action_EVENT_GADGET_STATE_CHANGE_103007" },
	-- 保底
	{ config_id = 1103008, name = "GROUP_LOAD_103008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_103008", action = "action_EVENT_GROUP_LOAD_103008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1103010, name = "GADGET_STATE_CHANGE_103010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103010", action = "action_EVENT_GADGET_STATE_CHANGE_103010" },
	-- 玩法进度埋点
	{ config_id = 1103011, name = "GADGET_STATE_CHANGE_103011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103011", action = "action_EVENT_GADGET_STATE_CHANGE_103011" }
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
		gadgets = { 103001, 103002, 103004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_103007", "GROUP_LOAD_103008", "GADGET_STATE_CHANGE_103010", "GADGET_STATE_CHANGE_103011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103007(context, evt)
	if 103002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103007(context, evt)
	-- 创建id为103006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 103006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
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
function condition_EVENT_GROUP_LOAD_103008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308103, 103002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_103008(context, evt)
	-- 创建id为103006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 103006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103010(context, evt)
	if 103001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103011(context, evt)
	if 103004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"