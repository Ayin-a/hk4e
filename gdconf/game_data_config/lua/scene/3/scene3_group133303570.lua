-- 基础信息
local base_info = {
	group_id = 133303570
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
	{ config_id = 570001, gadget_id = 71700500, pos = { x = -2280.060, y = 271.037, z = 3902.259 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 570002, gadget_id = 71700500, pos = { x = -2277.700, y = 271.037, z = 3899.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 570003, gadget_id = 71700500, pos = { x = -2280.380, y = 271.037, z = 3887.420 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1570004, name = "QUEST_FINISH_570004", event = EventType.EVENT_QUEST_FINISH, source = "302007", condition = "", action = "action_EVENT_QUEST_FINISH_570004" },
	{ config_id = 1570005, name = "QUEST_FINISH_570005", event = EventType.EVENT_QUEST_FINISH, source = "302016", condition = "", action = "action_EVENT_QUEST_FINISH_570005" },
	{ config_id = 1570006, name = "QUEST_FINISH_570006", event = EventType.EVENT_QUEST_FINISH, source = "302015", condition = "", action = "action_EVENT_QUEST_FINISH_570006" }
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
		gadgets = { 570001, 570002, 570003 },
		regions = { },
		triggers = { "QUEST_FINISH_570004", "QUEST_FINISH_570005", "QUEST_FINISH_570006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_QUEST_FINISH_570004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 570003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_570005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 570002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_570006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 570001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end