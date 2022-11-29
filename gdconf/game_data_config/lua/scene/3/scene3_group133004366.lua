-- 基础信息
local base_info = {
	group_id = 133004366
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 366001, monster_id = 25010201, pos = { x = 2377.564, y = 208.314, z = -890.567 }, rot = { x = 0.000, y = 266.170, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 366002, monster_id = 25030201, pos = { x = 2383.203, y = 208.021, z = -891.966 }, rot = { x = 0.000, y = 247.279, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 366003, monster_id = 25030301, pos = { x = 2381.705, y = 208.592, z = -888.564 }, rot = { x = 0.000, y = 238.288, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 366004, monster_id = 25010201, pos = { x = 2378.617, y = 207.647, z = -893.383 }, rot = { x = 0.000, y = 242.999, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 1366005, name = "ANY_MONSTER_DIE_366005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_366005", action = "action_EVENT_ANY_MONSTER_DIE_366005" }
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
	suite = 2,
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 366001, 366002, 366003, 366004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_366005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_366005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133004366) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_366005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004366") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end