-- 基础信息
local base_info = {
	group_id = 133309026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 23020101, pos = { x = -2092.161, y = -43.127, z = 5559.633 }, rot = { x = 0.000, y = 115.659, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 1042 }, area_id = 27 },
	{ config_id = 26002, monster_id = 23020101, pos = { x = -2087.851, y = -43.070, z = 5563.320 }, rot = { x = 0.000, y = 148.361, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 1042 }, area_id = 27 },
	{ config_id = 26003, monster_id = 25310202, pos = { x = -2089.027, y = -43.247, z = 5560.820 }, rot = { x = 0.000, y = 149.069, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 1007 }, pose_id = 1, title_id = 10131, special_name_id = 10185, area_id = 27 },
	{ config_id = 26006, monster_id = 35310301, pos = { x = -2085.965, y = -42.303, z = 5553.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 27, isPartner = true },
	{ config_id = 26007, monster_id = 35310101, pos = { x = -2082.998, y = -42.654, z = 5556.004 }, rot = { x = 0.000, y = 308.059, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27, isPartner = true }
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
	{ config_id = 1026004, name = "ANY_MONSTER_DIE_26004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26004", action = "action_EVENT_ANY_MONSTER_DIE_26004" },
	{ config_id = 1026005, name = "ANY_MONSTER_DIE_26005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26005", action = "action_EVENT_ANY_MONSTER_DIE_26005" }
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
		monsters = { 26001, 26002, 26003, 26006, 26007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_26004", "ANY_MONSTER_DIE_26005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26004(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305431") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133309026, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26005(context, evt)
	--判断死亡怪物的configid是否为 26003
	if evt.param1 ~= 26003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26005(context, evt)
	-- 调用提示id为 7305310 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7305310) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end