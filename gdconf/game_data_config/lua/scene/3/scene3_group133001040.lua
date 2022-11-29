-- 基础信息
local base_info = {
	group_id = 133001040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40025, monster_id = 21010901, pos = { x = 1552.878, y = 244.583, z = -1401.947 }, rot = { x = 0.000, y = 43.027, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 1030 }, area_id = 2 },
	{ config_id = 40027, monster_id = 21010901, pos = { x = 1554.494, y = 245.132, z = -1403.752 }, rot = { x = 0.000, y = 34.581, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, affix = { 1030 }, area_id = 2 },
	-- 护送丘丘人A
	{ config_id = 40028, monster_id = 21010201, pos = { x = 1513.098, y = 248.011, z = -1374.327 }, rot = { x = 0.000, y = 241.045, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 40029, monster_id = 21010701, pos = { x = 1472.447, y = 241.099, z = -1414.915 }, rot = { x = 5.836, y = 36.884, z = 1.358 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 40030, monster_id = 21010701, pos = { x = 1468.680, y = 240.747, z = -1411.386 }, rot = { x = 2.902, y = 84.879, z = 5.244 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 40041, monster_id = 21011001, pos = { x = 1447.066, y = 242.045, z = -1424.288 }, rot = { x = 0.000, y = 9.372, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 2 },
	-- 护送丘丘人B
	{ config_id = 40044, monster_id = 21010201, pos = { x = 1509.953, y = 247.781, z = -1372.261 }, rot = { x = 0.000, y = 232.524, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 40045, monster_id = 21030101, pos = { x = 1437.351, y = 241.944, z = -1414.951 }, rot = { x = 0.000, y = 96.176, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 40046, monster_id = 21010401, pos = { x = 1430.267, y = 241.850, z = -1426.318 }, rot = { x = 0.000, y = 79.589, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 40004, gadget_id = 70380004, pos = { x = 1637.984, y = 254.107, z = -1388.969 }, rot = { x = 0.000, y = 253.894, z = 0.000 }, level = 8, route_id = 300100391, start_route = false, persistent = true, area_id = 2 },
	{ config_id = 40005, gadget_id = 70360001, pos = { x = 1637.984, y = 253.613, z = -1388.969 }, rot = { x = 0.000, y = 253.894, z = 0.000 }, level = 1, area_id = 2 },
	-- 障碍物1
	{ config_id = 40006, gadget_id = 70300083, pos = { x = 1549.761, y = 243.735, z = -1398.146 }, rot = { x = 0.000, y = 52.299, z = 0.000 }, level = 1, area_id = 2 },
	-- 障碍物2
	{ config_id = 40008, gadget_id = 70300091, pos = { x = 1467.120, y = 239.621, z = -1408.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 40021, gadget_id = 70300076, pos = { x = 1437.525, y = 239.500, z = -1442.212 }, rot = { x = 358.518, y = 60.169, z = 4.884 }, level = 15, area_id = 2 },
	-- 使用GearStart让其可以被攻击
	{ config_id = 40023, gadget_id = 70710116, pos = { x = 1511.071, y = 249.046, z = -1373.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, state = GadgetState.GearStart, route_id = 300100392, area_id = 2 },
	{ config_id = 40026, gadget_id = 70300076, pos = { x = 1429.385, y = 238.830, z = -1436.113 }, rot = { x = 0.000, y = 201.545, z = 0.000 }, level = 15, area_id = 2 },
	-- 障碍物3
	{ config_id = 40032, gadget_id = 70300090, pos = { x = 1433.873, y = 238.970, z = -1438.423 }, rot = { x = 2.914, y = 303.838, z = 0.000 }, level = 15, area_id = 2 },
	-- 货车起飞
	{ config_id = 40033, gadget_id = 70220011, pos = { x = 1434.753, y = 238.881, z = -1431.088 }, rot = { x = 327.052, y = 28.796, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40040, gadget_id = 70310006, pos = { x = 1422.293, y = 241.953, z = -1419.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 40042, gadget_id = 70300084, pos = { x = 1420.859, y = 241.810, z = -1423.716 }, rot = { x = 0.000, y = 138.954, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40043, gadget_id = 70300084, pos = { x = 1424.711, y = 243.020, z = -1412.630 }, rot = { x = 0.000, y = 235.402, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40047, gadget_id = 71700226, pos = { x = 1407.254, y = 235.662, z = -1469.152 }, rot = { x = 0.000, y = 334.314, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40048, gadget_id = 70300092, pos = { x = 1406.887, y = 236.099, z = -1466.629 }, rot = { x = 353.179, y = 273.925, z = 1.786 }, level = 1, area_id = 2 },
	{ config_id = 40049, gadget_id = 70220048, pos = { x = 1408.790, y = 235.050, z = -1472.410 }, rot = { x = 355.437, y = 20.516, z = 358.469 }, level = 1, area_id = 2 },
	{ config_id = 40050, gadget_id = 70300104, pos = { x = 1418.035, y = 236.104, z = -1470.709 }, rot = { x = 0.000, y = 56.420, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40051, gadget_id = 70710126, pos = { x = 1411.408, y = 236.925, z = -1472.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40052, gadget_id = 70220062, pos = { x = 1407.000, y = 235.395, z = -1470.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40053, gadget_id = 70220062, pos = { x = 1405.622, y = 235.454, z = -1470.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40054, gadget_id = 71700226, pos = { x = 1411.346, y = 235.118, z = -1472.167 }, rot = { x = 0.000, y = 13.620, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40055, gadget_id = 70220048, pos = { x = 1411.979, y = 234.694, z = -1475.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40056, gadget_id = 70220062, pos = { x = 1415.115, y = 235.232, z = -1474.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40057, gadget_id = 70220063, pos = { x = 1415.526, y = 235.464, z = -1472.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40058, gadget_id = 70220064, pos = { x = 1416.377, y = 235.672, z = -1471.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40059, gadget_id = 70220064, pos = { x = 1414.234, y = 235.088, z = -1474.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 40062, gadget_id = 70690027, pos = { x = 1434.753, y = 238.881, z = -1431.088 }, rot = { x = 327.052, y = 28.796, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 到达-障碍物1-刷新monster1
	{ config_id = 1040001, name = "PLATFORM_REACH_POINT_40001", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40001", action = "action_EVENT_PLATFORM_REACH_POINT_40001" },
	-- 停止-障碍物1
	{ config_id = 1040002, name = "PLATFORM_REACH_POINT_40002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40002", action = "action_EVENT_PLATFORM_REACH_POINT_40002" },
	-- 破坏-障碍物1
	{ config_id = 1040003, name = "ANY_GADGET_DIE_40003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40003", action = "action_EVENT_ANY_GADGET_DIE_40003" },
	-- 通行-障碍物1
	{ config_id = 1040007, name = "VARIABLE_CHANGE_40007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_40007", action = "action_EVENT_VARIABLE_CHANGE_40007" },
	-- 创建交互按钮
	{ config_id = 1040009, name = "GADGET_CREATE_40009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_40009", action = "action_EVENT_GADGET_CREATE_40009", trigger_count = 0 },
	-- 启动按钮--创建路障和triggerSuit
	{ config_id = 1040010, name = "SELECT_OPTION_40010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40010", action = "action_EVENT_SELECT_OPTION_40010", trigger_count = 0 },
	-- 刷monster3-到达point18
	{ config_id = 1040012, name = "PLATFORM_REACH_POINT_40012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40012", action = "action_EVENT_PLATFORM_REACH_POINT_40012", trigger_count = 0 },
	-- 任务失败-p-货车死-仅通知05fail
	{ config_id = 1040014, name = "ANY_GADGET_DIE_40014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40014", action = "action_EVENT_ANY_GADGET_DIE_40014", trigger_count = 0 },
	-- 到达-障碍物2
	{ config_id = 1040015, name = "PLATFORM_REACH_POINT_40015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40015", action = "action_EVENT_PLATFORM_REACH_POINT_40015" },
	-- 停止-障碍物2
	{ config_id = 1040016, name = "PLATFORM_REACH_POINT_40016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40016", action = "action_EVENT_PLATFORM_REACH_POINT_40016" },
	-- 破坏-障碍物2
	{ config_id = 1040017, name = "ANY_GADGET_DIE_40017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40017", action = "action_EVENT_ANY_GADGET_DIE_40017" },
	-- 通行-障碍物2
	{ config_id = 1040018, name = "VARIABLE_CHANGE_40018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_40018", action = "action_EVENT_VARIABLE_CHANGE_40018" },
	-- 任务成功-p-货车到达point27-do-reminder/任务进度/停史莱姆热气球
	{ config_id = 1040019, name = "PLATFORM_REACH_POINT_40019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40019", action = "action_EVENT_PLATFORM_REACH_POINT_40019", trigger_count = 0 },
	-- 风琥珀死，风场创生
	{ config_id = 1040020, name = "ANY_GADGET_DIE_40020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40020", action = "action_EVENT_ANY_GADGET_DIE_40020", trigger_count = 0 },
	-- 当货车通行障碍物1时，创建and启动：史莱姆热气球
	{ config_id = 1040022, name = "VARIABLE_CHANGE_40022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_40022", action = "action_EVENT_VARIABLE_CHANGE_40022", trigger_count = 0 },
	-- 激活reminder
	{ config_id = 1040024, name = "PLATFORM_REACH_POINT_40024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40024", action = "action_EVENT_PLATFORM_REACH_POINT_40024", trigger_count = 0 },
	-- 到达-障碍物3
	{ config_id = 1040034, name = "PLATFORM_REACH_POINT_40034", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40034", action = "action_EVENT_PLATFORM_REACH_POINT_40034" },
	-- 停止-障碍物3
	{ config_id = 1040035, name = "PLATFORM_REACH_POINT_40035", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40035", action = "action_EVENT_PLATFORM_REACH_POINT_40035" },
	-- 破坏-障碍物3
	{ config_id = 1040036, name = "ANY_GADGET_DIE_40036", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40036", action = "action_EVENT_ANY_GADGET_DIE_40036" },
	-- 通行-障碍物3
	{ config_id = 1040037, name = "VARIABLE_CHANGE_40037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_40037", action = "action_EVENT_VARIABLE_CHANGE_40037" },
	-- 任务失败-p-丘丘人热气球先到-do-任务进度/reminder
	{ config_id = 1040038, name = "PLATFORM_REACH_POINT_40038", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40038", action = "action_EVENT_PLATFORM_REACH_POINT_40038", trigger_count = 0 },
	-- 刷monster2-到达point12
	{ config_id = 1040039, name = "PLATFORM_REACH_POINT_40039", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40039", action = "action_EVENT_PLATFORM_REACH_POINT_40039", trigger_count = 0 },
	-- 史莱姆热气球摧毁时的reminder
	{ config_id = 1040060, name = "ANY_GADGET_DIE_40060", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40060", action = "action_EVENT_ANY_GADGET_DIE_40060", trigger_count = 0 },
	{ config_id = 1040061, name = "QUEST_START_40061", event = EventType.EVENT_QUEST_START, source = "7050105", condition = "", action = "action_EVENT_QUEST_START_40061", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasReachedO1", value = 0, no_refresh = false },
	{ config_id = 2, name = "isO1Available", value = 1, no_refresh = false },
	{ config_id = 3, name = "hasReachedO2", value = 0, no_refresh = false },
	{ config_id = 4, name = "isO2Available", value = 1, no_refresh = false },
	{ config_id = 5, name = "hasReachedO3", value = 0, no_refresh = false },
	{ config_id = 6, name = "isO3Available", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 40031, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1581.620, y = 247.296, z = -1393.955 }, area_id = 2 }
	},
	triggers = {
		{ config_id = 1040011, name = "CHALLENGE_SUCCESS_40011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_40011", trigger_count = 0 },
		{ config_id = 1040013, name = "CHALLENGE_FAIL_40013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_40013", trigger_count = 0 },
		{ config_id = 1040031, name = "ENTER_REGION_40031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40031", action = "action_EVENT_ENTER_REGION_40031" }
	}
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
		monsters = { },
		gadgets = { 40047, 40048, 40049, 40050, 40051, 40052, 40053, 40054, 40055, 40056, 40057, 40058, 40059 },
		regions = { },
		triggers = { "GADGET_CREATE_40009", "SELECT_OPTION_40010", "PLATFORM_REACH_POINT_40012", "ANY_GADGET_DIE_40014", "PLATFORM_REACH_POINT_40015", "PLATFORM_REACH_POINT_40016", "ANY_GADGET_DIE_40017", "VARIABLE_CHANGE_40018", "PLATFORM_REACH_POINT_40019", "VARIABLE_CHANGE_40022", "PLATFORM_REACH_POINT_40024", "PLATFORM_REACH_POINT_40034", "PLATFORM_REACH_POINT_40035", "ANY_GADGET_DIE_40036", "VARIABLE_CHANGE_40037", "PLATFORM_REACH_POINT_40038", "PLATFORM_REACH_POINT_40039", "ANY_GADGET_DIE_40060", "QUEST_START_40061" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 【空suit】作为endSuit,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 【史莱姆气球suit】,
		monsters = { 40028, 40044 },
		gadgets = { 40023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 【障碍物suit】,
		monsters = { 40025, 40027 },
		gadgets = { 40006, 40008, 40021, 40026, 40032, 40033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 【障碍物1】,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_40001", "PLATFORM_REACH_POINT_40002", "ANY_GADGET_DIE_40003", "VARIABLE_CHANGE_40007" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 【障碍物2】,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_40015", "PLATFORM_REACH_POINT_40016", "ANY_GADGET_DIE_40017", "VARIABLE_CHANGE_40018" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 【障碍物3】,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_40020", "PLATFORM_REACH_POINT_40034", "PLATFORM_REACH_POINT_40035", "ANY_GADGET_DIE_40036", "VARIABLE_CHANGE_40037" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 【monster1】,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 【monster2】,
		monsters = { 40029, 40030 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 【monster3】,
		monsters = { 40041, 40045, 40046 },
		gadgets = { 40040, 40042, 40043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 【货车suit】,
		monsters = { },
		gadgets = { 40004, 40005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 40062 },
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
function condition_EVENT_PLATFORM_REACH_POINT_40001(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 8 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40001(context, evt)
	-- 将本组内变量名为 "hasReachedO1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedO1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40002(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 8 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isO1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isO1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40002(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 40004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40003(context, evt)
	if 40006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40003(context, evt)
	-- 将本组内变量名为 "isO1Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isO1Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedO1"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedO1") ~= 1 then
			return false
	end
	
	-- 判断变量"isO1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isO1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40007(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 40004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_40009(context, evt)
	if 40005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_40009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133001040, 40005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_40010(context, evt)
	-- 判断是gadgetid 40005 option_id 7
	if 40005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_40010(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 40004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 7)
	
	-- 将configid为 40004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40012(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 18 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40012(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40014(context, evt)
	if 40004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050105fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40015(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 16 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40015(context, evt)
	-- 将本组内变量名为 "hasReachedO2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedO2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40016(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 16 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isO2Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isO2Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40016(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 40004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40017(context, evt)
	if 40008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40017(context, evt)
	-- 将本组内变量名为 "isO2Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isO2Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedO2"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedO2") ~= 1 then
			return false
	end
	
	-- 判断变量"isO2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isO2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40018(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 40004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40019(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 27 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40051 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 70501061 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 70501061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050105finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 40023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40020(context, evt)
	if 40033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40020(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedO1"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedO1") ~= 1 then
			return false
	end
	
	-- 判断变量"isO1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isO1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 40023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40024(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 9 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40024(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1500.512,y=241.6388,z=-1389.868}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 70501051, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40034(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 22 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40034(context, evt)
	-- 将本组内变量名为 "hasReachedO3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedO3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40035(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 22 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isO3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isO3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40035(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 40004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40036(context, evt)
	if 40033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40036(context, evt)
	-- 将本组内变量名为 "isO3Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isO3Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedO3"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedO3") ~= 1 then
			return false
	end
	
	-- 判断变量"isO3Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isO3Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40037(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 40004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40038(context, evt)
	-- 判断是gadgetid 为 40023的移动平台，是否到达了300100392 的路线中的 17 点
	
	if 40023 ~= evt.param1 then
	  return false
	end
	
	if 300100392 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40038(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050105finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 70501063 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 70501063) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40039(context, evt)
	-- 判断是gadgetid 为 40004的移动平台，是否到达了300100391 的路线中的 12 点
	
	if 40004 ~= evt.param1 then
	  return false
	end
	
	if 300100391 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40039(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40060(context, evt)
	if 40023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40060(context, evt)
	-- 调用提示id为 70501062 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 70501062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_40061(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001040, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001040, 11)
	
	return 0
end