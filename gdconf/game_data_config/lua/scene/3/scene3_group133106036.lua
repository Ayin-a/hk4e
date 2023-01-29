-- 基础信息
local base_info = {
	group_id = 133106036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 23010401, pos = { x = -609.557, y = 234.690, z = 1989.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 19 },
	{ config_id = 36002, monster_id = 23010501, pos = { x = -600.444, y = 231.874, z = 1977.900 }, rot = { x = 0.000, y = 95.503, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 19 },
	{ config_id = 36003, monster_id = 23010301, pos = { x = -589.955, y = 235.788, z = 1986.717 }, rot = { x = 0.000, y = 79.124, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 19 }
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
	{ config_id = 1036004, name = "ANY_MONSTER_DIE_36004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36004", action = "action_EVENT_ANY_MONSTER_DIE_36004" }
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
		monsters = { 36001, 36002, 36003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q2103602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end