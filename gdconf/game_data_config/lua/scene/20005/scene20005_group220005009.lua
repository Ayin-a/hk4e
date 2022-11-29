-- 基础信息
local base_info = {
	group_id = 220005009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 26020101, pos = { x = -291.110, y = 31.754, z = 170.916 }, rot = { x = 0.000, y = 242.751, z = 0.000 }, level = 1, disableWander = true, affix = { 1021, 1030 }, pose_id = 1, special_name_id = 10016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9018, gadget_id = 70211021, pos = { x = -299.531, y = 31.479, z = 170.476 }, rot = { x = 0.000, y = 90.488, z = 0.000 }, level = 6, drop_tag = "战斗高级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009006, name = "ANY_MONSTER_DIE_9006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9006", action = "action_EVENT_ANY_MONSTER_DIE_9006" },
	{ config_id = 1009007, name = "SPECIFIC_MONSTER_HP_CHANGE_9007", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "9001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9007", action = "", trigger_count = 0 },
	{ config_id = 1009013, name = "MONSTER_BATTLE_9013", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_9013", action = "action_EVENT_MONSTER_BATTLE_9013" }
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
		monsters = { 9001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9006", "SPECIFIC_MONSTER_HP_CHANGE_9007", "MONSTER_BATTLE_9013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9018 },
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
function condition_EVENT_ANY_MONSTER_DIE_9006(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9006(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005009, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220005011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "22000501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220005009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9007(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_9013(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_9013(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005010, monsters = {}, gadgets = {10010} }) then
			return -1
		end
	
	-- 调用提示id为 200050301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050401) then
		return -1
	end
	
	-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220005005, suite = 1 }) then
			return -1
		end
	
	return 0
end