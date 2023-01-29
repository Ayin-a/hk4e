-- 基础信息
local base_info = {
	group_id = 133314181
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 181002,
	gadget_fireBase1 = 181001,
	gadget_fire1 = 181003,
	gadget_fireBase2 = 181004,
	gadget_fire2 = 181005,
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
	{ config_id = 181001, gadget_id = 70330279, pos = { x = -886.860, y = -157.900, z = 4935.152 }, rot = { x = 0.000, y = 270.834, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 181002, gadget_id = 70330278, pos = { x = -864.461, y = -147.854, z = 4955.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 181003, gadget_id = 70330257, pos = { x = -886.888, y = -155.998, z = 4935.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331400053, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 181004, gadget_id = 70330279, pos = { x = -884.385, y = -158.093, z = 4921.952 }, rot = { x = 0.000, y = 320.481, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 181005, gadget_id = 70330257, pos = { x = -884.451, y = -156.322, z = 4922.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331400054, persistent = true, area_id = 32 },
	{ config_id = 181006, gadget_id = 70211121, pos = { x = -865.248, y = -147.237, z = 4952.093 }, rot = { x = 0.000, y = 91.771, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1181007, name = "GADGET_STATE_CHANGE_181007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_181007", action = "action_EVENT_GADGET_STATE_CHANGE_181007" },
	-- 保底
	{ config_id = 1181008, name = "GROUP_LOAD_181008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_181008", action = "action_EVENT_GROUP_LOAD_181008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1181009, name = "GADGET_STATE_CHANGE_181009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_181009", action = "action_EVENT_GADGET_STATE_CHANGE_181009" },
	-- 玩法进度埋点
	{ config_id = 1181010, name = "GADGET_STATE_CHANGE_181010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_181010", action = "action_EVENT_GADGET_STATE_CHANGE_181010" }
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
		gadgets = { 181001, 181002, 181004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_181007", "GROUP_LOAD_181008", "GADGET_STATE_CHANGE_181009", "GADGET_STATE_CHANGE_181010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_181007(context, evt)
	if 181002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_181007(context, evt)
	-- 创建id为181006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 181006 }) then
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
function condition_EVENT_GROUP_LOAD_181008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314181, 181002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_181008(context, evt)
	-- 创建id为181006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 181006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_181009(context, evt)
	if 181001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_181009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_181010(context, evt)
	if 181004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_181010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"