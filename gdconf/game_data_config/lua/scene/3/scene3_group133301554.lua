-- 基础信息
local base_info = {
	group_id = 133301554
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
	{ config_id = 554001, gadget_id = 70500000, pos = { x = -1157.652, y = 265.579, z = 3335.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 554002, gadget_id = 70500000, pos = { x = -1156.939, y = 265.518, z = 3325.166 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 554003, gadget_id = 70500000, pos = { x = -1154.727, y = 265.506, z = 3328.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 554004, gadget_id = 70500000, pos = { x = -1163.072, y = 265.548, z = 3333.478 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 554005, gadget_id = 70500000, pos = { x = -1149.583, y = 265.585, z = 3337.587 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1554006, name = "QUEST_FINISH_554006", event = EventType.EVENT_QUEST_FINISH, source = "7310605", condition = "", action = "action_EVENT_QUEST_FINISH_554006", trigger_count = 0 },
	{ config_id = 1554007, name = "GROUP_LOAD_554007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_554007", action = "action_EVENT_GROUP_LOAD_554007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_554006", "GROUP_LOAD_554007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 554001, 554002, 554003, 554004, 554005 },
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
function action_EVENT_QUEST_FINISH_554006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_554007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_554007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301554, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end