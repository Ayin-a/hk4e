-- 基础信息
local base_info = {
	group_id = 133301610
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
	{ config_id = 610001, gadget_id = 70500000, pos = { x = -664.241, y = 216.996, z = 2411.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 610002, gadget_id = 70500000, pos = { x = -656.910, y = 216.956, z = 2405.816 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 610003, gadget_id = 70500000, pos = { x = -659.532, y = 216.964, z = 2403.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 610004, gadget_id = 70500000, pos = { x = -665.932, y = 216.941, z = 2405.315 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 610005, gadget_id = 70500000, pos = { x = -657.244, y = 216.988, z = 2414.750 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1610006, name = "QUEST_FINISH_610006", event = EventType.EVENT_QUEST_FINISH, source = "7310612", condition = "", action = "action_EVENT_QUEST_FINISH_610006", trigger_count = 0 },
	{ config_id = 1610007, name = "GROUP_LOAD_610007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_610007", action = "action_EVENT_GROUP_LOAD_610007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_610006", "GROUP_LOAD_610007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 610001, 610002, 610003, 610004, 610005 },
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
function action_EVENT_QUEST_FINISH_610006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_610007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_610007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301610, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end