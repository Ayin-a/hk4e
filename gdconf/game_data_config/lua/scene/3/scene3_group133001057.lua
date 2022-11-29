-- 基础信息
local base_info = {
	group_id = 133001057
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
	{ config_id = 57001, gadget_id = 70380034, pos = { x = 1637.984, y = 254.107, z = -1388.969 }, rot = { x = 0.000, y = 253.894, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 57005, gadget_id = 70380034, pos = { x = 1640.192, y = 254.107, z = -1388.332 }, rot = { x = 0.000, y = 73.894, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 护送任务开始时，refreshtosuit2
	{ config_id = 1057002, name = "QUEST_START_57002", event = EventType.EVENT_QUEST_START, source = "7050105", condition = "", action = "action_EVENT_QUEST_START_57002", trigger_count = 0 },
	-- 回报布伦开始时，refreshtosuit3
	{ config_id = 1057003, name = "QUEST_START_57003", event = EventType.EVENT_QUEST_START, source = "7050107", condition = "", action = "action_EVENT_QUEST_START_57003", trigger_count = 0 },
	-- 对话完成后,卸载三个suit
	{ config_id = 1057004, name = "QUEST_START_57004", event = EventType.EVENT_QUEST_START, source = "7050108", condition = "", action = "action_EVENT_QUEST_START_57004", trigger_count = 0 }
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
		gadgets = { 57001 },
		regions = { },
		triggers = { "QUEST_START_57002", "QUEST_START_57003", "QUEST_START_57004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_57002", "QUEST_START_57003", "QUEST_START_57004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 57005 },
		regions = { },
		triggers = { "QUEST_START_57002", "QUEST_START_57003", "QUEST_START_57004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_57002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001057, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_57003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001057, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_57004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001057, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end