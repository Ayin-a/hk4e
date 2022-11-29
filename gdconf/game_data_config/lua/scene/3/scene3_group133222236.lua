-- 基础信息
local base_info = {
	group_id = 133222236
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
}

-- 区域
regions = {
	{ config_id = 236001, shape = RegionShape.CYLINDER, radius = 325, pos = { x = -4693.000, y = 200.000, z = -4258.000 }, height = 2000.000, area_id = 14, ability_group_list = { "AbilityGroup_BigWorld_SeiraiThunder_01" } }
}

-- 触发器
triggers = {
	{ config_id = 1236002, name = "GROUP_LOAD_236002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_236002", action = "action_EVENT_GROUP_LOAD_236002", trigger_count = 0 }
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
		gadgets = { },
		regions = { 236001 },
		triggers = { "GROUP_LOAD_236002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_236002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_236002(context, evt)
	if ScriptLib.GetHostQuestState(context,7215805)==3 then
		return true
	else
		return false
	end
end

-- 触发操作
function action_EVENT_GROUP_LOAD_236002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222236, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end