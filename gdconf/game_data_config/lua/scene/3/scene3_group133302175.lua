-- 基础信息
local base_info = {
	group_id = 133302175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175001, monster_id = 25010201, pos = { x = -1814.527, y = 322.090, z = 3855.732 }, rot = { x = 0.000, y = 87.935, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9004, area_id = 23 },
	{ config_id = 175002, monster_id = 25030301, pos = { x = -1803.457, y = 320.626, z = 3852.536 }, rot = { x = 0.000, y = 210.298, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 23 },
	{ config_id = 175003, monster_id = 25020201, pos = { x = -1805.697, y = 327.423, z = 3842.032 }, rot = { x = 0.000, y = 300.103, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9002, area_id = 23 },
	{ config_id = 175004, monster_id = 25010301, pos = { x = -1807.261, y = 327.374, z = 3842.403 }, rot = { x = 0.000, y = 89.616, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9006, area_id = 23 },
	{ config_id = 175006, monster_id = 25070101, pos = { x = -1787.985, y = 318.149, z = 3859.003 }, rot = { x = 0.000, y = 11.635, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 }
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
	{ config_id = 1175005, name = "ANY_MONSTER_DIE_175005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175005", action = "action_EVENT_ANY_MONSTER_DIE_175005", trigger_count = 0 }
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
		monsters = { 175001, 175002, 175003, 175004, 175006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_175005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_175005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302175) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310503") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end