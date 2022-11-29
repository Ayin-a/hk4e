-- 基础信息
local base_info = {
	group_id = 133309308
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330900131,
	gadget_seelie = 308002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
		{ config_id = 308001, gadget_id = 70330331, pos = { x = -2108.070, y = -19.625, z = 5355.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 308002, gadget_id = 70710010, pos = { x = -2052.424, y = -42.781, z = 5454.722 }, rot = { x = 0.000, y = 178.065, z = 0.000 }, level = 32, route_id = 330900132, area_id = 27 },
		{ config_id = 308003, gadget_id = 70710007, pos = { x = -2107.807, y = -18.920, z = 5356.384 }, rot = { x = 357.978, y = 17.462, z = 5.087 }, level = 32, area_id = 27 },
		{ config_id = 308004, gadget_id = 70211101, pos = { x = -2105.402, y = -18.000, z = 5355.365 }, rot = { x = 9.974, y = 5.942, z = 9.621 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
	},
	regions = {
		{ config_id = 308007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2050.623, y = -41.969, z = 5455.686 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1308005, name = "PLATFORM_ARRIVAL_308005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_308005", action = "action_EVENT_PLATFORM_ARRIVAL_308005", trigger_count = 0 },
		{ config_id = 1308006, name = "AVATAR_NEAR_PLATFORM_308006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_308006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_308006", trigger_count = 0 },
		{ config_id = 1308007, name = "ENTER_REGION_308007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_308007", action = "action_EVENT_ENTER_REGION_308007", trigger_count = 0 },
		{ config_id = 1308008, name = "GADGET_STATE_CHANGE_308008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308008", action = "action_EVENT_GADGET_STATE_CHANGE_308008" },
		{ config_id = 1308009, name = "GADGET_CREATE_308009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_308009", action = "action_EVENT_GADGET_CREATE_308009", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================