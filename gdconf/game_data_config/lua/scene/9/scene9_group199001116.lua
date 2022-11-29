-- 基础信息
local base_info = {
	group_id = 199001116
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
		{ config_id = 116001, monster_id = 21010401, pos = { x = 559.285, y = 123.695, z = 217.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
		{ config_id = 116002, monster_id = 21010401, pos = { x = 559.197, y = 123.687, z = 215.244 }, rot = { x = 0.000, y = 231.473, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
		{ config_id = 116003, monster_id = 21010401, pos = { x = 546.243, y = 123.727, z = 194.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
		{ config_id = 116004, monster_id = 21010401, pos = { x = 544.212, y = 123.714, z = 192.477 }, rot = { x = 0.000, y = 253.972, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
		{ config_id = 116005, monster_id = 21030301, pos = { x = 536.021, y = 126.211, z = 237.235 }, rot = { x = 0.000, y = 209.717, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 402 },
		{ config_id = 116006, monster_id = 21011001, pos = { x = 558.258, y = 126.064, z = 202.642 }, rot = { x = 0.000, y = 313.375, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 402 },
		{ config_id = 116007, monster_id = 21010501, pos = { x = 559.049, y = 126.055, z = 199.723 }, rot = { x = 0.000, y = 313.375, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 402 },
		{ config_id = 116008, monster_id = 21010401, pos = { x = 536.581, y = 126.054, z = 233.036 }, rot = { x = 0.000, y = 196.400, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
		{ config_id = 116009, monster_id = 21010401, pos = { x = 533.832, y = 125.964, z = 237.095 }, rot = { x = 0.000, y = 196.400, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 }
	},
	gadgets = {
		{ config_id = 116010, gadget_id = 70290059, pos = { x = 560.130, y = 120.000, z = 201.460 }, rot = { x = 0.000, y = 315.572, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116011, gadget_id = 70950092, pos = { x = 560.139, y = 120.000, z = 216.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116012, gadget_id = 70950092, pos = { x = 545.740, y = 120.000, z = 192.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116013, gadget_id = 70290057, pos = { x = 566.522, y = 119.293, z = 226.364 }, rot = { x = 0.000, y = 29.622, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116014, gadget_id = 70290057, pos = { x = 535.726, y = 119.350, z = 252.869 }, rot = { x = 0.000, y = 341.577, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116015, gadget_id = 70290057, pos = { x = 539.885, y = 119.395, z = 182.729 }, rot = { x = 0.000, y = 12.201, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116016, gadget_id = 70290056, pos = { x = 550.702, y = 120.000, z = 229.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
		{ config_id = 116017, gadget_id = 70290056, pos = { x = 525.041, y = 120.000, z = 192.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
		{ config_id = 116018, gadget_id = 70290059, pos = { x = 535.376, y = 120.000, z = 237.500 }, rot = { x = 0.000, y = 254.223, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116019, gadget_id = 70950087, pos = { x = 543.871, y = 120.000, z = 190.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116020, gadget_id = 70950087, pos = { x = 543.622, y = 120.000, z = 194.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116021, gadget_id = 70950087, pos = { x = 542.287, y = 120.000, z = 192.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116022, gadget_id = 70950087, pos = { x = 561.387, y = 120.000, z = 219.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116023, gadget_id = 70950087, pos = { x = 559.480, y = 120.000, z = 219.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 116024, gadget_id = 70950087, pos = { x = 557.497, y = 120.000, z = 217.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
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