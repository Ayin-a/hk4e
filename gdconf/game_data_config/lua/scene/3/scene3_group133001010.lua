-- 基础信息
local base_info = {
	group_id = 133001010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10003, monster_id = 21010501, pos = { x = 1429.788, y = 245.429, z = -1516.402 }, rot = { x = 0.000, y = 231.340, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 10004, monster_id = 21010501, pos = { x = 1431.705, y = 248.424, z = -1555.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 32, area_id = 2 },
	{ config_id = 10006, monster_id = 21020201, pos = { x = 1441.645, y = 242.420, z = -1518.844 }, rot = { x = 0.000, y = 286.070, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 2 },
	{ config_id = 10008, monster_id = 21030101, pos = { x = 1439.985, y = 242.314, z = -1516.666 }, rot = { x = 0.000, y = 203.770, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 2 },
	{ config_id = 10017, monster_id = 21010101, pos = { x = 1448.669, y = 243.051, z = -1557.467 }, rot = { x = 0.000, y = 198.900, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10001, gadget_id = 70300084, pos = { x = 1428.443, y = 238.931, z = -1510.765 }, rot = { x = 0.000, y = 220.450, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 10002, gadget_id = 70300090, pos = { x = 1429.957, y = 239.949, z = -1515.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 10007, gadget_id = 70310009, pos = { x = 1439.329, y = 242.242, z = -1519.355 }, rot = { x = 0.000, y = 289.140, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 10009, gadget_id = 70300084, pos = { x = 1432.074, y = 240.218, z = -1562.720 }, rot = { x = 0.000, y = 145.870, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 10010, gadget_id = 70220066, pos = { x = 1440.927, y = 242.384, z = -1516.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 10011, gadget_id = 70220066, pos = { x = 1441.906, y = 242.481, z = -1516.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 10014, gadget_id = 70300084, pos = { x = 1426.122, y = 237.896, z = -1543.979 }, rot = { x = 0.000, y = 165.680, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 10015, gadget_id = 70300084, pos = { x = 1441.964, y = 240.645, z = -1569.290 }, rot = { x = 0.000, y = 104.210, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 10018, gadget_id = 70220067, pos = { x = 1441.124, y = 241.413, z = -1548.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 2 },
	{ config_id = 10019, gadget_id = 70220066, pos = { x = 1441.817, y = 241.628, z = -1549.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010012, name = "ANY_GADGET_DIE_10012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_10012", trigger_count = 0 },
	{ config_id = 1010013, name = "MONSTER_BATTLE_10013", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_10013" }
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
		monsters = { 10003, 10004, 10006, 10008, 10017 },
		gadgets = { 10001, 10002, 10007, 10009, 10010, 10011, 10014, 10015, 10018, 10019 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_10012", "MONSTER_BATTLE_10013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_10013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end