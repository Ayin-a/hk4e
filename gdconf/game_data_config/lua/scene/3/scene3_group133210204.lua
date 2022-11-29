-- 基础信息
local base_info = {
	group_id = 133210204
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 23010601, pos = { x = -4086.534, y = 202.698, z = -680.921 }, rot = { x = 0.000, y = 270.412, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1107 }, pose_id = 9001, area_id = 17 },
	{ config_id = 204002, monster_id = 23010501, pos = { x = -4071.340, y = 200.749, z = -683.739 }, rot = { x = 0.000, y = 118.341, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1107 }, pose_id = 9001, area_id = 17 },
	{ config_id = 204019, monster_id = 23010501, pos = { x = -4077.989, y = 201.069, z = -679.406 }, rot = { x = 0.000, y = 27.217, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1107 }, area_id = 17 },
	{ config_id = 204020, monster_id = 23010401, pos = { x = -4071.436, y = 201.379, z = -679.907 }, rot = { x = 0.000, y = 357.210, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1107 }, area_id = 17 },
	{ config_id = 204021, monster_id = 23020101, pos = { x = -4067.776, y = 200.118, z = -649.405 }, rot = { x = 0.098, y = 310.223, z = 359.587 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1107 }, isElite = true, title_id = 10038, special_name_id = 10059, area_id = 17 }
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
	{ config_id = 1204003, name = "ANY_MONSTER_DIE_204003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204003", action = "action_EVENT_ANY_MONSTER_DIE_204003" },
	-- BOSS未死亡的情况下刷小怪
	{ config_id = 1204017, name = "ANY_MONSTER_DIE_204017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204017", action = "action_EVENT_ANY_MONSTER_DIE_204017" },
	-- 监测BOSS死亡
	{ config_id = 1204022, name = "ANY_MONSTER_DIE_204022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204022", action = "action_EVENT_ANY_MONSTER_DIE_204022" },
	-- Group刷新回归变量
	{ config_id = 1204023, name = "GROUP_LOAD_204023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_204023" },
	-- BOSS死亡的情况下完成任务
	{ config_id = 1204026, name = "ANY_MONSTER_DIE_204026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204026", action = "action_EVENT_ANY_MONSTER_DIE_204026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Boss", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 204018, monster_id = 23010601, pos = { x = -4074.550, y = 201.541, z = -676.648 }, rot = { x = 0.000, y = 22.188, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1107 }, area_id = 17 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
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
		monsters = { 204001, 204002, 204021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_204017", "ANY_MONSTER_DIE_204022", "GROUP_LOAD_204023", "ANY_MONSTER_DIE_204026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 204019, 204020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_204003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202103") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204017(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	-- 判断变量"Boss"为0
	if ScriptLib.GetGroupVariableValue(context, "Boss") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210204, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-4074.294,y=201.0461,z=-652.3647}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110371, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202115") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204022(context, evt)
	--判断死亡怪物的configid是否为 204021
	if evt.param1 ~= 204021 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204022(context, evt)
	-- 将本组内变量名为 "Boss" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202190") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_204023(context, evt)
	-- 将本组内变量名为 "Boss" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Boss", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"Boss"为1
	if ScriptLib.GetGroupVariableValue(context, "Boss") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202103") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end