-- 基础信息
local base_info = {
	group_id = 133103917
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 917001, monster_id = 22010301, pos = { x = 782.721, y = 254.073, z = 957.533 }, rot = { x = 0.000, y = 345.689, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9013, area_id = 6 },
	{ config_id = 917002, monster_id = 22010201, pos = { x = 786.350, y = 253.882, z = 959.368 }, rot = { x = 0.000, y = 296.357, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 6 },
	{ config_id = 917004, monster_id = 24010201, pos = { x = 783.176, y = 253.855, z = 960.458 }, rot = { x = 0.000, y = 131.630, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 6 },
	{ config_id = 917005, monster_id = 21011001, pos = { x = 777.639, y = 255.803, z = 965.282 }, rot = { x = 0.000, y = 114.902, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 6 },
	{ config_id = 917006, monster_id = 21010501, pos = { x = 776.731, y = 254.026, z = 952.662 }, rot = { x = 0.000, y = 46.459, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 6 },
	{ config_id = 917007, monster_id = 21010201, pos = { x = 784.896, y = 253.872, z = 962.253 }, rot = { x = 0.000, y = 228.517, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9016, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 917008, gadget_id = 70220009, pos = { x = 779.515, y = 254.009, z = 967.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1917003, name = "ANY_MONSTER_DIE_917003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_917003", action = "action_EVENT_ANY_MONSTER_DIE_917003", trigger_count = 0 }
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
		monsters = { 917001, 917002, 917004, 917005, 917006, 917007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_917003" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 917008 },
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
function condition_EVENT_ANY_MONSTER_DIE_917003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_917003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310391701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end