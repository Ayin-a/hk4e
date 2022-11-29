-- 基础信息
local base_info = {
	group_id = 133212599
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
	{ config_id = 599001, gadget_id = 70300110, pos = { x = -3854.131, y = 201.668, z = -2052.728 }, rot = { x = 0.000, y = 297.134, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 599002, gadget_id = 70710409, pos = { x = -3848.176, y = 199.941, z = -2036.990 }, rot = { x = 0.000, y = 204.453, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 599003, gadget_id = 70710409, pos = { x = -3843.104, y = 199.941, z = -2036.703 }, rot = { x = 0.000, y = 177.458, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1599004, name = "QUEST_FINISH_599004", event = EventType.EVENT_QUEST_FINISH, source = "7223207", condition = "", action = "action_EVENT_QUEST_FINISH_599004" }
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
		gadgets = { 599001, 599002, 599003 },
		regions = { },
		triggers = { "QUEST_FINISH_599004" },
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
function action_EVENT_QUEST_FINISH_599004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212599, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end