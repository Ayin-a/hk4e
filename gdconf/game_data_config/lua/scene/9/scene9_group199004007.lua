-- 基础信息
local base_info = {
	group_id = 199004007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20011201, pos = { x = -335.491, y = 120.287, z = -723.120 }, rot = { x = 0.000, y = 49.947, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 },
	{ config_id = 7002, monster_id = 20011201, pos = { x = -336.907, y = 120.343, z = -720.625 }, rot = { x = 0.000, y = 71.210, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 },
	{ config_id = 7003, monster_id = 20011201, pos = { x = -331.470, y = 120.236, z = -724.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 },
	{ config_id = 7004, monster_id = 20011201, pos = { x = -333.662, y = 120.281, z = -721.172 }, rot = { x = 0.000, y = 42.866, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 },
	{ config_id = 7006, monster_id = 20011301, pos = { x = -329.663, y = 120.091, z = -724.892 }, rot = { x = 0.000, y = 41.466, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 },
	{ config_id = 7007, monster_id = 20011301, pos = { x = -332.158, y = 120.023, z = -722.034 }, rot = { x = 0.000, y = 46.450, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 },
	{ config_id = 7008, monster_id = 20011201, pos = { x = -332.100, y = 120.105, z = -724.189 }, rot = { x = 0.000, y = 56.139, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 }
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
	{ config_id = 1007005, name = "ANY_MONSTER_DIE_7005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7005", action = "action_EVENT_ANY_MONSTER_DIE_7005" },
	{ config_id = 1007009, name = "ANY_MONSTER_DIE_7009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7009", action = "action_EVENT_ANY_MONSTER_DIE_7009" }
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
		monsters = { 7001, 7002, 7003, 7004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7006, 7007, 7008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902521finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004024, 2)
	
	return 0
end