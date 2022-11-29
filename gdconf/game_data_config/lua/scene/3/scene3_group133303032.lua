-- 基础信息
local base_info = {
	group_id = 133303032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 28030313, pos = { x = -1376.248, y = 208.890, z = 3108.000 }, rot = { x = 0.000, y = 166.033, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
	{ config_id = 32003, monster_id = 28030313, pos = { x = -1391.486, y = 216.669, z = 3084.831 }, rot = { x = 0.000, y = 299.091, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
	{ config_id = 32004, monster_id = 28030313, pos = { x = -1398.231, y = 211.437, z = 3104.455 }, rot = { x = 0.000, y = 134.440, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 }
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
	{ config_id = 1032002, name = "ANY_MONSTER_DIE_32002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32002", action = "action_EVENT_ANY_MONSTER_DIE_32002" },
	{ config_id = 1032005, name = "ANY_MONSTER_DIE_32005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32005", action = "action_EVENT_ANY_MONSTER_DIE_32005" },
	{ config_id = 1032006, name = "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_32006", event = EventType.EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_32006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "questFinished", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { 32001, 32003, 32004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 32001, 32003, 32004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_32002", "ANY_MONSTER_DIE_32005", "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_32006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32002(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302311_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32005(context, evt)
	--判断死亡怪物的死亡类型是否为2，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 2 then
	    return false
	 end
	
	
	-- 判断变量"questFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "questFinished") ~= 0 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32005(context, evt)
	-- 调用提示id为 7302301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7302301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_32006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302311_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end