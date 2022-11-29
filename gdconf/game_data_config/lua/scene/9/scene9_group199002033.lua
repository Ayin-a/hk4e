-- 基础信息
local base_info = {
	group_id = 199002033
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
		{ config_id = 33002, gadget_id = 70950145, pos = { x = 478.236, y = 120.000, z = -102.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
	},
	regions = {
		{ config_id = 33001, shape = RegionShape.SPHERE, radius = 15, pos = { x = 477.763, y = 120.000, z = -101.030 }, area_id = 402 }
	},
	triggers = {
		{ config_id = 1033001, name = "ENTER_REGION_33001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_33001", action = "action_EVENT_ENTER_REGION_33001", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================