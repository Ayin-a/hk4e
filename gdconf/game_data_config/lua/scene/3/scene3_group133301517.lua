-- 基础信息
local base_info = {
	group_id = 133301517
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
	{ config_id = 517001, gadget_id = 70330197, pos = { x = -1138.694, y = 177.880, z = 2945.666 }, rot = { x = 354.746, y = 294.028, z = 358.238 }, level = 33, area_id = 21 },
	{ config_id = 517002, gadget_id = 70220103, pos = { x = -1154.952, y = 189.187, z = 2962.619 }, rot = { x = 0.000, y = 346.289, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 517003, gadget_id = 70330197, pos = { x = -1292.097, y = 175.255, z = 3058.125 }, rot = { x = 357.412, y = 336.221, z = 357.986 }, level = 30, area_id = 21 },
	{ config_id = 517006, gadget_id = 70220103, pos = { x = -1137.990, y = 184.183, z = 2945.591 }, rot = { x = 0.000, y = 346.289, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 517007, gadget_id = 70220103, pos = { x = -1208.938, y = 188.962, z = 2969.592 }, rot = { x = 0.000, y = 346.289, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 517008, gadget_id = 70220103, pos = { x = -1273.715, y = 187.934, z = 3026.202 }, rot = { x = 0.000, y = 346.289, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 517010, gadget_id = 70220103, pos = { x = -1088.416, y = 197.096, z = 2939.855 }, rot = { x = 0.000, y = 346.289, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 517012, gadget_id = 70220103, pos = { x = -1293.372, y = 187.236, z = 3058.727 }, rot = { x = 0.000, y = 346.289, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 517013, gadget_id = 70220103, pos = { x = -1310.365, y = 189.787, z = 3093.769 }, rot = { x = 0.000, y = 346.289, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7300206
	{ config_id = 1517009, name = "QUEST_START_517009", event = EventType.EVENT_QUEST_START, source = "7300206", condition = "", action = "action_EVENT_QUEST_START_517009", trigger_count = 0 },
	-- 7300205
	{ config_id = 1517011, name = "QUEST_START_517011", event = EventType.EVENT_QUEST_START, source = "7300205", condition = "", action = "action_EVENT_QUEST_START_517011", trigger_count = 0 },
	-- 7300203
	{ config_id = 1517014, name = "QUEST_START_517014", event = EventType.EVENT_QUEST_START, source = "7300203", condition = "", action = "action_EVENT_QUEST_START_517014", trigger_count = 0 }
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
		gadgets = { 517001, 517003 },
		regions = { },
		triggers = { "QUEST_START_517009", "QUEST_START_517011", "QUEST_START_517014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_517009(context, evt)
	-- 创建id为517012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 517012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为517013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 517013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_517011(context, evt)
	-- 创建id为517003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 517003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为517008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 517008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_517014(context, evt)
	-- 创建id为517010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 517010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为517002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 517002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为517006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 517006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为517007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 517007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end