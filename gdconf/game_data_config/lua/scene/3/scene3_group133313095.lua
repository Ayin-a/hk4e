-- 基础信息
local base_info = {
	group_id = 133313095
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 95002,
	gadget_fireBase1 = 95001,
	gadget_fire1 = 95003,
	gadget_fireBase2 = 95004,
	gadget_fire2 = 95005,
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
	{ config_id = 95001, gadget_id = 70330279, pos = { x = -472.162, y = -24.305, z = 5260.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 95002, gadget_id = 70330278, pos = { x = -462.717, y = -9.538, z = 5215.951 }, rot = { x = 0.000, y = 314.479, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 95003, gadget_id = 70330257, pos = { x = -472.323, y = -22.619, z = 5260.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300021, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 95004, gadget_id = 70330279, pos = { x = -502.948, y = -9.529, z = 5221.160 }, rot = { x = 0.000, y = 42.683, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 95005, gadget_id = 70330257, pos = { x = -503.007, y = -7.763, z = 5221.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300022, persistent = true, area_id = 32 },
	{ config_id = 95006, gadget_id = 70211101, pos = { x = -470.825, y = -9.578, z = 5243.629 }, rot = { x = 0.000, y = 223.888, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1095007, name = "GADGET_STATE_CHANGE_95007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95007", action = "action_EVENT_GADGET_STATE_CHANGE_95007" },
	-- 保底
	{ config_id = 1095008, name = "GROUP_LOAD_95008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_95008", action = "action_EVENT_GROUP_LOAD_95008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1095009, name = "GADGET_STATE_CHANGE_95009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95009", action = "action_EVENT_GADGET_STATE_CHANGE_95009" },
	-- 玩法进度埋点
	{ config_id = 1095010, name = "GADGET_STATE_CHANGE_95010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95010", action = "action_EVENT_GADGET_STATE_CHANGE_95010" }
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
		gadgets = { 95001, 95002, 95004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_95007", "GROUP_LOAD_95008", "GADGET_STATE_CHANGE_95009", "GADGET_STATE_CHANGE_95010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95007(context, evt)
	if 95002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95007(context, evt)
	-- 创建id为95006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95006 }) then
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
function condition_EVENT_GROUP_LOAD_95008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313095, 95002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_95008(context, evt)
	-- 创建id为95006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95009(context, evt)
	if 95001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_95010(context, evt)
	if 95004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"