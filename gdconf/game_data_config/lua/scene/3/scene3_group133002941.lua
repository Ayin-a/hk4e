-- 基础信息
local base_info = {
	group_id = 133002941
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 941001, monster_id = 20011001, pos = { x = 1824.158, y = 200.647, z = -50.768 }, rot = { x = 0.000, y = 115.158, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 941002, monster_id = 20011001, pos = { x = 1825.360, y = 200.701, z = -48.138 }, rot = { x = 0.000, y = 175.857, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 941003, monster_id = 20011101, pos = { x = 1824.603, y = 200.380, z = -46.125 }, rot = { x = 0.000, y = 134.219, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 941004, monster_id = 20011101, pos = { x = 1823.204, y = 200.168, z = -48.703 }, rot = { x = 0.000, y = 121.551, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 }
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
	{ config_id = 1941005, name = "ANY_MONSTER_DIE_941005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_941005", action = "action_EVENT_ANY_MONSTER_DIE_941005", trigger_count = 0 }
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
		monsters = { 941001, 941002, 941003, 941004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_941005" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_941005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_941005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002941") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end