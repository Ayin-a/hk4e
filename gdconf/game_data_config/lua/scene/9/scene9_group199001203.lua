-- 基础信息
local base_info = {
	group_id = 199001203
}

-- Trigger变量
local defs = {
	point = 0
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
	{ config_id = 1, name = "Stone", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 203001, gadget_id = 70500054, pos = { x = 703.019, y = 121.279, z = -568.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
		{ config_id = 203015, gadget_id = 70500053, pos = { x = 702.960, y = 120.611, z = -568.589 }, rot = { x = 0.000, y = 130.502, z = 0.000 }, level = 20, arguments = { 40 }, is_use_point_array = true, area_id = 401 }
	},
	triggers = {
		{ config_id = 1203002, name = "GADGET_CREATE_203002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_203002", action = "action_EVENT_GADGET_CREATE_203002" }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================