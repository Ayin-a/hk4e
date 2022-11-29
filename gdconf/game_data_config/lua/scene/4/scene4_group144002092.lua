-- 基础信息
local base_info = {
	group_id = 144002092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92011, monster_id = 28030101, pos = { x = 433.744, y = 210.945, z = -434.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 101 },
	{ config_id = 92012, monster_id = 28030101, pos = { x = 397.849, y = 221.192, z = -466.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, area_id = 101 },
	{ config_id = 92013, monster_id = 28030101, pos = { x = 401.496, y = 221.979, z = -469.644 }, rot = { x = 0.000, y = 250.343, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, area_id = 101 },
	{ config_id = 92015, monster_id = 28030101, pos = { x = 582.453, y = 208.142, z = -488.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 101 },
	{ config_id = 92016, monster_id = 28020102, pos = { x = 448.945, y = 200.700, z = -481.567 }, rot = { x = 0.000, y = 299.454, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 101 },
	{ config_id = 92017, monster_id = 28020102, pos = { x = 448.533, y = 200.652, z = -480.173 }, rot = { x = 0.000, y = 210.379, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92001, gadget_id = 70290003, pos = { x = 412.498, y = 207.460, z = -462.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 92002, gadget_id = 70500000, pos = { x = 412.498, y = 207.563, z = -463.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 92001, area_id = 101 },
	{ config_id = 92003, gadget_id = 70500000, pos = { x = 412.498, y = 207.563, z = -462.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 92001, area_id = 101 },
	{ config_id = 92004, gadget_id = 70500000, pos = { x = 412.476, y = 221.515, z = -471.970 }, rot = { x = 0.000, y = 89.630, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 92005, gadget_id = 70500000, pos = { x = 437.364, y = 210.774, z = -433.098 }, rot = { x = 0.000, y = 152.733, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 92006, gadget_id = 70500000, pos = { x = 473.185, y = 201.692, z = -450.185 }, rot = { x = 0.000, y = 40.529, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 92007, gadget_id = 70500000, pos = { x = 396.961, y = 215.858, z = -491.888 }, rot = { x = 0.000, y = 37.123, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 92008, gadget_id = 70290010, pos = { x = 441.786, y = 200.898, z = -489.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 92009, gadget_id = 70500000, pos = { x = 441.786, y = 200.898, z = -489.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3006, owner = 92008, area_id = 101 },
	{ config_id = 92010, gadget_id = 70500000, pos = { x = 620.422, y = 216.732, z = -450.155 }, rot = { x = 0.000, y = 104.340, z = 0.000 }, level = 20, point_type = 9104, area_id = 101 },
	{ config_id = 92014, gadget_id = 70500000, pos = { x = 618.608, y = 216.725, z = -449.632 }, rot = { x = 0.000, y = 292.016, z = 0.000 }, level = 20, point_type = 9104, area_id = 101 },
	{ config_id = 92018, gadget_id = 70290003, pos = { x = 581.555, y = 208.092, z = -487.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 92019, gadget_id = 70500000, pos = { x = 581.555, y = 208.195, z = -488.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 92018, area_id = 101 },
	{ config_id = 92020, gadget_id = 70500000, pos = { x = 581.555, y = 208.195, z = -487.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 92018, area_id = 101 },
	{ config_id = 92021, gadget_id = 70290003, pos = { x = 572.289, y = 276.007, z = -529.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 92022, gadget_id = 70500000, pos = { x = 572.289, y = 276.110, z = -529.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 92021, area_id = 101 },
	{ config_id = 92023, gadget_id = 70500000, pos = { x = 572.289, y = 276.110, z = -528.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 92021, area_id = 101 },
	{ config_id = 92024, gadget_id = 70500000, pos = { x = 604.231, y = 219.898, z = -446.369 }, rot = { x = 0.000, y = 115.745, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 92025, gadget_id = 70500000, pos = { x = 611.972, y = 235.041, z = -495.670 }, rot = { x = 0.000, y = 249.391, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 92026, gadget_id = 70500000, pos = { x = 589.770, y = 284.692, z = -523.517 }, rot = { x = 0.000, y = 73.103, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 92027, gadget_id = 70500000, pos = { x = 618.982, y = 215.890, z = -442.158 }, rot = { x = 0.000, y = 314.281, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 92028, gadget_id = 70500000, pos = { x = 616.177, y = 235.069, z = -499.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2019, area_id = 101 },
	{ config_id = 92029, gadget_id = 70500000, pos = { x = 613.285, y = 235.163, z = -498.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2003, area_id = 101 },
	{ config_id = 92030, gadget_id = 70500000, pos = { x = 614.765, y = 235.033, z = -498.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2003, area_id = 101 },
	{ config_id = 92031, gadget_id = 70500000, pos = { x = 616.048, y = 234.675, z = -496.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2019, area_id = 101 },
	{ config_id = 92032, gadget_id = 70500000, pos = { x = 619.634, y = 216.733, z = -448.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 9104, area_id = 101 }
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
		monsters = { 92011, 92012, 92013, 92015, 92016, 92017 },
		gadgets = { 92001, 92002, 92003, 92004, 92005, 92006, 92007, 92008, 92009, 92010, 92014, 92018, 92019, 92020, 92021, 92022, 92023, 92024, 92025, 92026, 92027, 92028, 92029, 92030, 92031, 92032 },
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