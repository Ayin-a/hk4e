-- 基础信息
local base_info = {
	group_id = 133310142
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
	{ config_id = 142001, gadget_id = 70330347, pos = { x = -2939.429, y = 297.746, z = 4732.397 }, rot = { x = 0.000, y = 354.323, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 28 },
	{ config_id = 142002, gadget_id = 70330348, pos = { x = -2939.429, y = 297.746, z = 4732.397 }, rot = { x = 0.000, y = 354.323, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 28 },
	{ config_id = 142003, gadget_id = 70330461, pos = { x = -2920.474, y = 297.600, z = 4734.529 }, rot = { x = 0.000, y = 61.070, z = 0.000 }, level = 32, route_id = 331000086, area_id = 28 },
	{ config_id = 142004, gadget_id = 70330414, pos = { x = -2954.000, y = 297.000, z = 4731.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 28 }
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
			{ config_id = 142001, state = 0 },
			{ config_id = 142004, state = 0 }
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
			{ config_id = 142002, state = 0 },
			{ config_id = 142003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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