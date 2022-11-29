-- 基础信息
local base_info = {
	group_id = 133308101
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 101002,
	gadget_fireBase1 = 101001,
	gadget_fire1 = 101003,
	gadget_fireBase2 = 101004,
	gadget_fire2 = 101005,
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
	{ config_id = 101001, gadget_id = 70330279, pos = { x = -2333.936, y = 85.322, z = 4400.378 }, rot = { x = 0.000, y = 270.539, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 101002, gadget_id = 70330278, pos = { x = -2383.676, y = 80.452, z = 4419.329 }, rot = { x = 0.000, y = 223.830, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 1号火种
	{ config_id = 101003, gadget_id = 70330257, pos = { x = -2333.850, y = 86.848, z = 4400.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800039, persistent = true, area_id = 26 },
	-- 2号基座
	{ config_id = 101004, gadget_id = 70330279, pos = { x = -2374.911, y = 85.366, z = 4441.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 2号火种
	{ config_id = 101005, gadget_id = 70330257, pos = { x = -2374.947, y = 87.051, z = 4441.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800040, persistent = true, area_id = 26 },
	{ config_id = 101006, gadget_id = 70211101, pos = { x = -2386.402, y = 80.452, z = 4416.054 }, rot = { x = 0.000, y = 222.450, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 101009, gadget_id = 70330278, pos = { x = -2396.718, y = 80.813, z = 4432.956 }, rot = { x = 0.000, y = 223.830, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1101007, name = "GADGET_STATE_CHANGE_101007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101007", action = "action_EVENT_GADGET_STATE_CHANGE_101007" },
	-- 保底
	{ config_id = 1101008, name = "GROUP_LOAD_101008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_101008", action = "action_EVENT_GROUP_LOAD_101008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1101010, name = "GADGET_STATE_CHANGE_101010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101010", action = "action_EVENT_GADGET_STATE_CHANGE_101010" },
	-- 玩法进度埋点
	{ config_id = 1101011, name = "GADGET_STATE_CHANGE_101011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101011", action = "action_EVENT_GADGET_STATE_CHANGE_101011" }
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
		gadgets = { 101001, 101002, 101004, 101009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101007", "GROUP_LOAD_101008", "GADGET_STATE_CHANGE_101010", "GADGET_STATE_CHANGE_101011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101007(context, evt)
	if 101002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101007(context, evt)
	-- 创建id为101006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101006 }) then
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
function condition_EVENT_GROUP_LOAD_101008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308101, 101002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101008(context, evt)
	-- 创建id为101006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101010(context, evt)
	if 101001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101010(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_101011(context, evt)
	if 101004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"