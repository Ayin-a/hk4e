-- 基础信息
local base_info = {
	group_id = 155008165
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
		{ config_id = 165001, gadget_id = 70211101, pos = { x = -291.244, y = 212.470, z = 404.147 }, rot = { x = 9.621, y = 336.750, z = 359.625 }, level = 16, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 165002, gadget_id = 70350093, pos = { x = -144.368, y = 192.655, z = 339.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
		{ config_id = 165003, gadget_id = 70360001, pos = { x = -144.368, y = 193.620, z = 339.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
		{ config_id = 165004, gadget_id = 70290150, pos = { x = -160.764, y = 191.041, z = 345.909 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165005, gadget_id = 70290150, pos = { x = -168.624, y = 189.348, z = 341.628 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165006, gadget_id = 70290150, pos = { x = -177.623, y = 188.687, z = 341.879 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165007, gadget_id = 70290150, pos = { x = -200.251, y = 189.161, z = 346.041 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165008, gadget_id = 70290150, pos = { x = -210.947, y = 193.967, z = 349.760 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165009, gadget_id = 70290150, pos = { x = -221.611, y = 198.842, z = 356.915 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165010, gadget_id = 70290150, pos = { x = -228.303, y = 202.149, z = 361.869 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165011, gadget_id = 70290150, pos = { x = -231.685, y = 204.941, z = 368.304 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165012, gadget_id = 70690028, pos = { x = -146.585, y = 193.497, z = 346.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 500800040, start_route = false, area_id = 200 },
		{ config_id = 165013, gadget_id = 70690030, pos = { x = -146.585, y = 193.497, z = 346.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165014, gadget_id = 70290231, pos = { x = -144.368, y = 192.655, z = 339.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165025, gadget_id = 70290150, pos = { x = -236.677, y = 209.528, z = 376.337 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165026, gadget_id = 70290150, pos = { x = -241.047, y = 213.332, z = 384.485 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165027, gadget_id = 70290150, pos = { x = -248.549, y = 219.158, z = 395.580 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165028, gadget_id = 70290150, pos = { x = -264.080, y = 223.596, z = 408.487 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 165029, gadget_id = 70290150, pos = { x = -276.886, y = 221.032, z = 408.325 }, rot = { x = 0.000, y = 57.923, z = 0.000 }, level = 36, area_id = 200 }
	},
	regions = {
		{ config_id = 165023, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = -146.585, y = 196.497, z = 346.259 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1165015, name = "CHALLENGE_SUCCESS_165015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_165015", trigger_count = 0 },
		{ config_id = 1165016, name = "CHALLENGE_FAIL_165016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_165016", trigger_count = 0 },
		{ config_id = 1165017, name = "GADGET_STATE_CHANGE_165017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165017", action = "action_EVENT_GADGET_STATE_CHANGE_165017", trigger_count = 0 },
		{ config_id = 1165018, name = "GADGET_STATE_CHANGE_165018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165018", action = "action_EVENT_GADGET_STATE_CHANGE_165018", trigger_count = 0 },
		{ config_id = 1165019, name = "GADGET_CREATE_165019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_165019", action = "action_EVENT_GADGET_CREATE_165019", trigger_count = 0 },
		{ config_id = 1165020, name = "SELECT_OPTION_165020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165020", action = "action_EVENT_SELECT_OPTION_165020", trigger_count = 0 },
		{ config_id = 1165021, name = "GROUP_LOAD_165021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_165021", trigger_count = 0 },
		{ config_id = 1165022, name = "VARIABLE_CHANGE_165022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_165022", action = "action_EVENT_VARIABLE_CHANGE_165022", trigger_count = 0 },
		{ config_id = 1165023, name = "ENTER_REGION_165023", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_165023", action = "action_EVENT_ENTER_REGION_165023", trigger_count = 0 },
		{ config_id = 1165024, name = "ANY_GADGET_DIE_165024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" }
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
	end_suite = 2,
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================