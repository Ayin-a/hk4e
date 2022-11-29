-- 基础信息
local base_info = {
	group_id = 133210527
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
	{ config_id = 527004, gadget_id = 70590051, pos = { x = -3909.527, y = 116.571, z = -838.387 }, rot = { x = 0.000, y = 113.125, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1527002, name = "QUEST_FINISH_527002", event = EventType.EVENT_QUEST_FINISH, source = "7223311", condition = "", action = "action_EVENT_QUEST_FINISH_527002", trigger_count = 0 },
	{ config_id = 1527005, name = "QUEST_FINISH_527005", event = EventType.EVENT_QUEST_FINISH, source = "7223312", condition = "", action = "action_EVENT_QUEST_FINISH_527005", trigger_count = 0 },
	{ config_id = 1527006, name = "QUEST_START_527006", event = EventType.EVENT_QUEST_START, source = "7223311", condition = "", action = "action_EVENT_QUEST_START_527006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Questfinish", value = 0, no_refresh = true }
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
		triggers = { "QUEST_FINISH_527002", "QUEST_FINISH_527005", "QUEST_START_527006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 527004 },
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
function action_EVENT_QUEST_FINISH_527002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210527, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_527005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210527, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_527006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210527, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end