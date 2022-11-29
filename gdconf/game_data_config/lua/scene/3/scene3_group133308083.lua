-- 基础信息
local base_info = {
	group_id = 133308083
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 83002,
	gadget_fireBase1 = 83001,
	gadget_fire1 = 83003,
	gadget_fireBase2 = 83004,
	gadget_fire2 = 83005,
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
	{ config_id = 83001, gadget_id = 70330279, pos = { x = -2336.598, y = 47.432, z = 4252.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 83002, gadget_id = 70330278, pos = { x = -2334.182, y = 47.366, z = 4295.910 }, rot = { x = 0.000, y = 134.907, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 1号火种
	{ config_id = 83003, gadget_id = 70330257, pos = { x = -2336.600, y = 49.183, z = 4252.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800034, persistent = true, area_id = 26 },
	-- 2号基座
	{ config_id = 83004, gadget_id = 70330279, pos = { x = -2318.568, y = 47.432, z = 4270.779 }, rot = { x = 0.000, y = 269.410, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 2号火种
	{ config_id = 83005, gadget_id = 70330257, pos = { x = -2318.686, y = 49.046, z = 4270.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800035, persistent = true, area_id = 26 },
	{ config_id = 83006, gadget_id = 70211101, pos = { x = -2336.385, y = 47.975, z = 4287.993 }, rot = { x = 7.655, y = 140.003, z = 6.311 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1083007, name = "GADGET_STATE_CHANGE_83007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83007", action = "action_EVENT_GADGET_STATE_CHANGE_83007" },
	-- 保底
	{ config_id = 1083008, name = "GROUP_LOAD_83008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_83008", action = "action_EVENT_GROUP_LOAD_83008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1083009, name = "GADGET_STATE_CHANGE_83009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83009", action = "action_EVENT_GADGET_STATE_CHANGE_83009" },
	-- 玩法进度埋点
	{ config_id = 1083010, name = "GADGET_STATE_CHANGE_83010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83010", action = "action_EVENT_GADGET_STATE_CHANGE_83010" }
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
		gadgets = { 83001, 83002, 83004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_83007", "GROUP_LOAD_83008", "GADGET_STATE_CHANGE_83009", "GADGET_STATE_CHANGE_83010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_83007(context, evt)
	if 83002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83007(context, evt)
	-- 创建id为83006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 83006 }) then
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
function condition_EVENT_GROUP_LOAD_83008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308083, 83002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_83008(context, evt)
	-- 创建id为83006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 83006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_83009(context, evt)
	if 83001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_83010(context, evt)
	if 83004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"