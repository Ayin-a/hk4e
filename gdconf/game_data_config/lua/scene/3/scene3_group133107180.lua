-- 基础信息
local base_info = {
	group_id = 133107180
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 180001, monster_id = 21030401, pos = { x = -613.060, y = 151.996, z = 1621.101 }, rot = { x = 0.000, y = 54.255, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 19 },
	{ config_id = 180003, monster_id = 20011401, pos = { x = -609.202, y = 149.993, z = 1620.495 }, rot = { x = 0.000, y = 292.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 19 },
	{ config_id = 180004, monster_id = 20011401, pos = { x = -610.973, y = 149.692, z = 1624.451 }, rot = { x = 0.000, y = 221.874, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 19 },
	{ config_id = 180005, monster_id = 20011501, pos = { x = -609.472, y = 149.610, z = 1623.311 }, rot = { x = 0.000, y = 239.489, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 19 }
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
	{ config_id = 1180006, name = "ANY_MONSTER_DIE_180006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_180006", action = "action_EVENT_ANY_MONSTER_DIE_180006" }
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
		monsters = { 180001, 180003, 180004, 180005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_180006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_180006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133107180) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_180006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2103402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end