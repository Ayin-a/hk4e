-- 基础信息
local base_info = {
	group_id = 133008598
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
	{ config_id = 598002, npc_id = 20215, pos = { x = 613.660, y = 199.880, z = -1093.904 }, rot = { x = 0.000, y = 0.000, z = 352.131 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 598001, gadget_id = 70360130, pos = { x = 613.571, y = 199.801, z = -1093.979 }, rot = { x = 0.019, y = 0.173, z = 263.690 }, level = 30, isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1598003, name = "QUEST_FINISH_598003", event = EventType.EVENT_QUEST_FINISH, source = "7012702", condition = "", action = "action_EVENT_QUEST_FINISH_598003", trigger_count = 0 }
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
		gadgets = { 598001 },
		regions = { },
		triggers = { "QUEST_FINISH_598003" },
		npcs = { 598002 },
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
function action_EVENT_QUEST_FINISH_598003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008598, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end