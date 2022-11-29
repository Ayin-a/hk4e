-- 基础信息
local base_info = {
	group_id = 133315138
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
	{ config_id = 138002, gadget_id = 70220103, pos = { x = 588.519, y = 139.012, z = 2533.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 138003, gadget_id = 70220103, pos = { x = 553.026, y = 141.134, z = 2427.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 20 },
	{ config_id = 138004, gadget_id = 70220103, pos = { x = 569.578, y = 147.853, z = 2438.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 20 },
	{ config_id = 138005, gadget_id = 70220103, pos = { x = 589.851, y = 139.254, z = 2559.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 138007, gadget_id = 70220103, pos = { x = 544.644, y = 127.917, z = 2574.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 138008, gadget_id = 70220103, pos = { x = 515.028, y = 136.638, z = 2551.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 138009, gadget_id = 70220103, pos = { x = 493.661, y = 137.294, z = 2530.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 138010, gadget_id = 70220103, pos = { x = 481.377, y = 135.744, z = 2447.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 138011, gadget_id = 70220103, pos = { x = 485.231, y = 133.008, z = 2432.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138001, name = "QUEST_FINISH_138001", event = EventType.EVENT_QUEST_FINISH, source = "7306626", condition = "", action = "action_EVENT_QUEST_FINISH_138001", trigger_count = 0 },
	{ config_id = 1138006, name = "QUEST_FINISH_138006", event = EventType.EVENT_QUEST_FINISH, source = "7306627", condition = "", action = "action_EVENT_QUEST_FINISH_138006", trigger_count = 0 },
	{ config_id = 1138012, name = "QUEST_FINISH_138012", event = EventType.EVENT_QUEST_FINISH, source = "7306628", condition = "", action = "action_EVENT_QUEST_FINISH_138012", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_138001", "QUEST_FINISH_138006", "QUEST_FINISH_138012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_138001(context, evt)
	-- 创建id为138002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_138006(context, evt)
	-- 创建id为138007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_138012(context, evt)
	-- 创建id为138010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"