-- 基础信息
local base_info = {
	group_id = 133313134
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 134002,
	gadget_fireBase1 = 134001,
	gadget_fire1 = 134003,
	gadget_fireBase2 = 134004,
	gadget_fire2 = 134005,
	gadget_fireBase3 = 134011,
	gadget_fire3 = 134012,
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
	{ config_id = 134001, gadget_id = 70330279, pos = { x = -914.300, y = -249.542, z = 5991.858 }, rot = { x = 0.000, y = 330.105, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 134002, gadget_id = 70330278, pos = { x = -735.513, y = -215.385, z = 5920.888 }, rot = { x = 0.000, y = 2.814, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 134003, gadget_id = 70330257, pos = { x = -914.296, y = -247.722, z = 5991.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300035, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 134004, gadget_id = 70330279, pos = { x = -875.898, y = -242.778, z = 6059.381 }, rot = { x = 0.000, y = 319.455, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 134005, gadget_id = 70330257, pos = { x = -875.896, y = -241.106, z = 6059.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300036, persistent = true, area_id = 32 },
	{ config_id = 134006, gadget_id = 70211101, pos = { x = -735.244, y = -215.374, z = 5925.903 }, rot = { x = 0.000, y = 3.998, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 3号基座
	{ config_id = 134011, gadget_id = 70330279, pos = { x = -774.162, y = -245.387, z = 6043.034 }, rot = { x = 0.000, y = 319.455, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 134012, gadget_id = 70330257, pos = { x = -774.230, y = -243.771, z = 6043.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300045, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1134007, name = "GADGET_STATE_CHANGE_134007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_134007", action = "action_EVENT_GADGET_STATE_CHANGE_134007" },
	-- 保底
	{ config_id = 1134008, name = "GROUP_LOAD_134008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_134008", action = "action_EVENT_GROUP_LOAD_134008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1134009, name = "GADGET_STATE_CHANGE_134009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_134009", action = "action_EVENT_GADGET_STATE_CHANGE_134009" },
	-- 玩法进度埋点
	{ config_id = 1134010, name = "GADGET_STATE_CHANGE_134010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_134010", action = "action_EVENT_GADGET_STATE_CHANGE_134010" }
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
		gadgets = { 134001, 134002, 134004, 134011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_134007", "GROUP_LOAD_134008", "GADGET_STATE_CHANGE_134009", "GADGET_STATE_CHANGE_134010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_134007(context, evt)
	if 134002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_134007(context, evt)
	-- 创建id为134006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134006 }) then
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
function condition_EVENT_GROUP_LOAD_134008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313134, 134002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_134008(context, evt)
	-- 创建id为134006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_134009(context, evt)
	if 134001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_134009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_134010(context, evt)
	if 134004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_134010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"