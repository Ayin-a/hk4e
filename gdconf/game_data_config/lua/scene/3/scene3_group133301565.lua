-- 基础信息
local base_info = {
	group_id = 133301565
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
	{ config_id = 565001, gadget_id = 70500000, pos = { x = -1377.908, y = 326.097, z = 3661.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 565002, gadget_id = 70500000, pos = { x = -1370.576, y = 326.057, z = 3655.582 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 565003, gadget_id = 70500000, pos = { x = -1373.198, y = 326.065, z = 3653.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 565004, gadget_id = 70500000, pos = { x = -1379.598, y = 326.041, z = 3655.081 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 },
	{ config_id = 565005, gadget_id = 70500000, pos = { x = -1370.911, y = 326.088, z = 3664.516 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1565006, name = "QUEST_FINISH_565006", event = EventType.EVENT_QUEST_FINISH, source = "7310606", condition = "", action = "action_EVENT_QUEST_FINISH_565006", trigger_count = 0 },
	{ config_id = 1565007, name = "GROUP_LOAD_565007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_565007", action = "action_EVENT_GROUP_LOAD_565007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_565006", "GROUP_LOAD_565007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 565001, 565002, 565003, 565004, 565005 },
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
function action_EVENT_QUEST_FINISH_565006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_565007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_565007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301565, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end