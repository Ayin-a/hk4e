-- 基础信息
local base_info = {
	group_id = 133212110
}

-- Trigger变量
local defs = {
	point_sum = 13,
	route_2 = 321200048,
	gadget_seelie = 110002
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
		{ config_id = 110001, gadget_id = 70710006, pos = { x = -4163.996, y = 198.662, z = -2577.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 13 },
		{ config_id = 110002, gadget_id = 70710010, pos = { x = -4114.129, y = 205.081, z = -2632.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 321200049, area_id = 13 },
		{ config_id = 110003, gadget_id = 70710007, pos = { x = -4162.457, y = 198.662, z = -2580.382 }, rot = { x = 0.000, y = 338.133, z = 0.000 }, level = 32, area_id = 13 },
		{ config_id = 110004, gadget_id = 70211111, pos = { x = -4164.968, y = 198.662, z = -2577.969 }, rot = { x = 8.419, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
	},
	regions = {
		{ config_id = 110007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -4114.574, y = 205.014, z = -2632.757 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1110005, name = "PLATFORM_REACH_POINT_110005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_110005", action = "action_EVENT_PLATFORM_REACH_POINT_110005", trigger_count = 0 },
		{ config_id = 1110006, name = "AVATAR_NEAR_PLATFORM_110006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_110006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_110006", trigger_count = 0 },
		{ config_id = 1110007, name = "ENTER_REGION_110007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110007", action = "action_EVENT_ENTER_REGION_110007", trigger_count = 0 },
		{ config_id = 1110008, name = "GADGET_STATE_CHANGE_110008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_110008", action = "action_EVENT_GADGET_STATE_CHANGE_110008" },
		{ config_id = 1110009, name = "GADGET_CREATE_110009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_110009", action = "action_EVENT_GADGET_CREATE_110009", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================