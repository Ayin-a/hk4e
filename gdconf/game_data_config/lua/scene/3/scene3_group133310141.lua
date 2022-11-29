-- 基础信息
local base_info = {
	group_id = 133310141
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
	{ config_id = 141001, gadget_id = 70330345, pos = { x = -2405.121, y = 185.635, z = 4544.373 }, rot = { x = 1.309, y = 3.548, z = 0.081 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 },
	{ config_id = 141002, gadget_id = 70330346, pos = { x = -2401.242, y = 185.630, z = 4548.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 },
	{ config_id = 141003, gadget_id = 70330461, pos = { x = -2381.717, y = 184.800, z = 4591.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000085, persistent = true, area_id = 26 },
	{ config_id = 141004, gadget_id = 70330413, pos = { x = -2406.750, y = 184.524, z = 4547.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 }
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
			{ config_id = 141001, state = 0 },
			{ config_id = 141004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 141002, state = 0 },
			{ config_id = 141003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================