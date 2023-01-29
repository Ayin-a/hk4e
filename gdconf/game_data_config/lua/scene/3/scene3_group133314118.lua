-- 基础信息
local base_info = {
	group_id = 133314118
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 118002,
	gadget_fireBase1 = 118001,
	gadget_fire1 = 118003,
	gadget_fireBase2 = 118004,
	gadget_fire2 = 118005,
	gadget_fireBase3 = 118011,
	gadget_fire3 = 118012,
	gadget_fireBase4 = 118013,
	gadget_fire4 = 118014
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
	{ config_id = 118001, gadget_id = 70330279, pos = { x = -795.646, y = -82.135, z = 5013.045 }, rot = { x = 0.000, y = 275.203, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 118002, gadget_id = 70330278, pos = { x = -773.124, y = -63.097, z = 4883.460 }, rot = { x = 0.000, y = 70.984, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 118003, gadget_id = 70330257, pos = { x = -795.604, y = -80.363, z = 5012.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331400034, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 118004, gadget_id = 70330279, pos = { x = -768.413, y = -73.069, z = 4985.684 }, rot = { x = 0.000, y = 335.940, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 118005, gadget_id = 70330257, pos = { x = -768.514, y = -71.289, z = 4985.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331400035, persistent = true, area_id = 32 },
	{ config_id = 118006, gadget_id = 70211101, pos = { x = -769.001, y = -60.733, z = 4882.189 }, rot = { x = 0.000, y = 72.105, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 3号基座
	{ config_id = 118011, gadget_id = 70330279, pos = { x = -792.079, y = -58.795, z = 4908.142 }, rot = { x = 0.000, y = 250.482, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 118012, gadget_id = 70330257, pos = { x = -792.136, y = -57.277, z = 4908.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331400036, persistent = true, area_id = 32 },
	-- 4号基座
	{ config_id = 118013, gadget_id = 70330279, pos = { x = -803.408, y = -58.632, z = 4876.297 }, rot = { x = 0.000, y = 206.300, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 4号火种
	{ config_id = 118014, gadget_id = 70330257, pos = { x = -803.370, y = -56.987, z = 4876.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331400038, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1118007, name = "GADGET_STATE_CHANGE_118007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118007", action = "action_EVENT_GADGET_STATE_CHANGE_118007" },
	-- 保底
	{ config_id = 1118008, name = "GROUP_LOAD_118008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_118008", action = "action_EVENT_GROUP_LOAD_118008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1118009, name = "GADGET_STATE_CHANGE_118009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118009", action = "action_EVENT_GADGET_STATE_CHANGE_118009" },
	-- 玩法进度埋点
	{ config_id = 1118010, name = "GADGET_STATE_CHANGE_118010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118010", action = "action_EVENT_GADGET_STATE_CHANGE_118010" }
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
		gadgets = { 118001, 118002, 118004, 118011, 118013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_118007", "GROUP_LOAD_118008", "GADGET_STATE_CHANGE_118009", "GADGET_STATE_CHANGE_118010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118007(context, evt)
	if 118002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118007(context, evt)
	-- 创建id为118006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118006 }) then
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
function condition_EVENT_GROUP_LOAD_118008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314118, 118002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_118008(context, evt)
	-- 创建id为118006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 118006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118009(context, evt)
	if 118001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_118010(context, evt)
	if 118004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"