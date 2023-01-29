-- 基础信息
local base_info = {
	group_id = 133316089
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 89001, monster_id = 21010701, pos = { x = 481.929, y = 219.350, z = 6401.367 }, rot = { x = 0.000, y = 36.190, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 89002, monster_id = 21010701, pos = { x = 485.058, y = 218.808, z = 6405.192 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 89003, monster_id = 21010701, pos = { x = 479.931, y = 216.958, z = 6413.856 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 89004, monster_id = 21030401, pos = { x = 483.707, y = 217.591, z = 6411.811 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 89005, monster_id = 21020201, pos = { x = 463.874, y = 217.462, z = 6406.304 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 89006, monster_id = 21011001, pos = { x = 465.945, y = 217.981, z = 6403.757 }, rot = { x = 0.000, y = 37.061, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 89007, monster_id = 21011001, pos = { x = 465.303, y = 216.212, z = 6413.476 }, rot = { x = 0.000, y = 37.270, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 89008, gadget_id = 70350023, pos = { x = 475.838, y = 217.024, z = 6410.106 }, rot = { x = 3.976, y = 38.073, z = 6.488 }, level = 32, area_id = 30 },
	{ config_id = 89009, gadget_id = 70360001, pos = { x = 475.838, y = 217.024, z = 6410.106 }, rot = { x = 349.425, y = 36.565, z = 5.356 }, level = 1, area_id = 30 },
	{ config_id = 89010, gadget_id = 70350035, pos = { x = 475.838, y = 217.024, z = 6410.106 }, rot = { x = 349.425, y = 36.565, z = 5.356 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089011, name = "GADGET_CREATE_89011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_89011", action = "action_EVENT_GADGET_CREATE_89011", trigger_count = 0 },
	{ config_id = 1089012, name = "SELECT_OPTION_89012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_89012", action = "action_EVENT_SELECT_OPTION_89012", trigger_count = 0 },
	{ config_id = 1089013, name = "ANY_MONSTER_LIVE_89013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_89013", action = "action_EVENT_ANY_MONSTER_LIVE_89013", trigger_count = 0 },
	{ config_id = 1089014, name = "ANY_MONSTER_DIE_89014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_89014", action = "action_EVENT_ANY_MONSTER_DIE_89014", trigger_count = 0 },
	{ config_id = 1089015, name = "ANY_MONSTER_DIE_89015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_89015", action = "action_EVENT_ANY_MONSTER_DIE_89015", trigger_count = 0 },
	{ config_id = 1089016, name = "VARIABLE_CHANGE_89016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_89016", action = "action_EVENT_VARIABLE_CHANGE_89016", trigger_count = 0 }
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
		gadgets = { 89008, 89009 },
		regions = { },
		triggers = { "GADGET_CREATE_89011", "SELECT_OPTION_89012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 89001, 89002, 89003, 89004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_89013", "ANY_MONSTER_DIE_89014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 89010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 89005, 89006, 89007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_89015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_89016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_89011(context, evt)
	if 89009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_89011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316089, 89009, {3}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_89012(context, evt)
	-- 判断是gadgetid 89009 option_id 3
	if 89009 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_89012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316089, 2)
	
	-- 删除指定group： 133316089 ；指定config：89009；物件身上指定option：3；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133316089, 89009, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_89013(context, evt)
	if 89001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_89013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316089, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_89014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_89014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316089, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133316089, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_89015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_89015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325712") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133316089, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_89016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Launch"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Launch", 133316089) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89016(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316089, 1)
	
	return 0
end