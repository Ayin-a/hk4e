-- 基础信息
local base_info = {
	group_id = 133217113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113001, monster_id = 25010301, pos = { x = -4390.502, y = 202.800, z = -4000.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 113003, monster_id = 25010501, pos = { x = -4386.784, y = 202.601, z = -3999.701 }, rot = { x = 0.000, y = 333.372, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 113004, monster_id = 25030201, pos = { x = -4390.130, y = 202.964, z = -3997.587 }, rot = { x = 0.000, y = 7.994, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 113005, monster_id = 25060101, pos = { x = -4386.830, y = 202.617, z = -3996.909 }, rot = { x = 0.000, y = 315.511, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 }
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
	{ config_id = 1113002, name = "ANY_MONSTER_DIE_113002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113002", action = "action_EVENT_ANY_MONSTER_DIE_113002" }
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
		monsters = { 113001, 113003, 113004, 113005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_113002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_113002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_113002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216220") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end