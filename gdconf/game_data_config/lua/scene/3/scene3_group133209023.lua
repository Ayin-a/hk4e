-- 基础信息
local base_info = {
	group_id = 133209023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23001, monster_id = 21010301, pos = { x = -2851.434, y = 199.950, z = -4546.768 }, rot = { x = 0.811, y = 310.391, z = 355.756 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 11 },
	{ config_id = 23002, monster_id = 21010301, pos = { x = -2848.406, y = 199.953, z = -4544.584 }, rot = { x = 1.221, y = 315.975, z = 355.855 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 11 },
	{ config_id = 23003, monster_id = 21010301, pos = { x = -2844.932, y = 199.789, z = -4542.944 }, rot = { x = 1.906, y = 325.718, z = 356.122 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 11 },
	{ config_id = 23004, monster_id = 21020301, pos = { x = -2844.584, y = 199.967, z = -4551.217 }, rot = { x = 2.210, y = 330.305, z = 356.286 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 11 },
	{ config_id = 23005, monster_id = 21020301, pos = { x = -2840.766, y = 199.755, z = -4548.508 }, rot = { x = 357.746, y = 324.046, z = 349.992 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 11 }
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
	{ config_id = 1023006, name = "ANY_MONSTER_DIE_23006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23006", action = "action_EVENT_ANY_MONSTER_DIE_23006" }
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
		monsters = { 23001, 23002, 23003, 23004, 23005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22030_02") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end