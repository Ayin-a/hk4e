-- 基础信息
local base_info = {
	group_id = 133102092
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
	{ config_id = 92001, gadget_id = 70710264, pos = { x = 1708.893, y = 246.946, z = 617.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 92002, gadget_id = 70710264, pos = { x = 1707.829, y = 246.919, z = 611.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 92003, gadget_id = 70710264, pos = { x = 1710.224, y = 246.947, z = 614.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1092004, name = "QUEST_FINISH_92004", event = EventType.EVENT_QUEST_FINISH, source = "4133123", condition = "", action = "action_EVENT_QUEST_FINISH_92004" },
	{ config_id = 1092005, name = "QUEST_FINISH_92005", event = EventType.EVENT_QUEST_FINISH, source = "4133123", condition = "", action = "action_EVENT_QUEST_FINISH_92005" },
	{ config_id = 1092006, name = "QUEST_FINISH_92006", event = EventType.EVENT_QUEST_FINISH, source = "4133123", condition = "", action = "action_EVENT_QUEST_FINISH_92006" },
	{ config_id = 1092007, name = "QUEST_FINISH_92007", event = EventType.EVENT_QUEST_FINISH, source = "4133123", condition = "", action = "action_EVENT_QUEST_FINISH_92007" },
	{ config_id = 1092008, name = "QUEST_FINISH_92008", event = EventType.EVENT_QUEST_FINISH, source = "4133123", condition = "", action = "action_EVENT_QUEST_FINISH_92008" },
	{ config_id = 1092009, name = "QUEST_FINISH_92009", event = EventType.EVENT_QUEST_FINISH, source = "4133123", condition = "", action = "action_EVENT_QUEST_FINISH_92009" }
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
	suite = 2,
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
		gadgets = { 92001, 92002, 92003 },
		regions = { },
		triggers = { "QUEST_FINISH_92004", "QUEST_FINISH_92006", "QUEST_FINISH_92007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_92005", "QUEST_FINISH_92008", "QUEST_FINISH_92009" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_92004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102092, EntityType.GADGET, 92001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_92005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102092, EntityType.GADGET, 92001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_92006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102092, EntityType.GADGET, 92002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_92007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102092, EntityType.GADGET, 92003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_92008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102092, EntityType.GADGET, 92002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_92009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102092, EntityType.GADGET, 92003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end