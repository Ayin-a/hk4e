-- 基础信息
local base_info = {
	group_id = 133309010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 24040301, pos = { x = -2353.652, y = 180.730, z = 5422.146 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5246 }, pose_id = 1004, area_id = 27 },
	{ config_id = 10002, monster_id = 24040101, pos = { x = -2344.934, y = 180.982, z = 5422.146 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5246 }, pose_id = 1004, area_id = 27 },
	{ config_id = 10005, monster_id = 35310101, pos = { x = -2351.845, y = 180.624, z = 5416.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27, isPartner = true },
	{ config_id = 10006, monster_id = 35310301, pos = { x = -2347.125, y = 180.553, z = 5417.814 }, rot = { x = 0.000, y = 345.312, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 27, isPartner = true }
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
	{ config_id = 1010003, name = "ANY_MONSTER_DIE_10003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10003", action = "action_EVENT_ANY_MONSTER_DIE_10003" },
	{ config_id = 1010004, name = "MONSTER_BATTLE_10004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_10004", action = "action_EVENT_MONSTER_BATTLE_10004" }
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
		monsters = { 10001, 10002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10003", "MONSTER_BATTLE_10004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10005, 10006 },
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
function condition_EVENT_ANY_MONSTER_DIE_10003(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305404") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133309010, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_10004(context, evt)
	if 10001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_10004(context, evt)
	-- 调用提示id为 1000060012 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309010, 2)
	
	return 0
end