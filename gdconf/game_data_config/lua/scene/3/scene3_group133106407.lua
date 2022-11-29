-- 基础信息
local base_info = {
	group_id = 133106407
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 407001, monster_id = 23010501, pos = { x = -98.608, y = 220.834, z = 1230.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9011, area_id = 6 },
	{ config_id = 407002, monster_id = 23010301, pos = { x = -98.107, y = 220.758, z = 1233.755 }, rot = { x = 0.000, y = 174.846, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9011, area_id = 6 },
	{ config_id = 407003, monster_id = 23010201, pos = { x = -102.395, y = 220.169, z = 1235.651 }, rot = { x = 357.680, y = 95.083, z = 359.794 }, level = 15, drop_id = 1000100, area_id = 8 },
	{ config_id = 407004, monster_id = 23010201, pos = { x = -93.487, y = 221.467, z = 1236.930 }, rot = { x = 0.000, y = 263.917, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 407005, monster_id = 23010301, pos = { x = -98.203, y = 220.990, z = 1239.564 }, rot = { x = 0.000, y = 165.581, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 }
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
	{ config_id = 1407008, name = "ANY_MONSTER_DIE_407008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_407008", action = "action_EVENT_ANY_MONSTER_DIE_407008" },
	{ config_id = 1407009, name = "ANY_MONSTER_DIE_407009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_407009", action = "action_EVENT_ANY_MONSTER_DIE_407009" }
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
		monsters = { 407001, 407002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_407008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 407003, 407004, 407005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_407009" },
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
function condition_EVENT_ANY_MONSTER_DIE_407008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_407008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106407, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_407009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_407009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133106407") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end