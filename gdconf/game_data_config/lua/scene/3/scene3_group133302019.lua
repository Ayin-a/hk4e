-- 基础信息
local base_info = {
	group_id = 133302019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 21010101, pos = { x = -511.115, y = 200.232, z = 2938.431 }, rot = { x = 0.000, y = 128.763, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 24 },
	{ config_id = 19002, monster_id = 21010101, pos = { x = -509.272, y = 200.229, z = 2939.201 }, rot = { x = 0.000, y = 167.160, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 24 },
	{ config_id = 19003, monster_id = 21010101, pos = { x = -512.657, y = 200.231, z = 2937.436 }, rot = { x = 0.000, y = 133.233, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 24 },
	{ config_id = 19004, monster_id = 21010101, pos = { x = -506.807, y = 200.231, z = 2938.253 }, rot = { x = 0.000, y = 190.832, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 24 }
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
	{ config_id = 1019005, name = "ANY_MONSTER_DIE_19005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19005", action = "action_EVENT_ANY_MONSTER_DIE_19005" },
	{ config_id = 1019006, name = "QUEST_START_19006", event = EventType.EVENT_QUEST_START, source = "7304404", condition = "", action = "action_EVENT_QUEST_START_19006", trigger_count = 0 }
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
	end_suite = 3,
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
		monsters = { 19001, 19002, 19003, 19004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19005", "QUEST_START_19006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_19005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302019) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q73044_KillEnemyAll") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_19006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302019, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end