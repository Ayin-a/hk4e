-- 基础信息
local base_info = {
	group_id = 133315029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29004, monster_id = 28030301, pos = { x = -791.326, y = 214.418, z = 2105.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 29005, monster_id = 28030301, pos = { x = -794.484, y = 214.856, z = 2104.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 29007, monster_id = 28060609, pos = { x = -786.368, y = 213.910, z = 2110.763 }, rot = { x = 0.000, y = 258.563, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, title_id = 10110, special_name_id = 10143, area_id = 19 },
	{ config_id = 29008, monster_id = 28030301, pos = { x = -793.362, y = 214.958, z = 2108.916 }, rot = { x = 0.000, y = 210.867, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 29003, shape = RegionShape.SPHERE, radius = 50, pos = { x = -814.914, y = 235.929, z = 2096.817 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1029001, name = "GROUP_LOAD_29001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_29001", action = "action_EVENT_GROUP_LOAD_29001", trigger_count = 0 },
	{ config_id = 1029002, name = "ANY_MONSTER_DIE_29002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29002", action = "action_EVENT_ANY_MONSTER_DIE_29002" },
	{ config_id = 1029003, name = "ENTER_REGION_29003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_29003" },
	{ config_id = 1029006, name = "MONSTER_BATTLE_29006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_29006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "baodi", value = 0, no_refresh = false }
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
		monsters = { 29008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 29004, 29005, 29007 },
		gadgets = { },
		regions = { 29003 },
		triggers = { "GROUP_LOAD_29001", "ANY_MONSTER_DIE_29002", "ENTER_REGION_29003", "MONSTER_BATTLE_29006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_29001(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_29001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7307606") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29002(context, evt)
	--判断死亡怪物的configid是否为 29007
	if evt.param1 ~= 29007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7307606") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "baodi" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "baodi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_29003(context, evt)
	-- 调用提示id为 33150023 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_29006(context, evt)
	-- 调用提示id为 33150024 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150024) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end