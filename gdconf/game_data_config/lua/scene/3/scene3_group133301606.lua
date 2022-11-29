-- 基础信息
local base_info = {
	group_id = 133301606
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
	{ config_id = 606001, gadget_id = 70500000, pos = { x = -1653.857, y = 219.653, z = 2921.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 606002, gadget_id = 70500000, pos = { x = -1646.526, y = 219.613, z = 2915.059 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 606003, gadget_id = 70500000, pos = { x = -1649.147, y = 219.621, z = 2913.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 606004, gadget_id = 70500000, pos = { x = -1655.548, y = 219.597, z = 2914.558 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 606005, gadget_id = 70500000, pos = { x = -1646.860, y = 219.644, z = 2923.993 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1606006, name = "QUEST_FINISH_606006", event = EventType.EVENT_QUEST_FINISH, source = "7310608", condition = "", action = "action_EVENT_QUEST_FINISH_606006", trigger_count = 0 },
	{ config_id = 1606007, name = "GROUP_LOAD_606007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_606007", action = "action_EVENT_GROUP_LOAD_606007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_606006", "GROUP_LOAD_606007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 606001, 606002, 606003, 606004, 606005 },
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
function action_EVENT_QUEST_FINISH_606006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_606007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_606007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301606, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end