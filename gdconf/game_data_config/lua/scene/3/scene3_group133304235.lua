-- 基础信息
local base_info = {
	group_id = 133304235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235001, monster_id = 26120101, pos = { x = -1440.975, y = 182.311, z = 2479.295 }, rot = { x = 0.000, y = 4.272, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 21 },
	{ config_id = 235002, monster_id = 26090201, pos = { x = -1438.723, y = 182.688, z = 2477.168 }, rot = { x = 0.000, y = 4.272, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 235003, monster_id = 26090201, pos = { x = -1443.530, y = 182.434, z = 2476.524 }, rot = { x = 0.000, y = 4.272, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 235004, monster_id = 26090201, pos = { x = -1440.751, y = 181.328, z = 2475.008 }, rot = { x = 0.000, y = 4.272, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 21 }
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
	{ config_id = 1235005, name = "ANY_MONSTER_DIE_235005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_235005", action = "action_EVENT_ANY_MONSTER_DIE_235005" }
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
		monsters = { 235001, 235002, 235003, 235004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_235005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_235005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_235005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7380101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end