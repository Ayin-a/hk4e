-- 基础信息
local base_info = {
	group_id = 166001422
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 422001, monster_id = 28010302, pos = { x = 825.848, y = 791.000, z = 611.775 }, rot = { x = 0.000, y = 71.226, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 422015, monster_id = 28010302, pos = { x = 724.486, y = 791.000, z = 595.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 422016, monster_id = 28050301, pos = { x = 714.993, y = 792.558, z = 587.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 422017, monster_id = 28050301, pos = { x = 721.513, y = 791.326, z = 590.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 422018, monster_id = 28050301, pos = { x = 714.078, y = 791.089, z = 598.745 }, rot = { x = 0.000, y = 65.873, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 422023, monster_id = 28050301, pos = { x = 730.335, y = 791.348, z = 615.469 }, rot = { x = 0.000, y = 90.195, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 422024, monster_id = 28050301, pos = { x = 731.420, y = 791.000, z = 614.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 422025, monster_id = 28010302, pos = { x = 748.668, y = 791.606, z = 621.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 422002, gadget_id = 70211111, pos = { x = 714.283, y = 791.391, z = 590.644 }, rot = { x = 5.296, y = 359.942, z = 358.739 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		{ config_id = 422004, gadget_id = 70500000, pos = { x = 718.137, y = 791.208, z = 586.749 }, rot = { x = 0.000, y = 300.717, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 422005, gadget_id = 70500000, pos = { x = 716.449, y = 791.510, z = 586.336 }, rot = { x = 0.000, y = 11.237, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 422006, gadget_id = 70500000, pos = { x = 723.609, y = 791.457, z = 590.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 422007, gadget_id = 70500000, pos = { x = 713.290, y = 791.323, z = 601.624 }, rot = { x = 0.000, y = 284.920, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 422008, gadget_id = 70500000, pos = { x = 713.929, y = 790.974, z = 599.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 },
		{ config_id = 422009, gadget_id = 70500000, pos = { x = 712.204, y = 791.357, z = 591.035 }, rot = { x = 0.000, y = 290.037, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 },
		{ config_id = 422010, gadget_id = 70500000, pos = { x = 719.763, y = 790.828, z = 590.759 }, rot = { x = 0.000, y = 200.264, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 },
		{ config_id = 422012, gadget_id = 70500000, pos = { x = 719.468, y = 791.394, z = 589.099 }, rot = { x = 0.000, y = 27.673, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 422013, gadget_id = 70500000, pos = { x = 716.480, y = 790.881, z = 602.422 }, rot = { x = 0.000, y = 288.043, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 422014, gadget_id = 70500000, pos = { x = 714.063, y = 791.578, z = 603.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 422019, gadget_id = 70290016, pos = { x = 724.542, y = 790.757, z = 594.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 422020, gadget_id = 70500000, pos = { x = 724.542, y = 790.757, z = 594.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3010, owner = 422019, area_id = 300 },
		{ config_id = 422021, gadget_id = 70290016, pos = { x = 726.460, y = 790.977, z = 593.456 }, rot = { x = 0.000, y = 180.814, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 422022, gadget_id = 70500000, pos = { x = 726.460, y = 790.977, z = 593.456 }, rot = { x = 0.000, y = 180.813, z = 0.000 }, level = 36, point_type = 3010, owner = 422021, area_id = 300 },
		{ config_id = 422026, gadget_id = 70290008, pos = { x = 742.971, y = 790.820, z = 669.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 422027, gadget_id = 70500000, pos = { x = 742.971, y = 790.820, z = 669.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3008, owner = 422026, area_id = 300 }
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
		monsters = { 422001, 422015, 422016, 422017, 422018, 422023, 422024, 422025 },
		gadgets = { 422002 },
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