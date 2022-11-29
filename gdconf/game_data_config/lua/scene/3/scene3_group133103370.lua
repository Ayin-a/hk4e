-- 基础信息
local base_info = {
	group_id = 133103370
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
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 370004, gadget_id = 70900039, pos = { x = 881.582, y = 323.340, z = 1515.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
		{ config_id = 370005, gadget_id = 70360025, pos = { x = 937.579, y = 329.327, z = 1652.252 }, rot = { x = 0.000, y = 110.999, z = 0.000 }, level = 1, area_id = 6 },
		{ config_id = 370012, gadget_id = 70211111, pos = { x = 938.561, y = 329.286, z = 1651.908 }, rot = { x = 0.000, y = 288.690, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
	},
	regions = {
		{ config_id = 370008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 937.875, y = 329.314, z = 1652.118 }, area_id = 6 },
		{ config_id = 370030, shape = RegionShape.SPHERE, radius = 3, pos = { x = 937.875, y = 329.314, z = 1652.118 }, area_id = 6 }
	},
	triggers = {
		{ config_id = 1370008, name = "ENTER_REGION_370008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370008", action = "", tag = "666" },
		{ config_id = 1370009, name = "CHALLENGE_SUCCESS_370009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_370009", trigger_count = 0 },
		{ config_id = 1370010, name = "CHALLENGE_FAIL_370010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_370010", trigger_count = 0 },
		{ config_id = 1370011, name = "GADGET_STATE_CHANGE_370011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_370011", action = "action_EVENT_GADGET_STATE_CHANGE_370011", trigger_count = 0 },
		{ config_id = 1370030, name = "ENTER_REGION_370030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370030", action = "action_EVENT_ENTER_REGION_370030", tag = "666" },
		{ config_id = 1370031, name = "GADGET_STATE_CHANGE_370031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_370031", action = "action_EVENT_GADGET_STATE_CHANGE_370031", trigger_count = 0 }
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