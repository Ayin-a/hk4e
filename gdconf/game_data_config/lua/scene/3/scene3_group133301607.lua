-- 基础信息
local base_info = {
	group_id = 133301607
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
	{ config_id = 607001, gadget_id = 70500000, pos = { x = -1473.684, y = 354.036, z = 2102.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 607002, gadget_id = 70500000, pos = { x = -1466.352, y = 353.996, z = 2096.556 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 607003, gadget_id = 70500000, pos = { x = -1468.974, y = 354.004, z = 2094.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 607004, gadget_id = 70500000, pos = { x = -1475.375, y = 353.981, z = 2096.055 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 607005, gadget_id = 70500000, pos = { x = -1466.687, y = 354.027, z = 2105.490 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1607006, name = "QUEST_FINISH_607006", event = EventType.EVENT_QUEST_FINISH, source = "7310609", condition = "", action = "action_EVENT_QUEST_FINISH_607006", trigger_count = 0 },
	{ config_id = 1607007, name = "GROUP_LOAD_607007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_607007", action = "action_EVENT_GROUP_LOAD_607007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_607006", "GROUP_LOAD_607007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 607001, 607002, 607003, 607004, 607005 },
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
function action_EVENT_QUEST_FINISH_607006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_607007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_607007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301607, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end