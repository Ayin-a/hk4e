-- 基础信息
local base_info = {
	group_id = 199004028
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
	{ config_id = 28001, gadget_id = 70210102, pos = { x = -353.491, y = 122.749, z = -709.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050197, drop_count = 1, isOneoff = true, autopick = true, area_id = 400 },
	{ config_id = 28002, gadget_id = 70360001, pos = { x = -351.306, y = 123.610, z = -707.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028003, name = "LEVEL_TAG_CHANGE_28003", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_28003", trigger_count = 0 },
	{ config_id = 1028004, name = "GROUP_LOAD_28004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_28004", trigger_count = 0 }
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
		gadgets = { 28002 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_28003", "GROUP_LOAD_28004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28001 },
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
function action_EVENT_LEVEL_TAG_CHANGE_28003(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004028, 2)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_28004(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	return 0
end