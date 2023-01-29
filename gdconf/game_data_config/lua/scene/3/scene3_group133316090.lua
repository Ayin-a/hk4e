-- 基础信息
local base_info = {
	group_id = 133316090
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 90001, monster_id = 21010701, pos = { x = 460.124, y = 218.300, z = 6482.558 }, rot = { x = 0.000, y = 359.128, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 90002, monster_id = 21010701, pos = { x = 461.040, y = 220.665, z = 6490.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 90003, monster_id = 21010701, pos = { x = 445.379, y = 219.848, z = 6498.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 90004, monster_id = 21030401, pos = { x = 451.981, y = 221.289, z = 6499.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 90005, monster_id = 21020201, pos = { x = 432.624, y = 214.951, z = 6466.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 90006, monster_id = 21011001, pos = { x = 445.242, y = 214.158, z = 6464.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 90007, monster_id = 21011001, pos = { x = 431.817, y = 215.524, z = 6473.851 }, rot = { x = 0.000, y = 0.208, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 90008, gadget_id = 70350023, pos = { x = 445.687, y = 216.624, z = 6482.578 }, rot = { x = 349.425, y = 359.504, z = 5.356 }, level = 32, area_id = 30 },
	{ config_id = 90009, gadget_id = 70360001, pos = { x = 445.687, y = 216.624, z = 6482.578 }, rot = { x = 349.425, y = 359.504, z = 5.356 }, level = 1, area_id = 30 },
	{ config_id = 90010, gadget_id = 70350035, pos = { x = 445.687, y = 216.624, z = 6482.578 }, rot = { x = 349.425, y = 359.504, z = 5.356 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1090011, name = "GADGET_CREATE_90011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90011", action = "action_EVENT_GADGET_CREATE_90011", trigger_count = 0 },
	{ config_id = 1090012, name = "SELECT_OPTION_90012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90012", action = "action_EVENT_SELECT_OPTION_90012", trigger_count = 0 },
	{ config_id = 1090013, name = "ANY_MONSTER_LIVE_90013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_90013", action = "action_EVENT_ANY_MONSTER_LIVE_90013" },
	{ config_id = 1090014, name = "ANY_MONSTER_DIE_90014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_90014", action = "action_EVENT_ANY_MONSTER_DIE_90014" },
	{ config_id = 1090015, name = "ANY_MONSTER_DIE_90015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_90015", action = "action_EVENT_ANY_MONSTER_DIE_90015", trigger_count = 0 },
	{ config_id = 1090016, name = "VARIABLE_CHANGE_90016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_90016", action = "action_EVENT_VARIABLE_CHANGE_90016" }
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
		gadgets = { 90008, 90009 },
		regions = { },
		triggers = { "GADGET_CREATE_90011", "SELECT_OPTION_90012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 90001, 90002, 90003, 90004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_90013", "ANY_MONSTER_DIE_90014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 90010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 90005, 90006, 90007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_90015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_90016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_90011(context, evt)
	if 90009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316090, 90009, {3}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_90012(context, evt)
	-- 判断是gadgetid 90009 option_id 3
	if 90009 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316090, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325716") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133316090 ；指定config：90009；物件身上指定option：3；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133316090, 90009, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_90013(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_90013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316090, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_90014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_90014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316090, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133316090, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_90015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_90015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133316090, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_90016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Launch"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Launch", 133316090) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90016(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133316090, 1)
	
	return 0
end