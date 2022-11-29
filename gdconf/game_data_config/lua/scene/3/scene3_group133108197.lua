-- 基础信息
local base_info = {
	group_id = 133108197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197001, monster_id = 25010201, pos = { x = -320.036, y = 200.089, z = -640.929 }, rot = { x = 0.000, y = 120.237, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 197014, monster_id = 25010201, pos = { x = -319.313, y = 200.106, z = -647.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 197015, monster_id = 25010201, pos = { x = -312.318, y = 200.106, z = -641.576 }, rot = { x = 0.000, y = 264.306, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 197016, monster_id = 25010105, pos = { x = -321.313, y = 200.075, z = -640.045 }, rot = { x = 0.000, y = 120.237, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, isElite = true, area_id = 7 },
	{ config_id = 197018, monster_id = 25030201, pos = { x = -301.646, y = 200.096, z = -650.642 }, rot = { x = 0.000, y = 284.253, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 197019, monster_id = 25030201, pos = { x = -301.460, y = 200.016, z = -655.339 }, rot = { x = 0.000, y = 299.623, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 197020, monster_id = 25010501, pos = { x = -307.763, y = 200.133, z = -652.010 }, rot = { x = 0.000, y = 286.040, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 197031, monster_id = 25010201, pos = { x = -297.958, y = 200.019, z = -650.513 }, rot = { x = 0.000, y = 305.998, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 197003, gadget_id = 70220062, pos = { x = -323.307, y = 200.106, z = -646.958 }, rot = { x = 0.166, y = 96.465, z = 358.750 }, level = 1, isOneoff = true, area_id = 7 },
	{ config_id = 197004, gadget_id = 70310001, pos = { x = -332.245, y = 200.188, z = -641.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 197005, gadget_id = 70300105, pos = { x = -323.830, y = 200.210, z = -640.199 }, rot = { x = 0.000, y = 29.083, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 197006, gadget_id = 70300105, pos = { x = -317.144, y = 200.139, z = -635.532 }, rot = { x = 0.000, y = 262.231, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 197007, gadget_id = 70310001, pos = { x = -318.093, y = 200.257, z = -625.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 197008, gadget_id = 70310001, pos = { x = -304.990, y = 200.146, z = -642.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 197009, gadget_id = 71700226, pos = { x = -324.728, y = 200.075, z = -642.184 }, rot = { x = 0.044, y = 294.008, z = 359.788 }, level = 1, area_id = 7 },
	{ config_id = 197011, gadget_id = 70220062, pos = { x = -315.974, y = 200.135, z = -635.024 }, rot = { x = 0.000, y = 251.690, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 197012, gadget_id = 70220017, pos = { x = -310.862, y = 200.106, z = -641.492 }, rot = { x = 0.000, y = 8.064, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 197013, gadget_id = 70310006, pos = { x = -312.683, y = 200.106, z = -639.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 197023, gadget_id = 71700226, pos = { x = -318.855, y = 200.117, z = -635.497 }, rot = { x = 0.000, y = 280.613, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 197024, gadget_id = 70800056, pos = { x = -321.407, y = 200.106, z = -647.401 }, rot = { x = 0.166, y = 15.264, z = 358.750 }, level = 1, isOneoff = true, area_id = 7 },
	{ config_id = 197025, gadget_id = 70220063, pos = { x = -314.457, y = 200.294, z = -634.987 }, rot = { x = 26.704, y = 143.328, z = 276.221 }, level = 1, area_id = 7 },
	{ config_id = 197026, gadget_id = 70220063, pos = { x = -323.728, y = 200.106, z = -646.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 197027, gadget_id = 70220064, pos = { x = -322.874, y = 200.106, z = -646.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 197010, shape = RegionShape.SPHERE, radius = 20, pos = { x = -320.580, y = 200.094, z = -639.931 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1197002, name = "ANY_MONSTER_DIE_197002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_197002", action = "action_EVENT_ANY_MONSTER_DIE_197002" },
	{ config_id = 1197017, name = "QUEST_START_197017", event = EventType.EVENT_QUEST_START, source = "4003913", condition = "", action = "action_EVENT_QUEST_START_197017" },
	{ config_id = 1197021, name = "SPECIFIC_MONSTER_HP_CHANGE_197021", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "197016", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_197021", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_197021" },
	{ config_id = 1197022, name = "QUEST_FINISH_197022", event = EventType.EVENT_QUEST_FINISH, source = "4003925", condition = "", action = "action_EVENT_QUEST_FINISH_197022" }
}

-- 变量
variables = {
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
		gadgets = { 197003, 197004, 197005, 197006, 197007, 197008, 197009, 197011, 197012, 197013, 197023, 197024, 197025, 197026, 197027 },
		regions = { 197010 },
		triggers = { "QUEST_START_197017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 197001, 197014, 197015, 197016 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_197021", "QUEST_FINISH_197022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 197018, 197019, 197020, 197031 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_197002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_197002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_197002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133108197") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Variable_EndGame" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_EndGame", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_197017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108197, 2)
	
	-- 将本组内变量名为 "Variable_StartWatcherCountDown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_StartWatcherCountDown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_197021(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_197021(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108197, 3)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_197022(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133108197, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

require "V2_4/Firecracker"