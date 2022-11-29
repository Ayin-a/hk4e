-- 基础信息
local base_info = {
	group_id = 133008597
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
	{ config_id = 597001, npc_id = 20214, pos = { x = 736.100, y = 199.977, z = -1061.001 }, rot = { x = 0.000, y = 167.299, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 597002, gadget_id = 70360130, pos = { x = 736.197, y = 199.887, z = -1061.047 }, rot = { x = -0.005, y = 167.473, z = 271.559 }, level = 30, isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1597003, name = "QUEST_FINISH_597003", event = EventType.EVENT_QUEST_FINISH, source = "7012701", condition = "", action = "action_EVENT_QUEST_FINISH_597003", trigger_count = 0 }
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
		gadgets = { 597002 },
		regions = { },
		triggers = { "QUEST_FINISH_597003" },
		npcs = { 597001 },
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
function action_EVENT_QUEST_FINISH_597003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008597, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end