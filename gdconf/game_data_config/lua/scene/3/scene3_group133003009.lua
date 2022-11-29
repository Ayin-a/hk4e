-- 基础信息
local base_info = {
	group_id = 133003009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 20010401, pos = { x = 2572.901, y = 364.479, z = -1748.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 9002, monster_id = 20010301, pos = { x = 2575.481, y = 364.706, z = -1745.932 }, rot = { x = 0.000, y = 223.400, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 9003, monster_id = 20010301, pos = { x = 2568.977, y = 363.007, z = -1747.327 }, rot = { x = 0.000, y = 109.460, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 9004, monster_id = 20010301, pos = { x = 2574.016, y = 365.321, z = -1751.819 }, rot = { x = 0.000, y = 342.090, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9005, gadget_id = 70290011, pos = { x = 2574.630, y = 364.620, z = -1746.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 9006, gadget_id = 70500000, pos = { x = 2574.629, y = 364.620, z = -1746.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9135, isOneoff = true, owner = 9005, area_id = 1 },
	{ config_id = 9007, gadget_id = 70290011, pos = { x = 2570.198, y = 363.472, z = -1747.667 }, rot = { x = 0.000, y = 216.860, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 9008, gadget_id = 70500000, pos = { x = 2570.198, y = 363.472, z = -1747.667 }, rot = { x = 0.000, y = 216.866, z = 0.000 }, level = 1, point_type = 9135, isOneoff = true, owner = 9007, area_id = 1 },
	{ config_id = 9009, gadget_id = 70290011, pos = { x = 2573.664, y = 365.065, z = -1750.886 }, rot = { x = 0.000, y = 110.010, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 9010, gadget_id = 70500000, pos = { x = 2573.663, y = 365.065, z = -1750.886 }, rot = { x = 0.000, y = 109.976, z = 0.000 }, level = 1, point_type = 9135, isOneoff = true, owner = 9009, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009011, name = "ANY_MONSTER_DIE_9011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9011", action = "action_EVENT_ANY_MONSTER_DIE_9011" }
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
		monsters = { 9001, 9002, 9003, 9004 },
		gadgets = { 9005, 9006, 9007, 9008, 9009, 9010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9011" },
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
function condition_EVENT_ANY_MONSTER_DIE_9011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003009") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end