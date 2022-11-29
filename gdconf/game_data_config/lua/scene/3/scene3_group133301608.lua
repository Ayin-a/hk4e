-- 基础信息
local base_info = {
	group_id = 133301608
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
	{ config_id = 608001, gadget_id = 70500000, pos = { x = -1709.001, y = 321.003, z = 2369.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 608002, gadget_id = 70500000, pos = { x = -1701.670, y = 320.963, z = 2363.573 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 608003, gadget_id = 70500000, pos = { x = -1704.292, y = 320.971, z = 2361.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 608004, gadget_id = 70500000, pos = { x = -1710.692, y = 320.947, z = 2363.072 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 608005, gadget_id = 70500000, pos = { x = -1702.004, y = 320.994, z = 2372.507 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1608006, name = "QUEST_FINISH_608006", event = EventType.EVENT_QUEST_FINISH, source = "7310610", condition = "", action = "action_EVENT_QUEST_FINISH_608006", trigger_count = 0 },
	{ config_id = 1608007, name = "GROUP_LOAD_608007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_608007", action = "action_EVENT_GROUP_LOAD_608007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_608006", "GROUP_LOAD_608007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 608001, 608002, 608003, 608004, 608005 },
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
function action_EVENT_QUEST_FINISH_608006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_608007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_608007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301608, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end