-- 基础信息
local base_info = {
	group_id = 133004447
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 447001, monster_id = 21030401, pos = { x = 2379.087, y = 291.351, z = -211.628 }, rot = { x = 0.000, y = 161.618, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 447002, monster_id = 21010501, pos = { x = 2376.497, y = 291.628, z = -216.664 }, rot = { x = 0.000, y = 102.136, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 3 },
	{ config_id = 447003, monster_id = 21010501, pos = { x = 2384.235, y = 292.686, z = -216.487 }, rot = { x = 0.000, y = 223.799, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 3 },
	{ config_id = 447004, monster_id = 21010701, pos = { x = 2381.174, y = 292.596, z = -221.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9013, area_id = 3 },
	{ config_id = 447005, monster_id = 21010601, pos = { x = 2380.225, y = 292.047, z = -215.426 }, rot = { x = 0.000, y = 166.796, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 32, area_id = 3 },
	{ config_id = 447008, monster_id = 21030401, pos = { x = 2379.087, y = 291.351, z = -211.628 }, rot = { x = 0.000, y = 161.618, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 447009, monster_id = 21010501, pos = { x = 2376.497, y = 291.628, z = -216.664 }, rot = { x = 0.000, y = 102.136, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 3 },
	{ config_id = 447010, monster_id = 21010501, pos = { x = 2384.235, y = 292.686, z = -216.487 }, rot = { x = 0.000, y = 223.799, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 3 },
	{ config_id = 447011, monster_id = 21010701, pos = { x = 2381.174, y = 292.596, z = -221.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9013, area_id = 3 },
	{ config_id = 447012, monster_id = 21010601, pos = { x = 2380.225, y = 292.047, z = -215.426 }, rot = { x = 0.000, y = 166.796, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 32, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 447006, shape = RegionShape.SPHERE, radius = 35, pos = { x = 2380.928, y = 292.397, z = -218.401 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1447006, name = "ENTER_REGION_447006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_447006", action = "action_EVENT_ENTER_REGION_447006" },
	{ config_id = 1447007, name = "QUEST_START_447007", event = EventType.EVENT_QUEST_START, source = "1906508", condition = "condition_EVENT_QUEST_START_447007", action = "action_EVENT_QUEST_START_447007" },
	{ config_id = 1447013, name = "ANY_MONSTER_DIE_447013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447013", action = "action_EVENT_ANY_MONSTER_DIE_447013" },
	{ config_id = 1447014, name = "ANY_MONSTER_DIE_447014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447014", action = "action_EVENT_ANY_MONSTER_DIE_447014", trigger_count = 0 },
	{ config_id = 1447015, name = "ANY_MONSTER_DIE_447015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447015", action = "action_EVENT_ANY_MONSTER_DIE_447015", trigger_count = 0 },
	{ config_id = 1447016, name = "ANY_MONSTER_DIE_447016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447016", action = "action_EVENT_ANY_MONSTER_DIE_447016", trigger_count = 0 },
	{ config_id = 1447017, name = "ANY_MONSTER_DIE_447017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447017", action = "action_EVENT_ANY_MONSTER_DIE_447017", trigger_count = 0 },
	{ config_id = 1447018, name = "ANY_MONSTER_DIE_447018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447018", action = "action_EVENT_ANY_MONSTER_DIE_447018", trigger_count = 0 },
	{ config_id = 1447019, name = "ANY_MONSTER_DIE_447019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447019", action = "action_EVENT_ANY_MONSTER_DIE_447019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "prekill", value = 0, no_refresh = false }
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
		monsters = { 447001, 447002, 447003, 447004, 447005 },
		gadgets = { },
		regions = { 447006 },
		triggers = { "ENTER_REGION_447006", "QUEST_START_447007", "ANY_MONSTER_DIE_447013", "ANY_MONSTER_DIE_447014", "ANY_MONSTER_DIE_447015", "ANY_MONSTER_DIE_447016", "ANY_MONSTER_DIE_447017", "ANY_MONSTER_DIE_447018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 447008, 447009, 447010, 447011, 447012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_447019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_447006(context, evt)
	if evt.param1 ~= 447006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_447006(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2380,y=292,z=-218}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021115, pos, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044471") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_447007(context, evt)
	-- 判断变量"prekill"为5
	if ScriptLib.GetGroupVariableValue(context, "prekill") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_447007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004447, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044472") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447014(context, evt)
	--判断死亡怪物的configid是否为 447001
	if evt.param1 ~= 447001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447014(context, evt)
	-- 针对当前group内变量名为 "prekill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "prekill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447015(context, evt)
	--判断死亡怪物的configid是否为 447002
	if evt.param1 ~= 447002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447015(context, evt)
	-- 针对当前group内变量名为 "prekill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "prekill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447016(context, evt)
	--判断死亡怪物的configid是否为 447003
	if evt.param1 ~= 447003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447016(context, evt)
	-- 针对当前group内变量名为 "prekill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "prekill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447017(context, evt)
	--判断死亡怪物的configid是否为 447004
	if evt.param1 ~= 447004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447017(context, evt)
	-- 针对当前group内变量名为 "prekill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "prekill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447018(context, evt)
	--判断死亡怪物的configid是否为 447005
	if evt.param1 ~= 447005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447018(context, evt)
	-- 针对当前group内变量名为 "prekill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "prekill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044472") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end