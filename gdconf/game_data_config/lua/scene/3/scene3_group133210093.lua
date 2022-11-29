-- 基础信息
local base_info = {
	group_id = 133210093
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93001, monster_id = 21030601, pos = { x = -3853.678, y = 202.939, z = -452.029 }, rot = { x = 23.453, y = 326.413, z = 347.054 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 93002, monster_id = 21011201, pos = { x = -3852.367, y = 201.501, z = -448.294 }, rot = { x = 4.395, y = 291.536, z = 342.178 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 17 },
	{ config_id = 93003, monster_id = 21011201, pos = { x = -3857.390, y = 202.447, z = -450.607 }, rot = { x = 14.239, y = 32.948, z = 10.063 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 17 },
	{ config_id = 93005, monster_id = 21011601, pos = { x = -3857.580, y = 201.012, z = -444.984 }, rot = { x = 353.915, y = 129.991, z = 9.911 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 17 },
	{ config_id = 93006, monster_id = 21020701, pos = { x = -3867.880, y = 202.207, z = -437.787 }, rot = { x = 0.000, y = 121.487, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 93007, monster_id = 21010601, pos = { x = -3865.792, y = 200.970, z = -443.988 }, rot = { x = 0.000, y = 91.307, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 93009, monster_id = 21010601, pos = { x = -3861.179, y = 200.336, z = -436.582 }, rot = { x = 0.496, y = 137.479, z = 3.186 }, level = 30, drop_id = 1000100, area_id = 17 }
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
	{ config_id = 1093004, name = "ANY_MONSTER_DIE_93004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_93004", action = "action_EVENT_ANY_MONSTER_DIE_93004" },
	{ config_id = 1093008, name = "QUEST_START_93008", event = EventType.EVENT_QUEST_START, source = "7215105", condition = "", action = "action_EVENT_QUEST_START_93008", trigger_count = 0 },
	{ config_id = 1093010, name = "VARIABLE_CHANGE_93010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_93010", action = "action_EVENT_VARIABLE_CHANGE_93010" },
	{ config_id = 1093011, name = "ANY_MONSTER_DIE_93011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_93011", action = "action_EVENT_ANY_MONSTER_DIE_93011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "queststart", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 93001, 93002, 93003, 93005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_93004", "QUEST_START_93008", "VARIABLE_CHANGE_93010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 93006, 93007, 93009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_93011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_93004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"queststart"为1
	if ScriptLib.GetGroupVariableValue(context, "queststart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_93004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210093, 3)
	
	-- 将本组内变量名为 "queststart" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "queststart", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_93008(context, evt)
	-- 将本组内变量名为 "queststart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "queststart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_93010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"queststart"为1
	if ScriptLib.GetGroupVariableValue(context, "queststart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_93010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210093, 3)
	
	-- 将本组内变量名为 "queststart" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "queststart", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_93011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_93011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215105") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end