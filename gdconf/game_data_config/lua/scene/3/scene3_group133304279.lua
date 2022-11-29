-- 基础信息
local base_info = {
	group_id = 133304279
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
	{ config_id = 279001, gadget_id = 70950099, pos = { x = -1017.962, y = 200.000, z = 2653.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, fishing_id = 4009, fishing_areas = { 300064 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1279003, name = "QUEST_FINISH_279003", event = EventType.EVENT_QUEST_FINISH, source = "1300706", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1279004, name = "QUEST_FINISH_279004", event = EventType.EVENT_QUEST_FINISH, source = "1300707", condition = "", action = "action_EVENT_QUEST_FINISH_279004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1279002, name = "QUEST_START_279002", event = EventType.EVENT_QUEST_START, source = "1300707", condition = "", action = "action_EVENT_QUEST_START_279002", trigger_count = 0 },
		{ config_id = 1279005, name = "GROUP_LOAD_279005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_279005", trigger_count = 0 }
	}
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
		gadgets = { 279001 },
		regions = { },
		triggers = { "QUEST_FINISH_279003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_279004" },
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
function action_EVENT_QUEST_FINISH_279004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304279, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304279, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end