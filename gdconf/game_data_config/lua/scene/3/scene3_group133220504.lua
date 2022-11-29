-- 基础信息
local base_info = {
	group_id = 133220504
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
	{ config_id = 504001, gadget_id = 70900394, pos = { x = -2931.409, y = 207.811, z = -4164.361 }, rot = { x = 358.971, y = 311.548, z = 337.434 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 504002, gadget_id = 70900394, pos = { x = -2930.997, y = 207.908, z = -4165.992 }, rot = { x = 352.467, y = 328.339, z = 349.394 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 504003, gadget_id = 70900394, pos = { x = -2931.878, y = 207.881, z = -4164.775 }, rot = { x = 1.702, y = 46.165, z = 11.801 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 504004, gadget_id = 70900394, pos = { x = -2933.085, y = 207.849, z = -4165.881 }, rot = { x = 15.286, y = 148.179, z = 332.509 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 504005, gadget_id = 70900394, pos = { x = -2933.406, y = 208.164, z = -4166.549 }, rot = { x = 17.408, y = 143.891, z = 356.490 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7211003
	{ config_id = 1504006, name = "QUEST_FINISH_504006", event = EventType.EVENT_QUEST_FINISH, source = "7211003", condition = "", action = "action_EVENT_QUEST_FINISH_504006", trigger_count = 0 },
	-- 7211004
	{ config_id = 1504007, name = "QUEST_FINISH_504007", event = EventType.EVENT_QUEST_FINISH, source = "7211004", condition = "", action = "action_EVENT_QUEST_FINISH_504007", trigger_count = 0 },
	-- 7211005
	{ config_id = 1504008, name = "QUEST_FINISH_504008", event = EventType.EVENT_QUEST_FINISH, source = "7211005", condition = "", action = "action_EVENT_QUEST_FINISH_504008", trigger_count = 0 },
	-- 7211006
	{ config_id = 1504009, name = "QUEST_FINISH_504009", event = EventType.EVENT_QUEST_FINISH, source = "7211006", condition = "", action = "action_EVENT_QUEST_FINISH_504009", trigger_count = 0 }
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
	end_suite = 2,
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
		triggers = { "QUEST_FINISH_504006", "QUEST_FINISH_504007", "QUEST_FINISH_504008", "QUEST_FINISH_504009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 504001, 504002, 504003, 504004, 504005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_504006(context, evt)
	-- 创建id为504001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 504001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为504002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 504002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_504007(context, evt)
	-- 创建id为504003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 504003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_504008(context, evt)
	-- 创建id为504004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 504004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_504009(context, evt)
	-- 创建id为504005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 504005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end