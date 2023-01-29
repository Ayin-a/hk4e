-- 基础信息
local base_info = {
	group_id = 133316066
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 23030101, pos = { x = 300.416, y = 258.819, z = 6561.368 }, rot = { x = 0.000, y = 318.505, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 },
	{ config_id = 66002, monster_id = 23010601, pos = { x = 299.918, y = 258.720, z = 6555.417 }, rot = { x = 0.000, y = 304.808, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 },
	{ config_id = 66003, monster_id = 23010601, pos = { x = 303.832, y = 258.948, z = 6563.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 30 }
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
	{ config_id = 1066004, name = "ANY_MONSTER_DIE_66004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66004", action = "action_EVENT_ANY_MONSTER_DIE_66004" }
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
		monsters = { 66001, 66002, 66003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_66004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328509") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end