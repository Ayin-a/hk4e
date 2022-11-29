-- 基础信息
local base_info = {
	group_id = 133102269
}

-- Trigger变量
local defs = {
	box_1 = 1037,
	box_2 = 1038,
	box_3 = 1039,
	box_4 = 1041,
	box_5 = 1042,
	box_6 = 1043,
	box_7 = 0
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
	{ config_id = 1036, gadget_id = 70900007, pos = { x = 1690.796, y = 212.801, z = 155.297 }, rot = { x = 351.580, y = 321.354, z = 355.290 }, level = 16, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "destroycount", value = 0, no_refresh = false },
	{ config_id = 2, name = "isFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1040, gadget_id = 70211111, pos = { x = 1689.882, y = 212.958, z = 158.723 }, rot = { x = 357.344, y = 180.847, z = 9.843 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
		{ config_id = 1044, gadget_id = 70900201, pos = { x = 1701.094, y = 218.678, z = 176.601 }, rot = { x = 11.294, y = 1.643, z = 358.852 }, level = 16, area_id = 5 },
		{ config_id = 1046, gadget_id = 70900201, pos = { x = 1705.266, y = 220.318, z = 164.146 }, rot = { x = 350.910, y = 359.868, z = 1.661 }, level = 16, area_id = 5 },
		{ config_id = 1048, gadget_id = 70900201, pos = { x = 1696.003, y = 212.706, z = 165.922 }, rot = { x = 6.285, y = 213.949, z = 1.852 }, level = 16, area_id = 5 }
	},
	triggers = {
		{ config_id = 1000511, name = "GADGET_STATE_CHANGE_511", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_511", action = "action_EVENT_GADGET_STATE_CHANGE_511", trigger_count = 0 },
		{ config_id = 1000512, name = "ANY_GADGET_DIE_512", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_512", action = "", trigger_count = 0, tag = "324" },
		{ config_id = 1000513, name = "CHALLENGE_SUCCESS_513", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_513" },
		{ config_id = 1000514, name = "CHALLENGE_FAIL_514", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_514", trigger_count = 0 },
		{ config_id = 1000515, name = "ANY_GADGET_DIE_515", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_515", action = "action_EVENT_ANY_GADGET_DIE_515", trigger_count = 0, tag = "324" },
		{ config_id = 1000516, name = "ANY_GADGET_DIE_516", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_516", action = "action_EVENT_ANY_GADGET_DIE_516", trigger_count = 0, tag = "324" },
		{ config_id = 1000517, name = "ANY_GADGET_DIE_517", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_517", action = "action_EVENT_ANY_GADGET_DIE_517", trigger_count = 0, tag = "324" },
		{ config_id = 1269001, name = "GADGET_CREATE_269001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_269001", action = "action_EVENT_GADGET_CREATE_269001", trigger_count = 0 }
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
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
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