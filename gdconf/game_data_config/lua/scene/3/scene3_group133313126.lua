-- 基础信息
local base_info = {
	group_id = 133313126
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 126002,
	gadget_fireBase1 = 126001,
	gadget_fire1 = 126003,
	gadget_fireBase2 = 126004,
	gadget_fire2 = 126005,
	gadget_fireBase3 = 126011,
	gadget_fire3 = 126012,
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
	{ config_id = 126001, gadget_id = 70330279, pos = { x = -286.719, y = -58.788, z = 5441.712 }, rot = { x = 0.000, y = 256.766, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 126002, gadget_id = 70330278, pos = { x = -354.725, y = -70.829, z = 5468.309 }, rot = { x = 0.000, y = 75.547, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 126003, gadget_id = 70330257, pos = { x = -286.768, y = -57.000, z = 5441.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300032, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 126004, gadget_id = 70330279, pos = { x = -338.241, y = -58.562, z = 5455.258 }, rot = { x = 0.000, y = 309.740, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 126005, gadget_id = 70330257, pos = { x = -338.217, y = -56.856, z = 5455.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300033, persistent = true, area_id = 32 },
	{ config_id = 126006, gadget_id = 70211121, pos = { x = -348.416, y = -70.808, z = 5470.188 }, rot = { x = 0.000, y = 75.878, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 3号基座
	{ config_id = 126011, gadget_id = 70330279, pos = { x = -329.418, y = -70.813, z = 5431.338 }, rot = { x = 0.000, y = 309.740, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 126012, gadget_id = 70330257, pos = { x = -329.376, y = -69.188, z = 5431.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300034, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1126007, name = "GADGET_STATE_CHANGE_126007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126007", action = "action_EVENT_GADGET_STATE_CHANGE_126007" },
	-- 保底
	{ config_id = 1126008, name = "GROUP_LOAD_126008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_126008", action = "action_EVENT_GROUP_LOAD_126008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1126009, name = "GADGET_STATE_CHANGE_126009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126009", action = "action_EVENT_GADGET_STATE_CHANGE_126009" },
	-- 玩法进度埋点
	{ config_id = 1126010, name = "GADGET_STATE_CHANGE_126010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126010", action = "action_EVENT_GADGET_STATE_CHANGE_126010" }
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
		gadgets = { 126001, 126002, 126004, 126011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_126007", "GROUP_LOAD_126008", "GADGET_STATE_CHANGE_126009", "GADGET_STATE_CHANGE_126010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_126007(context, evt)
	if 126002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126007(context, evt)
	-- 创建id为126006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126006 }) then
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
function condition_EVENT_GROUP_LOAD_126008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313126, 126002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_126008(context, evt)
	-- 创建id为126006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_126009(context, evt)
	if 126001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_126010(context, evt)
	if 126004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"