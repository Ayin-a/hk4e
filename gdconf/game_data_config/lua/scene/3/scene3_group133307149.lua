-- 基础信息
local base_info = {
	group_id = 133307149
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 149002,
	gadget_fireBase1 = 149001,
	gadget_fire1 = 149003,
	gadget_fireBase2 = 149004,
	gadget_fire2 = 149005,
	gadget_fireBase3 = 149011,
	gadget_fire3 = 149013,
	gadget_fireBase4 = 149012,
	gadget_fire4 = 149014
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
	{ config_id = 149001, gadget_id = 70330279, pos = { x = -1484.199, y = -5.818, z = 5368.069 }, rot = { x = 0.000, y = 285.268, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 149002, gadget_id = 70330278, pos = { x = -1534.973, y = 55.706, z = 5615.936 }, rot = { x = 0.000, y = 285.412, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 149003, gadget_id = 70330257, pos = { x = -1484.152, y = -3.918, z = 5367.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700028, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 149004, gadget_id = 70330279, pos = { x = -1497.769, y = 11.503, z = 5460.717 }, rot = { x = 0.000, y = 14.244, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 149005, gadget_id = 70330257, pos = { x = -1497.710, y = 13.314, z = 5460.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700029, persistent = true, area_id = 32 },
	{ config_id = 149006, gadget_id = 70211101, pos = { x = -1535.566, y = 54.762, z = 5629.526 }, rot = { x = 0.000, y = 104.870, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 3号基座
	{ config_id = 149011, gadget_id = 70330279, pos = { x = -1512.308, y = 22.837, z = 5526.525 }, rot = { x = 0.000, y = 47.104, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 4号基座
	{ config_id = 149012, gadget_id = 70330279, pos = { x = -1512.347, y = 34.002, z = 5587.014 }, rot = { x = 0.000, y = 14.755, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 149013, gadget_id = 70330257, pos = { x = -1512.194, y = 24.557, z = 5526.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700031, persistent = true, area_id = 32 },
	-- 4号火种
	{ config_id = 149014, gadget_id = 70330257, pos = { x = -1512.314, y = 35.543, z = 5587.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700032, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1149007, name = "GADGET_STATE_CHANGE_149007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149007", action = "action_EVENT_GADGET_STATE_CHANGE_149007" },
	-- 保底
	{ config_id = 1149008, name = "GROUP_LOAD_149008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_149008", action = "action_EVENT_GROUP_LOAD_149008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1149009, name = "GADGET_STATE_CHANGE_149009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149009", action = "action_EVENT_GADGET_STATE_CHANGE_149009" },
	-- 玩法进度埋点
	{ config_id = 1149010, name = "GADGET_STATE_CHANGE_149010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149010", action = "action_EVENT_GADGET_STATE_CHANGE_149010" }
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
		gadgets = { 149001, 149002, 149004, 149011, 149012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_149007", "GROUP_LOAD_149008", "GADGET_STATE_CHANGE_149009", "GADGET_STATE_CHANGE_149010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149007(context, evt)
	if 149002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149007(context, evt)
	-- 创建id为149006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 149006 }) then
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
function condition_EVENT_GROUP_LOAD_149008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307149, 149002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_149008(context, evt)
	-- 创建id为149006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 149006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149009(context, evt)
	if 149001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_149010(context, evt)
	if 149004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"