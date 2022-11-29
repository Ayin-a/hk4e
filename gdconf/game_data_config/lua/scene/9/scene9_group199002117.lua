-- 基础信息
local base_info = {
	group_id = 199002117
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
	monsters = {
		{ config_id = 117002, monster_id = 22010101, pos = { x = 710.641, y = 126.210, z = -116.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 402 },
		{ config_id = 117003, monster_id = 22010201, pos = { x = 710.298, y = 126.178, z = -98.915 }, rot = { x = 0.000, y = 233.512, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 402 },
		{ config_id = 117020, monster_id = 21011001, pos = { x = 684.291, y = 123.864, z = -94.241 }, rot = { x = 0.000, y = 200.557, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 402 },
		{ config_id = 117021, monster_id = 21010501, pos = { x = 687.010, y = 123.832, z = -126.764 }, rot = { x = 0.000, y = 334.264, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 402 }
	},
	gadgets = {
		{ config_id = 117001, gadget_id = 70290059, pos = { x = 710.459, y = 120.000, z = -116.512 }, rot = { x = 0.000, y = 252.583, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117004, gadget_id = 70290057, pos = { x = 720.654, y = 119.246, z = -125.594 }, rot = { x = 0.000, y = 296.570, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117005, gadget_id = 70290057, pos = { x = 716.246, y = 119.240, z = -82.421 }, rot = { x = 0.000, y = 50.940, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117006, gadget_id = 70290057, pos = { x = 697.561, y = 119.274, z = -80.682 }, rot = { x = 0.000, y = 349.417, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117007, gadget_id = 70290059, pos = { x = 709.885, y = 120.000, z = -97.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117008, gadget_id = 70290060, pos = { x = 709.643, y = 124.956, z = -107.510 }, rot = { x = 0.000, y = 85.612, z = 347.624 }, level = 20, area_id = 402 },
		{ config_id = 117009, gadget_id = 70290061, pos = { x = 692.548, y = 120.000, z = -135.747 }, rot = { x = 0.000, y = 5.368, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117010, gadget_id = 70290056, pos = { x = 707.721, y = 120.000, z = -134.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
		{ config_id = 117011, gadget_id = 70950092, pos = { x = 684.666, y = 120.000, z = -93.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117012, gadget_id = 70950092, pos = { x = 687.406, y = 120.000, z = -127.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117013, gadget_id = 70950087, pos = { x = 682.542, y = 120.000, z = -95.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117014, gadget_id = 70950087, pos = { x = 682.381, y = 120.000, z = -92.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117015, gadget_id = 70950087, pos = { x = 686.253, y = 120.000, z = -96.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117016, gadget_id = 70950087, pos = { x = 685.175, y = 120.000, z = -125.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117017, gadget_id = 70950087, pos = { x = 689.501, y = 120.000, z = -124.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117018, gadget_id = 70950087, pos = { x = 685.562, y = 120.000, z = -124.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 117019, gadget_id = 70950087, pos = { x = 687.939, y = 120.000, z = -130.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
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