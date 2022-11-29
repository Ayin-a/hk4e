-- 基础信息
local base_info = {
	group_id = 133301213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 26120101, pos = { x = -293.709, y = 301.589, z = 3238.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 201, area_id = 22 },
	{ config_id = 213002, monster_id = 26090801, pos = { x = -285.061, y = 300.136, z = 3246.364 }, rot = { x = 0.000, y = 243.519, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 104, area_id = 22 },
	{ config_id = 213003, monster_id = 26120301, pos = { x = -287.190, y = 300.463, z = 3235.319 }, rot = { x = 0.000, y = 336.076, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 22 },
	{ config_id = 213004, monster_id = 26090801, pos = { x = -294.499, y = 302.196, z = 3232.408 }, rot = { x = 0.000, y = 336.076, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 104, area_id = 22 }
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
	{ config_id = 1213005, name = "ANY_MONSTER_DIE_213005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_213005", action = "action_EVENT_ANY_MONSTER_DIE_213005", trigger_count = 0 }
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
		monsters = { 213001, 213002, 213003, 213004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_213005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_213005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_213005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133301213") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end