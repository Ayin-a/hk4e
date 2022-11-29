-- 基础信息
local base_info = {
	group_id = 133309548
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
	{ config_id = 548001, gadget_id = 70330434, pos = { x = -2380.331, y = -3.157, z = 5377.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 548002, gadget_id = 70690001, pos = { x = -2380.331, y = 19.879, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 548003, gadget_id = 70690001, pos = { x = -2380.331, y = 31.540, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 548004, gadget_id = 70690001, pos = { x = -2380.331, y = 43.079, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 548005, gadget_id = 70220103, pos = { x = -2380.581, y = 4.560, z = 5378.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 548007, gadget_id = 70690001, pos = { x = -2380.331, y = 53.770, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 548011, gadget_id = 70690001, pos = { x = -2380.331, y = 65.216, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
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
		{ config_id = 548006, gadget_id = 70690001, pos = { x = -2380.331, y = -7.526, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 548008, gadget_id = 70690001, pos = { x = -2380.331, y = -17.041, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 548009, gadget_id = 70610102, pos = { x = -2380.331, y = 45.952, z = 5377.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 548010, gadget_id = 70690001, pos = { x = -2380.331, y = -9.417, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 548012, gadget_id = 70690001, pos = { x = -2380.331, y = -15.918, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 548013, gadget_id = 70690001, pos = { x = -2380.331, y = 80.564, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
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
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 548001, state = 0 },
			{ config_id = 548002, state = 0 },
			{ config_id = 548003, state = 0 },
			{ config_id = 548004, state = 0 },
			{ config_id = 548005, state = 0 },
			{ config_id = 548007, state = 0 },
			{ config_id = 548011, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 548001, state = 0 },
			{ config_id = 548002, state = 0 },
			{ config_id = 548003, state = 0 },
			{ config_id = 548004, state = 0 },
			{ config_id = 548005, state = 0 },
			{ config_id = 548007, state = 0 },
			{ config_id = 548011, state = 0 }
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