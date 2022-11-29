-- 基础信息
local base_info = {
	group_id = 133003070
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70001, monster_id = 21020201, pos = { x = 2244.443, y = 203.651, z = -1106.422 }, rot = { x = 0.000, y = 53.866, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 1 },
	{ config_id = 70002, monster_id = 21010601, pos = { x = 2247.750, y = 204.352, z = -1111.643 }, rot = { x = 0.000, y = 35.809, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 70003, monster_id = 21010201, pos = { x = 2253.080, y = 203.819, z = -1109.697 }, rot = { x = 0.000, y = 279.236, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 70004, monster_id = 21010601, pos = { x = 2247.488, y = 203.502, z = -1106.258 }, rot = { x = 0.000, y = 151.223, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 70007, monster_id = 20011201, pos = { x = 2240.754, y = 204.124, z = -1104.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70005, gadget_id = 70300081, pos = { x = 2241.529, y = 203.290, z = -1101.602 }, rot = { x = 0.000, y = 269.605, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 70006, gadget_id = 70300081, pos = { x = 2251.954, y = 203.500, z = -1104.875 }, rot = { x = 0.000, y = 295.145, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 70008, gadget_id = 70300085, pos = { x = 2249.679, y = 203.686, z = -1108.936 }, rot = { x = 9.727, y = 359.654, z = 355.538 }, level = 2, area_id = 1 },
	{ config_id = 70010, gadget_id = 70220035, pos = { x = 2249.813, y = 204.098, z = -1108.661 }, rot = { x = 0.000, y = 32.198, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 70011, gadget_id = 70220035, pos = { x = 2250.380, y = 204.211, z = -1111.806 }, rot = { x = 0.000, y = 47.257, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 70012, gadget_id = 70300087, pos = { x = 2240.614, y = 203.661, z = -1104.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 70013, gadget_id = 70220035, pos = { x = 2238.775, y = 204.215, z = -1105.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 70015, gadget_id = 70220035, pos = { x = 2245.614, y = 203.787, z = -1107.781 }, rot = { x = 0.000, y = 55.427, z = 0.000 }, level = 2, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070016, name = "ANY_MONSTER_DIE_70016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70016", action = "action_EVENT_ANY_MONSTER_DIE_70016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadgetNum", value = 0, no_refresh = false },
	{ config_id = 2, name = "QQNum", value = 0, no_refresh = false }
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
		monsters = { 70001, 70002, 70003, 70004, 70007 },
		gadgets = { 70005, 70006, 70008, 70010, 70011, 70012, 70013, 70015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7051402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end