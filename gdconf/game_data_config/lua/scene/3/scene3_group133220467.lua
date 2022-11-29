-- 基础信息
local base_info = {
	group_id = 133220467
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 467003, monster_id = 24020301, pos = { x = -2201.914, y = 188.287, z = -4328.115 }, rot = { x = 0.000, y = 328.743, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 467004, monster_id = 24020401, pos = { x = -2211.018, y = 188.219, z = -4312.211 }, rot = { x = 0.000, y = 215.242, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 467005, monster_id = 24020301, pos = { x = -2195.774, y = 184.132, z = -4346.561 }, rot = { x = 2.078, y = 339.885, z = 356.233 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 467006, monster_id = 24020401, pos = { x = -2231.546, y = 188.215, z = -4316.875 }, rot = { x = 0.000, y = 343.235, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1467001, name = "VARIABLE_CHANGE_467001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_467001", action = "action_EVENT_VARIABLE_CHANGE_467001", trigger_count = 0 },
	{ config_id = 1467002, name = "GROUP_LOAD_467002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_467002", action = "action_EVENT_GROUP_LOAD_467002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_467001", "GROUP_LOAD_467002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 467003, 467004, 467005, 467006 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_467001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_467001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_467001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220467, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_467002(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_467002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220467, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end