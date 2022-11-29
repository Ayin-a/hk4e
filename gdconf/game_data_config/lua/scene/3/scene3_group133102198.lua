-- 基础信息
local base_info = {
	group_id = 133102198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 21020101, pos = { x = 1361.780, y = 207.425, z = 509.649 }, rot = { x = 0.000, y = 286.973, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 198002, monster_id = 21010201, pos = { x = 1359.854, y = 207.362, z = 506.597 }, rot = { x = 0.000, y = 321.899, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 5 },
	{ config_id = 198003, monster_id = 21010201, pos = { x = 1361.207, y = 207.827, z = 512.724 }, rot = { x = 0.000, y = 223.717, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 198009, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1361.109, y = 207.548, z = 510.225 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1198008, name = "ANY_MONSTER_DIE_198008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198008", action = "action_EVENT_ANY_MONSTER_DIE_198008" },
	{ config_id = 1198009, name = "ENTER_REGION_198009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_198009" }
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
		monsters = { 198001, 198002, 198003 },
		gadgets = { },
		regions = { 198009 },
		triggers = { "ANY_MONSTER_DIE_198008", "ENTER_REGION_198009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226206") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_198009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226205") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end