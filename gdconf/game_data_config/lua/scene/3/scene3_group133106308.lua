-- 基础信息
local base_info = {
	group_id = 133106308
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 308001, monster_id = 25010201, pos = { x = -949.646, y = 207.367, z = 966.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9003, area_id = 8 },
	{ config_id = 308002, monster_id = 25010201, pos = { x = -955.384, y = 208.781, z = 975.892 }, rot = { x = 0.000, y = 159.180, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9006, area_id = 8 },
	{ config_id = 308003, monster_id = 25010301, pos = { x = -956.276, y = 208.744, z = 961.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9002, area_id = 8 },
	{ config_id = 308004, monster_id = 25010501, pos = { x = -963.946, y = 210.098, z = 969.993 }, rot = { x = 0.000, y = 85.998, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9002, area_id = 8 },
	{ config_id = 308005, monster_id = 25010701, pos = { x = -954.335, y = 207.889, z = 972.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9009, area_id = 8 },
	{ config_id = 308006, monster_id = 25070101, pos = { x = -989.840, y = 217.976, z = 958.954 }, rot = { x = 0.000, y = 85.363, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 308007, monster_id = 25010301, pos = { x = -986.520, y = 217.999, z = 962.748 }, rot = { x = 0.000, y = 116.282, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 308008, monster_id = 25010501, pos = { x = -989.727, y = 216.602, z = 952.221 }, rot = { x = 0.000, y = 57.224, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 }
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
	{ config_id = 1308009, name = "ANY_MONSTER_DIE_308009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_308009", action = "action_EVENT_ANY_MONSTER_DIE_308009" },
	{ config_id = 1308010, name = "ANY_MONSTER_DIE_308010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_308010", action = "action_EVENT_ANY_MONSTER_DIE_308010" },
	{ config_id = 1308011, name = "VARIABLE_CHANGE_308011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_308011", action = "action_EVENT_VARIABLE_CHANGE_308011" },
	{ config_id = 1308012, name = "ANY_MONSTER_DIE_308012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_308012", action = "action_EVENT_ANY_MONSTER_DIE_308012" },
	{ config_id = 1308013, name = "ANY_MONSTER_DIE_308013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_308013", action = "action_EVENT_ANY_MONSTER_DIE_308013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "thiefNum", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 308001, 308002, 308003, 308004, 308005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_308009", "ANY_MONSTER_DIE_308010", "VARIABLE_CHANGE_308011", "ANY_MONSTER_DIE_308012", "ANY_MONSTER_DIE_308013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 308006, 308007, 308008 },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_308009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_308009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106308, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-955,y=208,z=968}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-955, y=208, z=968}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_308010(context, evt)
	if 308006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_308010(context, evt)
	-- 针对当前group内变量名为 "thiefNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "thiefNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_308011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"thiefNum"为3
	if ScriptLib.GetGroupVariableValue(context, "thiefNum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_308011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331063081") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_308012(context, evt)
	if 308007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_308012(context, evt)
	-- 针对当前group内变量名为 "thiefNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "thiefNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_308013(context, evt)
	if 308008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_308013(context, evt)
	-- 针对当前group内变量名为 "thiefNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "thiefNum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end