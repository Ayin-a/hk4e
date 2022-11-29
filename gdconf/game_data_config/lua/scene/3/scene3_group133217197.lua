-- 基础信息
local base_info = {
	group_id = 133217197
}

-- Trigger变量
local defs = {
	duration = 45,
	group_id = 133217197,
	collectable_sum = 11
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
		{ config_id = 197001, gadget_id = 70211101, pos = { x = -4912.539, y = 259.942, z = -3749.987 }, rot = { x = 6.642, y = 184.351, z = 346.759 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 197002, gadget_id = 70350093, pos = { x = -5041.454, y = 199.428, z = -3805.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
		{ config_id = 197003, gadget_id = 70360001, pos = { x = -5041.454, y = 200.393, z = -3805.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
		{ config_id = 197004, gadget_id = 70290150, pos = { x = -5041.203, y = 200.422, z = -3810.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197005, gadget_id = 70290150, pos = { x = -5038.676, y = 201.450, z = -3815.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197006, gadget_id = 70290150, pos = { x = -5018.979, y = 215.392, z = -3797.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197007, gadget_id = 70290150, pos = { x = -4977.845, y = 233.769, z = -3751.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197008, gadget_id = 70290150, pos = { x = -4919.720, y = 244.726, z = -3738.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197009, gadget_id = 70290150, pos = { x = -4918.637, y = 266.443, z = -3742.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197010, gadget_id = 70290150, pos = { x = -4891.756, y = 274.893, z = -3755.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197011, gadget_id = 70290150, pos = { x = -4890.201, y = 272.281, z = -3758.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197018, gadget_id = 70290150, pos = { x = -4901.932, y = 266.229, z = -3762.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197019, gadget_id = 70290150, pos = { x = -4906.471, y = 262.689, z = -3754.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 197020, gadget_id = 70290150, pos = { x = -4911.152, y = 260.790, z = -3751.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1197012, name = "CHALLENGE_SUCCESS_197012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_197012", trigger_count = 0 },
		{ config_id = 1197013, name = "CHALLENGE_FAIL_197013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_197013", trigger_count = 0 },
		{ config_id = 1197014, name = "GADGET_STATE_CHANGE_197014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197014", action = "action_EVENT_GADGET_STATE_CHANGE_197014", trigger_count = 0 },
		{ config_id = 1197015, name = "ANY_GADGET_DIE_197015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1197016, name = "GADGET_CREATE_197016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_197016", action = "action_EVENT_GADGET_CREATE_197016", trigger_count = 0 },
		{ config_id = 1197017, name = "SELECT_OPTION_197017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_197017", action = "action_EVENT_SELECT_OPTION_197017", trigger_count = 0 },
		{ config_id = 1197021, name = "GADGET_STATE_CHANGE_197021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197021", action = "action_EVENT_GADGET_STATE_CHANGE_197021" },
		{ config_id = 1197022, name = "GROUP_LOAD_197022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_197022", trigger_count = 0 }
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
	end_suite = 3,
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