-- 基础信息
local base_info = {
	group_id = 133303007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 26090501, pos = { x = -1241.372, y = 185.775, z = 3463.008 }, rot = { x = 0.000, y = 102.114, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 7003, monster_id = 26090801, pos = { x = -1237.439, y = 186.938, z = 3467.690 }, rot = { x = 0.000, y = 179.489, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 7004, monster_id = 26090801, pos = { x = -1235.644, y = 186.895, z = 3460.885 }, rot = { x = 0.000, y = 327.902, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 7005, monster_id = 26090501, pos = { x = -1241.372, y = 185.775, z = 3463.008 }, rot = { x = 0.000, y = 102.114, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 7006, monster_id = 26090801, pos = { x = -1237.439, y = 186.938, z = 3467.690 }, rot = { x = 0.000, y = 179.489, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 7007, monster_id = 26090801, pos = { x = -1235.644, y = 186.895, z = 3460.885 }, rot = { x = 0.000, y = 327.902, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 }
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
	{ config_id = 1007002, name = "ANY_MONSTER_DIE_7002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7002", action = "action_EVENT_ANY_MONSTER_DIE_7002" },
	{ config_id = 1007008, name = "ANY_MONSTER_DIE_7008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7008", action = "action_EVENT_ANY_MONSTER_DIE_7008" }
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
		monsters = { 7005, 7006, 7007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7003, 7004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301402_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301401_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end