-- 基础信息
local base_info = {
	group_id = 133308010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 25310201, pos = { x = -1548.791, y = 80.252, z = 4738.455 }, rot = { x = 0.000, y = 103.617, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 10003, monster_id = 25310301, pos = { x = -1543.792, y = 80.252, z = 4732.758 }, rot = { x = 0.000, y = 42.060, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 10004, monster_id = 25410201, pos = { x = -1549.395, y = 80.252, z = 4732.521 }, rot = { x = 0.000, y = 49.952, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 10005, monster_id = 25210303, pos = { x = -1546.870, y = 80.252, z = 4729.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 10006, monster_id = 25210303, pos = { x = -1552.003, y = 80.252, z = 4735.336 }, rot = { x = 0.000, y = 75.802, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 10008, monster_id = 35310301, pos = { x = -1538.234, y = 80.252, z = 4735.881 }, rot = { x = 0.000, y = 264.272, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26, isPartner = true },
	{ config_id = 10009, monster_id = 35310101, pos = { x = -1542.370, y = 80.341, z = 4740.483 }, rot = { x = 0.000, y = 194.684, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 26, isPartner = true }
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
	{ config_id = 1010002, name = "ANY_MONSTER_DIE_10002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10002", action = "action_EVENT_ANY_MONSTER_DIE_10002" },
	{ config_id = 1010007, name = "ANY_MONSTER_DIE_10007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10007", action = "action_EVENT_ANY_MONSTER_DIE_10007", trigger_count = 0 },
	{ config_id = 1010010, name = "MONSTER_BATTLE_10010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_10010" }
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
		monsters = { 10001, 10003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10002", "MONSTER_BATTLE_10010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10004, 10005, 10006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 10008, 10009 },
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
function condition_EVENT_ANY_MONSTER_DIE_10002(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10007(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305512") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308010, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_10010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308010, 3)
	
	return 0
end