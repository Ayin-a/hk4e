-- 基础信息
local base_info = {
	group_id = 133001009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 21010301, pos = { x = 1437.978, y = 240.976, z = -1488.266 }, rot = { x = 0.000, y = 58.840, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 9003, monster_id = 21010501, pos = { x = 1443.158, y = 257.706, z = -1467.850 }, rot = { x = 0.000, y = 7.700, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 9010, monster_id = 21010501, pos = { x = 1402.697, y = 241.497, z = -1468.369 }, rot = { x = 0.000, y = 108.600, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 9014, monster_id = 21020201, pos = { x = 1425.806, y = 237.742, z = -1481.177 }, rot = { x = 0.000, y = 267.200, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9002, gadget_id = 70220067, pos = { x = 1443.558, y = 241.929, z = -1505.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 9004, gadget_id = 70220066, pos = { x = 1424.048, y = 237.582, z = -1478.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 9005, gadget_id = 70300090, pos = { x = 1442.314, y = 251.810, z = -1469.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 9006, gadget_id = 70300083, pos = { x = 1404.891, y = 236.694, z = -1463.057 }, rot = { x = 0.000, y = 274.700, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 9007, gadget_id = 70300083, pos = { x = 1406.916, y = 239.102, z = -1452.126 }, rot = { x = 0.000, y = 275.460, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 9009, gadget_id = 70300090, pos = { x = 1401.903, y = 235.966, z = -1467.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 9012, gadget_id = 70220066, pos = { x = 1425.191, y = 238.019, z = -1478.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 9013, gadget_id = 70310001, pos = { x = 1443.862, y = 241.990, z = -1503.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 9015, gadget_id = 70310006, pos = { x = 1423.992, y = 237.157, z = -1481.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 9018, gadget_id = 70300084, pos = { x = 1425.680, y = 237.800, z = -1471.961 }, rot = { x = 0.000, y = 247.600, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009008, name = "MONSTER_BATTLE_9008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_9008", trigger_count = 0 },
	{ config_id = 1009011, name = "ANY_GADGET_DIE_9011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_9011", trigger_count = 0 }
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
		monsters = { 9001, 9003, 9010, 9014 },
		gadgets = { 9002, 9004, 9005, 9006, 9007, 9009, 9012, 9013, 9015, 9018 },
		regions = { },
		triggers = { "MONSTER_BATTLE_9008", "ANY_GADGET_DIE_9011" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_9008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_9011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end