-- 基础信息
local base_info = {
	group_id = 133301580
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
	{ config_id = 1, name = "teleport", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 580002, shape = RegionShape.POLYGON, pos = { x = -722.938, y = -134.073, z = 3941.485 }, height = 73.653, point_array = { { x = -764.028, y = 3793.265 }, { x = -697.064, y = 3780.015 }, { x = -636.935, y = 3845.597 }, { x = -573.682, y = 3996.662 }, { x = -574.961, y = 4101.460 }, { x = -779.460, y = 4102.955 }, { x = -872.195, y = 3920.387 }, { x = -833.575, y = 3849.346 } }, area_id = 25 }
	},
	triggers = {
		{ config_id = 1580001, name = "QUEST_START_580001", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_580001" },
		{ config_id = 1580002, name = "LEAVE_REGION_580002", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_580002" },
		{ config_id = 1580003, name = "GROUP_REFRESH_580003", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_580003", action = "" }
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

require "V3_0/DeathFieldStandard"