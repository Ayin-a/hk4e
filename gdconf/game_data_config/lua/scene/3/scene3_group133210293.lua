-- 基础信息
local base_info = {
	group_id = 133210293
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
	{ config_id = 293001, gadget_id = 70350292, pos = { x = -3744.513, y = 124.741, z = -991.867 }, rot = { x = 0.000, y = 151.142, z = 0.000 }, level = 30, route_id = 321000064, area_id = 17 },
	{ config_id = 293002, gadget_id = 70350292, pos = { x = -3819.389, y = 124.741, z = -989.678 }, rot = { x = 0.000, y = 151.142, z = 0.000 }, level = 30, route_id = 321000065, area_id = 17 }
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
			{ config_id = 293001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 321000064, route_index = 0, is_started = true } },
			{ config_id = 293002, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 321000065, route_index = 0, is_started = true } }
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