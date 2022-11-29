-- 基础信息
local base_info = {
	group_id = 199002087
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87001, monster_id = 28030101, pos = { x = 446.130, y = 135.159, z = -421.999 }, rot = { x = 0.000, y = 296.513, z = 0.000 }, level = 20, drop_tag = "鸟类", area_id = 401 },
	{ config_id = 87002, monster_id = 28030101, pos = { x = 351.384, y = 125.268, z = -449.429 }, rot = { x = 0.000, y = 295.343, z = 0.000 }, level = 20, drop_tag = "鸟类", disableWander = true, area_id = 401 },
	{ config_id = 87003, monster_id = 28030101, pos = { x = 386.222, y = 204.294, z = -509.276 }, rot = { x = 0.000, y = 250.343, z = 0.000 }, level = 20, drop_tag = "鸟类", disableWander = true, area_id = 401 },
	{ config_id = 87004, monster_id = 28030101, pos = { x = 571.201, y = 119.784, z = -473.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 401 },
	{ config_id = 87005, monster_id = 28020102, pos = { x = 454.145, y = 140.128, z = -466.543 }, rot = { x = 0.000, y = 99.362, z = 0.000 }, level = 20, drop_tag = "走兽", disableWander = true, area_id = 401 },
	{ config_id = 87006, monster_id = 28020102, pos = { x = 454.602, y = 140.256, z = -465.286 }, rot = { x = 0.000, y = 117.324, z = 0.000 }, level = 20, drop_tag = "走兽", area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 87011, gadget_id = 70500000, pos = { x = 437.364, y = 134.279, z = -433.098 }, rot = { x = 0.000, y = 152.733, z = 0.000 }, level = 20, point_type = 2004, area_id = 401 },
	{ config_id = 87012, gadget_id = 70500000, pos = { x = 470.764, y = 202.145, z = -453.017 }, rot = { x = 0.000, y = 40.529, z = 0.000 }, level = 20, point_type = 2001, area_id = 401 },
	{ config_id = 87014, gadget_id = 70290010, pos = { x = 472.880, y = 129.446, z = -483.765 }, rot = { x = 348.925, y = 2.000, z = 349.696 }, level = 20, area_id = 401 },
	{ config_id = 87015, gadget_id = 70500000, pos = { x = 472.880, y = 129.446, z = -483.765 }, rot = { x = 348.930, y = 1.999, z = 349.702 }, level = 20, point_type = 3006, owner = 87014, area_id = 401 },
	{ config_id = 87024, gadget_id = 70500000, pos = { x = 616.893, y = 217.924, z = -459.410 }, rot = { x = 0.000, y = 115.745, z = 0.000 }, level = 20, point_type = 2004, area_id = 401 },
	{ config_id = 87025, gadget_id = 70500000, pos = { x = 611.972, y = 127.510, z = -495.670 }, rot = { x = 0.000, y = 249.391, z = 0.000 }, level = 20, point_type = 2001, area_id = 401 },
	{ config_id = 87026, gadget_id = 70500000, pos = { x = 625.859, y = 225.466, z = -481.616 }, rot = { x = 0.000, y = 73.103, z = 0.000 }, level = 20, point_type = 2001, area_id = 401 },
	{ config_id = 87027, gadget_id = 70500000, pos = { x = 623.175, y = 215.939, z = -450.928 }, rot = { x = 0.000, y = 314.281, z = 0.000 }, level = 20, point_type = 2001, area_id = 401 },
	{ config_id = 87034, gadget_id = 70500000, pos = { x = 612.117, y = 237.106, z = -507.292 }, rot = { x = 0.000, y = 0.000, z = 142.155 }, level = 20, point_type = 1001, area_id = 401 },
	{ config_id = 87035, gadget_id = 70500000, pos = { x = 612.396, y = 237.742, z = -508.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 1002, area_id = 401 },
	{ config_id = 87036, gadget_id = 70500000, pos = { x = 607.856, y = 238.158, z = -501.755 }, rot = { x = 21.591, y = 52.189, z = 18.702 }, level = 20, point_type = 1002, area_id = 401 }
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
		{ config_id = 87007, gadget_id = 70290003, pos = { x = 398.328, y = 137.934, z = -450.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 87008, gadget_id = 70500000, pos = { x = 398.328, y = 137.934, z = -450.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3003, owner = 87007, area_id = 401 },
		{ config_id = 87009, gadget_id = 70500000, pos = { x = 398.328, y = 137.934, z = -450.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3003, owner = 87007, area_id = 401 },
		{ config_id = 87010, gadget_id = 70500000, pos = { x = 484.340, y = 199.901, z = -466.743 }, rot = { x = 0.000, y = 89.630, z = 0.000 }, level = 20, point_type = 2001, area_id = 401 },
		{ config_id = 87013, gadget_id = 70500000, pos = { x = 384.232, y = 201.587, z = -495.622 }, rot = { x = 0.000, y = 37.123, z = 0.000 }, level = 20, point_type = 2004, area_id = 401 },
		{ config_id = 87018, gadget_id = 70290003, pos = { x = 588.353, y = 123.379, z = -474.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 87019, gadget_id = 70500000, pos = { x = 588.353, y = 123.378, z = -474.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3003, owner = 87018, area_id = 401 },
		{ config_id = 87020, gadget_id = 70500000, pos = { x = 588.353, y = 123.380, z = -474.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3003, owner = 87018, area_id = 401 },
		{ config_id = 87021, gadget_id = 70290003, pos = { x = 561.839, y = 244.082, z = -532.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 87022, gadget_id = 70500000, pos = { x = 561.839, y = 244.082, z = -532.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3003, owner = 87021, area_id = 401 },
		{ config_id = 87023, gadget_id = 70500000, pos = { x = 561.839, y = 244.082, z = -532.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3003, owner = 87021, area_id = 401 },
		{ config_id = 87028, gadget_id = 70500000, pos = { x = 616.177, y = 125.119, z = -518.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2019, area_id = 401 },
		{ config_id = 87029, gadget_id = 70500000, pos = { x = 616.212, y = 125.297, z = -520.076 }, rot = { x = 0.000, y = 0.000, z = 354.090 }, level = 20, point_type = 2003, area_id = 401 },
		{ config_id = 87030, gadget_id = 70500000, pos = { x = 617.688, y = 124.938, z = -520.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2003, area_id = 401 },
		{ config_id = 87031, gadget_id = 70500000, pos = { x = 617.714, y = 124.921, z = -518.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2019, area_id = 401 }
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
		monsters = { 87001, 87002, 87003, 87004, 87005, 87006 },
		gadgets = { 87011, 87012, 87014, 87015, 87024, 87025, 87026, 87027, 87034, 87035, 87036 },
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