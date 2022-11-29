-- 基础信息
local base_info = {
	group_id = 133308008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 25210303, pos = { x = -2501.949, y = 114.503, z = 4799.873 }, rot = { x = 0.000, y = 251.392, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 27 },
	{ config_id = 8002, monster_id = 25210303, pos = { x = -2503.729, y = 114.681, z = 4802.719 }, rot = { x = 0.000, y = 179.994, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 27 },
	{ config_id = 8004, monster_id = 25210403, pos = { x = -2495.763, y = 113.701, z = 4798.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 27 },
	{ config_id = 8006, monster_id = 25410101, pos = { x = -2498.335, y = 113.896, z = 4805.064 }, rot = { x = 0.000, y = 210.096, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 27 },
	{ config_id = 8007, monster_id = 35310101, pos = { x = -2498.219, y = 113.656, z = 4809.525 }, rot = { x = 0.000, y = 163.410, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27, isPartner = true },
	{ config_id = 8008, monster_id = 35310301, pos = { x = -2494.895, y = 113.620, z = 4803.942 }, rot = { x = 0.000, y = 262.966, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 27, isPartner = true }
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
	{ config_id = 1008003, name = "ANY_MONSTER_DIE_8003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8003", action = "action_EVENT_ANY_MONSTER_DIE_8003", trigger_count = 0 },
	{ config_id = 1008005, name = "ANY_MONSTER_DIE_8005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8005", action = "action_EVENT_ANY_MONSTER_DIE_8005", trigger_count = 0 },
	{ config_id = 1008009, name = "MONSTER_BATTLE_8009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_8009" }
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
		monsters = { 8001, 8002, 8004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8003", "MONSTER_BATTLE_8009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8007, 8008 },
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
function condition_EVENT_ANY_MONSTER_DIE_8003(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8005(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308008, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_8009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308008, 3)
	
	return 0
end