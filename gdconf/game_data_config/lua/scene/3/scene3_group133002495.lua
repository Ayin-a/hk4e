-- 基础信息
local base_info = {
	group_id = 133002495
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 495001, monster_id = 25070101, pos = { x = 1892.091, y = 236.189, z = -677.847 }, rot = { x = 0.000, y = 117.581, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9009, area_id = 3 },
	{ config_id = 495002, monster_id = 25060101, pos = { x = 1894.249, y = 235.903, z = -679.275 }, rot = { x = 0.000, y = 268.981, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9006, area_id = 3 },
	{ config_id = 495003, monster_id = 25010501, pos = { x = 1886.756, y = 235.346, z = -686.089 }, rot = { x = 0.000, y = 182.971, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9003, area_id = 3 },
	{ config_id = 495004, monster_id = 25010501, pos = { x = 1896.224, y = 237.034, z = -673.068 }, rot = { x = 9.383, y = 219.442, z = 2.365 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 495005, monster_id = 25030201, pos = { x = 1893.867, y = 236.013, z = -678.106 }, rot = { x = 6.342, y = 258.060, z = 7.456 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 495006, monster_id = 25010301, pos = { x = 1896.016, y = 238.084, z = -685.723 }, rot = { x = 0.000, y = 303.628, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 495007, monster_id = 25030201, pos = { x = 1882.951, y = 235.916, z = -683.538 }, rot = { x = 0.000, y = 59.707, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 }
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
	{ config_id = 1495008, name = "ANY_MONSTER_DIE_495008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_495008", action = "action_EVENT_ANY_MONSTER_DIE_495008" },
	{ config_id = 1495009, name = "ANY_MONSTER_DIE_495009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_495009", action = "action_EVENT_ANY_MONSTER_DIE_495009" }
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
		monsters = { 495001, 495002, 495003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_495008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 495004, 495005, 495006, 495007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_495009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_495008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_495008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002495, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_495009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_495009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002495") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end