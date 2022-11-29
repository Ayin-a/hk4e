-- 基础信息
local base_info = {
	group_id = 155002013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
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
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 13002, gadget_id = 70350093, pos = { x = 1356.716, y = 241.615, z = 678.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
		{ config_id = 13003, gadget_id = 70360001, pos = { x = 1356.716, y = 242.580, z = 678.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
		{ config_id = 13004, gadget_id = 70290150, pos = { x = 1355.106, y = 241.567, z = 683.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 13005, gadget_id = 70290150, pos = { x = 1359.707, y = 241.586, z = 684.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 13006, gadget_id = 70290150, pos = { x = 1367.873, y = 239.358, z = 686.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 13007, gadget_id = 70290150, pos = { x = 1378.829, y = 238.929, z = 689.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 13008, gadget_id = 70290150, pos = { x = 1377.417, y = 238.727, z = 696.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 13009, gadget_id = 70290150, pos = { x = 1376.539, y = 238.685, z = 701.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 13010, gadget_id = 70290150, pos = { x = 1375.481, y = 238.777, z = 706.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 13011, gadget_id = 70290150, pos = { x = 1374.772, y = 238.702, z = 711.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 13016, gadget_id = 70211101, pos = { x = 1342.147, y = 238.910, z = 699.300 }, rot = { x = 0.000, y = 76.075, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 13019, gadget_id = 70290150, pos = { x = 1373.061, y = 238.764, z = 718.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13020, gadget_id = 70290150, pos = { x = 1368.314, y = 238.689, z = 717.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13021, gadget_id = 70290150, pos = { x = 1363.326, y = 238.928, z = 716.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13022, gadget_id = 70290150, pos = { x = 1358.388, y = 238.905, z = 715.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13023, gadget_id = 70290150, pos = { x = 1353.574, y = 238.929, z = 714.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13024, gadget_id = 70290150, pos = { x = 1348.668, y = 238.875, z = 713.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13025, gadget_id = 70290150, pos = { x = 1343.701, y = 238.819, z = 712.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13026, gadget_id = 70290150, pos = { x = 1344.686, y = 238.875, z = 707.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13027, gadget_id = 70290150, pos = { x = 1346.330, y = 238.961, z = 700.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 13032, gadget_id = 70350093, pos = { x = 1356.716, y = 241.615, z = 678.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 200 }
	},
	regions = {
		{ config_id = 13028, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1347.841, y = 239.433, z = 678.970 }, area_id = 200 },
		{ config_id = 13029, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1345.244, y = 233.278, z = 682.444 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1013001, name = "VARIABLE_CHANGE_13001", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_13001", action = "action_EVENT_VARIABLE_CHANGE_13001", trigger_count = 0 },
		{ config_id = 1013012, name = "CHALLENGE_SUCCESS_13012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "condition_EVENT_CHALLENGE_SUCCESS_13012", action = "action_EVENT_CHALLENGE_SUCCESS_13012", trigger_count = 0 },
		{ config_id = 1013013, name = "CHALLENGE_FAIL_13013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_13013", trigger_count = 0 },
		{ config_id = 1013014, name = "GADGET_STATE_CHANGE_13014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13014", action = "action_EVENT_GADGET_STATE_CHANGE_13014", trigger_count = 0 },
		{ config_id = 1013015, name = "ANY_GADGET_DIE_13015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1013017, name = "SELECT_OPTION_13017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13017", action = "action_EVENT_SELECT_OPTION_13017", trigger_count = 0 },
		{ config_id = 1013018, name = "GROUP_LOAD_13018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_13018", trigger_count = 0 },
		{ config_id = 1013028, name = "ENTER_REGION_13028", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_13028", action = "action_EVENT_ENTER_REGION_13028", trigger_count = 0 },
		{ config_id = 1013029, name = "ENTER_REGION_13029", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_13029", action = "action_EVENT_ENTER_REGION_13029", trigger_count = 0 },
		{ config_id = 1013030, name = "GADGET_CREATE_13030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13030", action = "action_EVENT_GADGET_CREATE_13030", trigger_count = 0 }
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
	end_suite = 4,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 4,
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