-- 基础信息
local base_info = {
	group_id = 133103496
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 496005, monster_id = 25020201, pos = { x = 172.597, y = 194.335, z = 1401.240 }, rot = { x = 0.000, y = 249.200, z = 0.000 }, level = 24, drop_tag = "盗宝团", isElite = true, area_id = 6 },
	{ config_id = 496006, monster_id = 25010501, pos = { x = 174.345, y = 194.420, z = 1398.241 }, rot = { x = 0.000, y = 249.200, z = 0.000 }, level = 24, drop_tag = "盗宝团", isElite = true, area_id = 6 },
	{ config_id = 496007, monster_id = 25020201, pos = { x = 151.995, y = 194.075, z = 1387.753 }, rot = { x = 0.000, y = 17.700, z = 0.000 }, level = 24, drop_tag = "盗宝团", isElite = true, area_id = 6 },
	{ config_id = 496008, monster_id = 25010601, pos = { x = 147.867, y = 194.335, z = 1392.903 }, rot = { x = 0.000, y = 71.200, z = 0.000 }, level = 24, drop_tag = "盗宝团", isElite = true, area_id = 6 },
	{ config_id = 496009, monster_id = 25070101, pos = { x = 150.112, y = 194.075, z = 1403.733 }, rot = { x = 0.000, y = 133.700, z = 0.000 }, level = 24, drop_tag = "盗宝团", isElite = true, area_id = 6 },
	{ config_id = 496010, monster_id = 25010701, pos = { x = 169.763, y = 194.075, z = 1390.563 }, rot = { x = 0.000, y = 312.000, z = 0.000 }, level = 24, drop_tag = "盗宝团", isElite = true, area_id = 6 }
}

-- NPC
npcs = {
	{ config_id = 496013, npc_id = 20114, pos = { x = 157.485, y = 196.379, z = 1410.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 496022, npc_id = 20125, pos = { x = 159.127, y = 212.589, z = 1423.037 }, rot = { x = 0.000, y = 23.430, z = 0.000 }, area_id = 6 },
	{ config_id = 496023, npc_id = 20126, pos = { x = 192.286, y = 198.025, z = 1390.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 496024, npc_id = 20124, pos = { x = 113.252, y = 191.315, z = 1404.160 }, rot = { x = 0.000, y = 106.700, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
	{ config_id = 496001, gadget_id = 70710091, pos = { x = 157.485, y = 195.275, z = 1410.708 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 496002, gadget_id = 70211132, pos = { x = 149.377, y = 194.075, z = 1399.905 }, rot = { x = 0.000, y = 92.700, z = 0.000 }, level = 21, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 496003, gadget_id = 70211132, pos = { x = 165.577, y = 194.075, z = 1399.677 }, rot = { x = 0.000, y = 269.200, z = 0.000 }, level = 21, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 496004, gadget_id = 70211132, pos = { x = 157.428, y = 195.244, z = 1408.950 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 21, chest_drop_id = 2001600, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1496011, name = "VARIABLE_CHANGE_496011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_496011", action = "action_EVENT_VARIABLE_CHANGE_496011", trigger_count = 0 },
	{ config_id = 1496012, name = "ANY_MONSTER_DIE_496012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_496012", action = "action_EVENT_ANY_MONSTER_DIE_496012" },
	{ config_id = 1496014, name = "GADGET_STATE_CHANGE_496014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_496014", action = "action_EVENT_GADGET_STATE_CHANGE_496014" },
	{ config_id = 1496015, name = "GADGET_STATE_CHANGE_496015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_496015", action = "action_EVENT_GADGET_STATE_CHANGE_496015" },
	{ config_id = 1496016, name = "GADGET_STATE_CHANGE_496016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_496016", action = "action_EVENT_GADGET_STATE_CHANGE_496016" },
	{ config_id = 1496017, name = "VARIABLE_CHANGE_496017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_496017", action = "action_EVENT_VARIABLE_CHANGE_496017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Unlocked", value = 0, no_refresh = true },
	{ config_id = 2, name = "TreasureBox", value = 0, no_refresh = true }
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
		gadgets = { 496001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_496011", "ANY_MONSTER_DIE_496012" },
		npcs = { 496013, 496022, 496023, 496024 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 496002, 496003, 496004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_496014", "GADGET_STATE_CHANGE_496015", "GADGET_STATE_CHANGE_496016", "VARIABLE_CHANGE_496017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 496005, 496006, 496007, 496008, 496009, 496010 },
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
function condition_EVENT_VARIABLE_CHANGE_496011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Unlocked"为1
	if ScriptLib.GetGroupVariableValue(context, "Unlocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_496011(context, evt)
	-- 调用提示id为 31030001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103496, 3)
	
	-- 将本组内变量名为 "Unlocked" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Unlocked", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_496012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_496012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103496, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101103_progress") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_496014(context, evt)
	if 496002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_496014(context, evt)
	-- 针对当前group内变量名为 "TreasureBox" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "TreasureBox", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_496015(context, evt)
	if 496003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_496015(context, evt)
	-- 针对当前group内变量名为 "TreasureBox" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "TreasureBox", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_496016(context, evt)
	if 496004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_496016(context, evt)
	-- 针对当前group内变量名为 "TreasureBox" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "TreasureBox", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_496017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"TreasureBox"为3
	if ScriptLib.GetGroupVariableValue(context, "TreasureBox") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_496017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101104_progress") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end