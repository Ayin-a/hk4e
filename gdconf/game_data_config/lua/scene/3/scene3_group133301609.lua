-- 基础信息
local base_info = {
	group_id = 133301609
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
	{ config_id = 609001, gadget_id = 70500000, pos = { x = -986.244, y = 225.809, z = 2501.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 609002, gadget_id = 70500000, pos = { x = -978.912, y = 225.769, z = 2495.462 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 609003, gadget_id = 70500000, pos = { x = -981.534, y = 225.777, z = 2493.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 609004, gadget_id = 70500000, pos = { x = -987.934, y = 225.754, z = 2494.961 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 609005, gadget_id = 70500000, pos = { x = -979.246, y = 225.801, z = 2504.396 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1609006, name = "QUEST_FINISH_609006", event = EventType.EVENT_QUEST_FINISH, source = "7310611", condition = "", action = "action_EVENT_QUEST_FINISH_609006", trigger_count = 0 },
	{ config_id = 1609007, name = "GROUP_LOAD_609007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_609007", action = "action_EVENT_GROUP_LOAD_609007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_609006", "GROUP_LOAD_609007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 609001, 609002, 609003, 609004, 609005 },
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
function action_EVENT_QUEST_FINISH_609006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_609007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_609007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301609, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end