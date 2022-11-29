-- 基础信息
local base_info = {
	group_id = 133302564
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 564001, monster_id = 26120101, pos = { x = -213.460, y = 201.065, z = 2978.346 }, rot = { x = 0.000, y = 229.921, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 103, area_id = 24 },
	{ config_id = 564002, monster_id = 26120401, pos = { x = -210.554, y = 200.054, z = 2974.575 }, rot = { x = 0.000, y = 229.578, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 },
	{ config_id = 564004, monster_id = 20060301, pos = { x = -210.968, y = 200.637, z = 2977.446 }, rot = { x = 0.000, y = 233.063, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 564005, monster_id = 20060301, pos = { x = -212.595, y = 201.261, z = 2981.391 }, rot = { x = 0.000, y = 186.435, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 }
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
	{ config_id = 1564006, name = "ANY_MONSTER_DIE_564006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564006", action = "action_EVENT_ANY_MONSTER_DIE_564006" }
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
		monsters = { 564001, 564002, 564004, 564005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333025641") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end