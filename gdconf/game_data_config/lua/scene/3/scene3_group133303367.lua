-- 基础信息
local base_info = {
	group_id = 133303367
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 367001, monster_id = 21010101, pos = { x = -1113.306, y = 179.423, z = 3578.210 }, rot = { x = 0.000, y = 231.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 23 },
	{ config_id = 367002, monster_id = 21030201, pos = { x = -1109.599, y = 178.075, z = 3578.937 }, rot = { x = 0.000, y = 246.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 23 },
	{ config_id = 367003, monster_id = 21010301, pos = { x = -1112.857, y = 179.507, z = 3575.173 }, rot = { x = 0.000, y = 294.800, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 367005, gadget_id = 71700435, pos = { x = -1129.960, y = 183.012, z = 3578.705 }, rot = { x = 14.800, y = 307.900, z = 341.220 }, level = 1, area_id = 23 },
	{ config_id = 367006, gadget_id = 71700487, pos = { x = -1148.231, y = 185.913, z = 3627.684 }, rot = { x = 271.298, y = 35.927, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 367007, gadget_id = 71700488, pos = { x = -1148.519, y = 186.518, z = 3595.146 }, rot = { x = 300.400, y = 4.460, z = 179.999 }, level = 1, area_id = 23 },
	{ config_id = 367008, gadget_id = 71700435, pos = { x = -1147.620, y = 184.892, z = 3614.813 }, rot = { x = 351.700, y = 355.800, z = 268.770 }, level = 1, area_id = 23 },
	{ config_id = 367009, gadget_id = 71700486, pos = { x = -1150.592, y = 180.368, z = 3668.705 }, rot = { x = 293.270, y = 315.720, z = 3.700 }, level = 1, area_id = 23 },
	{ config_id = 367010, gadget_id = 71700435, pos = { x = -1165.475, y = 185.920, z = 3656.702 }, rot = { x = 10.140, y = 0.000, z = 337.330 }, level = 1, area_id = 23 },
	{ config_id = 367011, gadget_id = 70500000, pos = { x = -1140.353, y = 183.841, z = 3602.223 }, rot = { x = 30.946, y = 30.306, z = 217.134 }, level = 1, point_type = 2049, isOneoff = true, area_id = 23 },
	{ config_id = 367012, gadget_id = 70500000, pos = { x = -1140.404, y = 183.806, z = 3602.539 }, rot = { x = 30.946, y = 191.700, z = 217.134 }, level = 1, point_type = 2049, isOneoff = true, area_id = 23 },
	{ config_id = 367013, gadget_id = 70500000, pos = { x = -1149.217, y = 185.573, z = 3626.368 }, rot = { x = 0.000, y = 0.000, z = 140.056 }, level = 1, point_type = 2051, isOneoff = true, area_id = 23 },
	{ config_id = 367014, gadget_id = 70500000, pos = { x = -1149.594, y = 185.744, z = 3626.368 }, rot = { x = 272.598, y = 80.500, z = 42.700 }, level = 1, point_type = 2051, isOneoff = true, area_id = 23 },
	{ config_id = 367015, gadget_id = 70500000, pos = { x = -1149.274, y = 185.650, z = 3625.950 }, rot = { x = 272.594, y = 80.490, z = 317.152 }, level = 1, point_type = 2051, isOneoff = true, area_id = 23 },
	{ config_id = 367016, gadget_id = 70500000, pos = { x = -1161.816, y = 184.449, z = 3662.811 }, rot = { x = 270.687, y = 47.619, z = 2.407 }, level = 1, point_type = 2049, isOneoff = true, area_id = 23 },
	{ config_id = 367017, gadget_id = 70500000, pos = { x = -1161.704, y = 184.390, z = 3663.413 }, rot = { x = 310.051, y = 87.131, z = 180.823 }, level = 1, point_type = 2049, isOneoff = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1367004, name = "ANY_MONSTER_DIE_367004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_367004", action = "action_EVENT_ANY_MONSTER_DIE_367004", trigger_count = 0 }
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
		monsters = { 367001, 367002, 367003 },
		gadgets = { 367005, 367006, 367007, 367008, 367009, 367010, 367011, 367012, 367013, 367014, 367015, 367016, 367017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_367004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_367004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_367004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7318501_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end