-- 基础信息
local base_info = {
	group_id = 133315022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22002, monster_id = 21010201, pos = { x = 116.917, y = 249.954, z = 2488.295 }, rot = { x = 0.000, y = 318.847, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 20 },
	{ config_id = 22003, monster_id = 21010101, pos = { x = 119.622, y = 251.279, z = 2486.610 }, rot = { x = 0.000, y = 165.692, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 20 },
	{ config_id = 22004, monster_id = 21010101, pos = { x = 113.743, y = 252.252, z = 2482.698 }, rot = { x = 0.000, y = 345.586, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 20 }
}

-- NPC
npcs = {
	{ config_id = 22001, npc_id = 20770, pos = { x = 121.480, y = 256.084, z = 2478.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 装置
gadgets = {
	{ config_id = 22005, gadget_id = 70210101, pos = { x = 123.104, y = 256.003, z = 2482.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 500301, drop_count = 1, persistent = true, area_id = 20 },
	{ config_id = 22012, gadget_id = 70210101, pos = { x = 115.249, y = 253.481, z = 2481.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 500100, drop_count = 1, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 22009, shape = RegionShape.SPHERE, radius = 15, pos = { x = 119.381, y = 250.246, z = 2490.151 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1022006, name = "ANY_MONSTER_DIE_22006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22006", action = "action_EVENT_ANY_MONSTER_DIE_22006" },
	{ config_id = 1022007, name = "GADGET_STATE_CHANGE_22007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22007", action = "action_EVENT_GADGET_STATE_CHANGE_22007" },
	{ config_id = 1022008, name = "GADGET_STATE_CHANGE_22008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22008", action = "action_EVENT_GADGET_STATE_CHANGE_22008" },
	{ config_id = 1022011, name = "GROUP_LOAD_22011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_22011", action = "action_EVENT_GROUP_LOAD_22011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "baodi", value = 0, no_refresh = true }
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
		monsters = { 22002, 22003, 22004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22006", "GROUP_LOAD_22011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 22001 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 22005, 22012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_22007", "GADGET_STATE_CHANGE_22008" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 22009 },
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
function condition_EVENT_ANY_MONSTER_DIE_22006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7306702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315022, 4)
	
	-- 针对当前group内变量名为 "baodi" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "baodi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22007(context, evt)
	if 22005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22007(context, evt)
	-- 调用提示id为 33150021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22008(context, evt)
	if 22012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22008(context, evt)
	-- 调用提示id为 33150026 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_22011(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_22011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7306702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end