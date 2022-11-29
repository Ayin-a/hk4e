-- 基础信息
local base_info = {
	group_id = 177008016
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
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 16001, gadget_id = 70350292, pos = { x = -202.450, y = 254.944, z = 437.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true, area_id = 210 },
		{ config_id = 16003, gadget_id = 70350292, pos = { x = -187.812, y = 242.634, z = 485.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true, area_id = 210 }
	},
	triggers = {
		{ config_id = 1016004, name = "PLATFORM_REACH_POINT_16004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "", trigger_count = 0 },
		{ config_id = 1016005, name = "AVATAR_NEAR_PLATFORM_16005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 1, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================