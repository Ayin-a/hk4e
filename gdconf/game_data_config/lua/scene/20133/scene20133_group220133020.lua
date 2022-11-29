-- 基础信息
local base_info = {
	group_id = 220133020
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
		{ config_id = 20001, gadget_id = 70310206, pos = { x = 232.589, y = 134.525, z = 2073.222 }, rot = { x = 0.000, y = 298.598, z = 0.000 }, level = 1 },
		{ config_id = 20003, gadget_id = 70310206, pos = { x = 254.527, y = 140.541, z = 2075.380 }, rot = { x = 0.000, y = 62.820, z = 0.000 }, level = 1 },
		{ config_id = 20005, gadget_id = 70310206, pos = { x = 282.204, y = 147.452, z = 2080.895 }, rot = { x = 0.000, y = 146.408, z = 0.000 }, level = 1 },
		{ config_id = 20007, gadget_id = 70310206, pos = { x = 291.018, y = 150.173, z = 2052.993 }, rot = { x = 0.000, y = 348.640, z = 0.000 }, level = 1 },
		{ config_id = 20009, gadget_id = 70310206, pos = { x = 299.218, y = 150.583, z = 2039.273 }, rot = { x = 0.000, y = 335.430, z = 0.000 }, level = 1 },
		{ config_id = 20011, gadget_id = 70310206, pos = { x = 294.443, y = 153.113, z = 2028.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
	},
	regions = {
		{ config_id = 20002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 233.317, y = 134.525, z = 2072.912 } },
		{ config_id = 20004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 254.527, y = 140.541, z = 2075.380 } },
		{ config_id = 20006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 282.204, y = 147.452, z = 2080.895 } },
		{ config_id = 20008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 291.018, y = 150.173, z = 2052.993 } },
		{ config_id = 20010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 299.218, y = 150.583, z = 2039.273 } }
	},
	triggers = {
		{ config_id = 1020002, name = "ENTER_REGION_20002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20002", action = "action_EVENT_ENTER_REGION_20002" },
		{ config_id = 1020004, name = "ENTER_REGION_20004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20004", action = "action_EVENT_ENTER_REGION_20004" },
		{ config_id = 1020006, name = "ENTER_REGION_20006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20006", action = "action_EVENT_ENTER_REGION_20006" },
		{ config_id = 1020008, name = "ENTER_REGION_20008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20008", action = "action_EVENT_ENTER_REGION_20008" },
		{ config_id = 1020010, name = "ENTER_REGION_20010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20010", action = "action_EVENT_ENTER_REGION_20010" }
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
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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