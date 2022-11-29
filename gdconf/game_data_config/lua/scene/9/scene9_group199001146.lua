-- 基础信息
local base_info = {
	group_id = 199001146
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
		{ config_id = 146015, monster_id = 21010601, pos = { x = 138.969, y = 126.137, z = 9.960 }, rot = { x = 0.000, y = 104.708, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 402 },
		{ config_id = 146016, monster_id = 21010601, pos = { x = 142.200, y = 126.059, z = 7.643 }, rot = { x = 0.000, y = 273.171, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 402 },
		{ config_id = 146017, monster_id = 21011001, pos = { x = 142.788, y = 126.089, z = 11.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 402 },
		{ config_id = 146018, monster_id = 21010401, pos = { x = 153.599, y = 123.869, z = 14.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 402 },
		{ config_id = 146019, monster_id = 21010401, pos = { x = 130.932, y = 123.797, z = 27.969 }, rot = { x = 0.000, y = 75.281, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 402 }
	},
	gadgets = {
		{ config_id = 146020, gadget_id = 70290059, pos = { x = 141.173, y = 120.000, z = 9.083 }, rot = { x = 0.000, y = 34.342, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146021, gadget_id = 70950092, pos = { x = 153.385, y = 120.000, z = 14.213 }, rot = { x = 0.000, y = 185.817, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146022, gadget_id = 70950092, pos = { x = 130.369, y = 120.000, z = 27.418 }, rot = { x = 0.000, y = 14.725, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146023, gadget_id = 70290056, pos = { x = 130.643, y = 120.000, z = 17.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
		{ config_id = 146024, gadget_id = 70950087, pos = { x = 132.282, y = 120.000, z = 29.203 }, rot = { x = 0.000, y = 14.725, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146025, gadget_id = 70950087, pos = { x = 128.038, y = 120.000, z = 29.283 }, rot = { x = 0.000, y = 14.725, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146026, gadget_id = 70950087, pos = { x = 131.836, y = 120.000, z = 30.598 }, rot = { x = 0.000, y = 312.001, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146027, gadget_id = 70950087, pos = { x = 149.726, y = 120.000, z = 14.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146028, gadget_id = 70950087, pos = { x = 152.200, y = 120.000, z = 16.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146029, gadget_id = 70950087, pos = { x = 155.860, y = 120.000, z = 12.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146030, gadget_id = 70290056, pos = { x = 163.647, y = 120.000, z = 7.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
		{ config_id = 146031, gadget_id = 70290057, pos = { x = 152.558, y = 119.464, z = -1.004 }, rot = { x = 0.000, y = 346.682, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 146032, gadget_id = 70290057, pos = { x = 128.419, y = 119.279, z = 37.427 }, rot = { x = 356.545, y = 335.123, z = 0.344 }, level = 20, area_id = 402 },
		{ config_id = 146033, gadget_id = 70300087, pos = { x = 140.497, y = 126.211, z = 8.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
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