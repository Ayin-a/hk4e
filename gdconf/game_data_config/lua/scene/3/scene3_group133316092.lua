-- 基础信息
local base_info = {
	group_id = 133316092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 21010701, pos = { x = 545.637, y = 241.054, z = 6486.355 }, rot = { x = 0.000, y = 36.190, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 92002, monster_id = 21010701, pos = { x = 544.839, y = 241.654, z = 6497.976 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 92003, monster_id = 21010701, pos = { x = 546.922, y = 241.502, z = 6489.179 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 92004, monster_id = 21030401, pos = { x = 547.356, y = 241.847, z = 6493.509 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 92005, monster_id = 21020201, pos = { x = 522.093, y = 235.197, z = 6493.026 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 92006, monster_id = 21011001, pos = { x = 525.692, y = 235.932, z = 6489.092 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 92007, monster_id = 21011001, pos = { x = 525.440, y = 237.089, z = 6500.092 }, rot = { x = 0.000, y = 37.270, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92008, gadget_id = 70350023, pos = { x = 538.782, y = 239.406, z = 6489.921 }, rot = { x = 349.044, y = 35.852, z = 10.450 }, level = 32, area_id = 30 },
	{ config_id = 92009, gadget_id = 70360001, pos = { x = 535.456, y = 239.228, z = 6498.321 }, rot = { x = 349.425, y = 36.565, z = 5.356 }, level = 1, area_id = 30 },
	{ config_id = 92010, gadget_id = 70350035, pos = { x = 535.456, y = 239.228, z = 6498.321 }, rot = { x = 349.425, y = 36.565, z = 5.356 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1092011, name = "GADGET_CREATE_92011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_92011", action = "action_EVENT_GADGET_CREATE_92011", trigger_count = 0 },
	{ config_id = 1092012, name = "SELECT_OPTION_92012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_92012", action = "action_EVENT_SELECT_OPTION_92012", trigger_count = 0 },
	{ config_id = 1092013, name = "ANY_MONSTER_LIVE_92013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_92013", action = "action_EVENT_ANY_MONSTER_LIVE_92013" },
	{ config_id = 1092014, name = "ANY_MONSTER_DIE_92014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92014", action = "action_EVENT_ANY_MONSTER_DIE_92014" },
	{ config_id = 1092015, name = "ANY_MONSTER_DIE_92015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92015", action = "action_EVENT_ANY_MONSTER_DIE_92015", trigger_count = 0 },
	{ config_id = 1092016, name = "VARIABLE_CHANGE_92016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_92016", action = "action_EVENT_VARIABLE_CHANGE_92016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Launch", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
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
		gadgets = { 92008, 92009 },
		regions = { },
		triggers = { "GADGET_CREATE_92011", "SELECT_OPTION_92012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 92001, 92002, 92003, 92004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_92013", "ANY_MONSTER_DIE_92014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 92010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 92005, 92006, 92007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_92015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_92016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_92011(context, evt)
	if 92009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_92011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316092, 92009, {3}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_92012(context, evt)
	-- 判断是gadgetid 92009 option_id 3
	if 92009 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_92012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316092, 2)
	
	-- 删除指定group： 133316092 ；指定config：92009；物件身上指定option：3；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133316092, 92009, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_92013(context, evt)
	if 92001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_92013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316092, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_92014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316092, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133316092, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_92015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325713") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133316092, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_92016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Launch"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Launch", 133316092) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_92016(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316092, 1)
	
	return 0
end