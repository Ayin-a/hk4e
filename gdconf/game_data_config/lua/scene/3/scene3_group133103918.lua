-- 基础信息
local base_info = {
	group_id = 133103918
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 918001, monster_id = 24010101, pos = { x = 340.995, y = 260.052, z = 1097.924 }, rot = { x = 0.000, y = 205.471, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 6 },
	{ config_id = 918002, monster_id = 22010201, pos = { x = 339.018, y = 259.296, z = 1094.602 }, rot = { x = 0.000, y = 38.420, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9013, area_id = 6 },
	{ config_id = 918003, monster_id = 21010901, pos = { x = 345.471, y = 260.415, z = 1098.591 }, rot = { x = 0.000, y = 191.358, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 6 },
	{ config_id = 918005, monster_id = 22010101, pos = { x = 338.185, y = 259.688, z = 1097.128 }, rot = { x = 0.000, y = 72.480, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9013, area_id = 6 },
	{ config_id = 918006, monster_id = 21010501, pos = { x = 334.139, y = 258.680, z = 1095.337 }, rot = { x = 0.000, y = 49.950, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 6 },
	{ config_id = 918007, monster_id = 21010201, pos = { x = 338.522, y = 260.033, z = 1100.013 }, rot = { x = 0.000, y = 119.614, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9016, area_id = 6 },
	{ config_id = 918008, monster_id = 21010201, pos = { x = 341.305, y = 259.537, z = 1094.980 }, rot = { x = 0.000, y = 328.781, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9016, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 918009, gadget_id = 70220009, pos = { x = 347.745, y = 258.975, z = 1098.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1918004, name = "ANY_MONSTER_DIE_918004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_918004", action = "action_EVENT_ANY_MONSTER_DIE_918004", trigger_count = 0 }
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
		monsters = { 918001, 918002, 918003, 918005, 918006, 918007, 918008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_918004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 918009 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_918004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_918004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310391801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end