-- 基础信息
local base_info = {
	group_id = 133310260
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133310260,
	collectable_sum = 6
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
		{ config_id = 260001, gadget_id = 70211101, pos = { x = -2579.320, y = 153.877, z = 4983.362 }, rot = { x = 0.000, y = 288.733, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
		{ config_id = 260002, gadget_id = 70330343, pos = { x = -2572.310, y = 154.179, z = 4979.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
		{ config_id = 260003, gadget_id = 70360001, pos = { x = -2572.310, y = 155.369, z = 4979.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 260004, gadget_id = 70290501, pos = { x = -2581.520, y = 154.533, z = 4989.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 260005, gadget_id = 70290501, pos = { x = -2584.310, y = 153.923, z = 4988.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 260006, gadget_id = 70290501, pos = { x = -2578.614, y = 153.539, z = 4999.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 260007, gadget_id = 70290501, pos = { x = -2572.959, y = 154.094, z = 4995.835 }, rot = { x = 1.917, y = 2.397, z = 354.133 }, level = 32, area_id = 27 },
		{ config_id = 260008, gadget_id = 70290501, pos = { x = -2577.177, y = 159.725, z = 4992.934 }, rot = { x = 23.831, y = 357.978, z = 24.732 }, level = 32, area_id = 27 },
		{ config_id = 260009, gadget_id = 70290501, pos = { x = -2565.676, y = 152.975, z = 4994.129 }, rot = { x = 356.854, y = 11.880, z = 354.892 }, level = 32, area_id = 27 }
	},
	triggers = {
		{ config_id = 1260012, name = "CHALLENGE_SUCCESS_260012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_260012", trigger_count = 0 },
		{ config_id = 1260013, name = "CHALLENGE_FAIL_260013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_260013", trigger_count = 0 },
		{ config_id = 1260014, name = "GADGET_STATE_CHANGE_260014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_260014", action = "action_EVENT_GADGET_STATE_CHANGE_260014", trigger_count = 0 },
		{ config_id = 1260015, name = "ANY_GADGET_DIE_260015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1260016, name = "GADGET_CREATE_260016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_260016", action = "action_EVENT_GADGET_CREATE_260016", trigger_count = 0 },
		{ config_id = 1260017, name = "SELECT_OPTION_260017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_260017", action = "action_EVENT_SELECT_OPTION_260017", trigger_count = 0 },
		{ config_id = 1260018, name = "GROUP_LOAD_260018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_260018", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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