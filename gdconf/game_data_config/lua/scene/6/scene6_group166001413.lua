-- 基础信息
local base_info = {
	group_id = 166001413
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 413012, monster_id = 28050301, pos = { x = 836.559, y = 707.072, z = 460.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 413013, monster_id = 28050301, pos = { x = 837.508, y = 707.377, z = 458.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 413014, monster_id = 28050301, pos = { x = 834.770, y = 706.533, z = 456.379 }, rot = { x = 0.000, y = 265.732, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 413015, monster_id = 28010302, pos = { x = 763.209, y = 705.331, z = 466.673 }, rot = { x = 0.000, y = 55.694, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 413021, monster_id = 28020605, pos = { x = 790.370, y = 708.355, z = 501.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 300 },
	{ config_id = 413033, monster_id = 28050301, pos = { x = 836.825, y = 774.931, z = 424.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 413034, monster_id = 20011001, pos = { x = 853.262, y = 780.271, z = 432.011 }, rot = { x = 0.000, y = 11.540, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 413035, monster_id = 20011001, pos = { x = 844.587, y = 777.437, z = 424.317 }, rot = { x = 0.000, y = 11.540, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 413036, monster_id = 20011401, pos = { x = 853.557, y = 779.646, z = 429.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 413037, monster_id = 28010201, pos = { x = 810.392, y = 767.689, z = 417.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 413001, gadget_id = 70290200, pos = { x = 835.525, y = 704.159, z = 475.602 }, rot = { x = 0.000, y = 336.905, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 413002, gadget_id = 70290200, pos = { x = 814.486, y = 702.586, z = 440.687 }, rot = { x = 0.000, y = 37.543, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 413003, gadget_id = 70290308, pos = { x = 823.949, y = 702.777, z = 448.455 }, rot = { x = 0.000, y = 0.000, z = 86.803 }, level = 36, area_id = 300 },
	{ config_id = 413004, gadget_id = 70290308, pos = { x = 817.245, y = 702.023, z = 443.004 }, rot = { x = 0.000, y = 0.000, z = 293.158 }, level = 36, area_id = 300 },
	{ config_id = 413005, gadget_id = 70290308, pos = { x = 828.215, y = 702.260, z = 445.345 }, rot = { x = 0.000, y = 0.000, z = 29.685 }, level = 36, area_id = 300 },
	{ config_id = 413006, gadget_id = 70220048, pos = { x = 824.818, y = 701.466, z = 438.572 }, rot = { x = 34.840, y = 12.211, z = 7.049 }, level = 36, area_id = 300 },
	{ config_id = 413010, gadget_id = 70290200, pos = { x = 852.157, y = 738.718, z = 467.313 }, rot = { x = 353.451, y = 38.051, z = 351.137 }, level = 36, area_id = 300 },
	{ config_id = 413011, gadget_id = 70290200, pos = { x = 871.983, y = 766.830, z = 454.749 }, rot = { x = 340.768, y = 79.026, z = 359.034 }, level = 36, area_id = 300 },
	{ config_id = 413028, gadget_id = 70290347, pos = { x = 772.802, y = 703.277, z = 469.993 }, rot = { x = 0.000, y = 34.110, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
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
		{ config_id = 413007, gadget_id = 70500000, pos = { x = 825.287, y = 707.635, z = 492.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 413008, gadget_id = 70500000, pos = { x = 827.588, y = 707.943, z = 492.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 413009, gadget_id = 70500000, pos = { x = 773.107, y = 709.440, z = 432.519 }, rot = { x = 9.205, y = 1.188, z = 14.672 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 413016, gadget_id = 70500000, pos = { x = 784.451, y = 710.004, z = 508.442 }, rot = { x = 0.000, y = 106.211, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 413017, gadget_id = 70500000, pos = { x = 780.396, y = 709.458, z = 503.519 }, rot = { x = 0.000, y = 336.819, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 413018, gadget_id = 70500000, pos = { x = 781.112, y = 709.578, z = 507.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 413019, gadget_id = 70500000, pos = { x = 786.603, y = 709.480, z = 507.153 }, rot = { x = 0.000, y = 322.468, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 },
		{ config_id = 413020, gadget_id = 70500000, pos = { x = 781.998, y = 709.753, z = 508.264 }, rot = { x = 349.319, y = 341.587, z = 3.531 }, level = 36, point_type = 1003, area_id = 300 },
		{ config_id = 413022, gadget_id = 70500000, pos = { x = 802.111, y = 707.348, z = 501.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2004, area_id = 300 },
		{ config_id = 413023, gadget_id = 70500000, pos = { x = 838.639, y = 706.922, z = 464.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2004, area_id = 300 },
		{ config_id = 413024, gadget_id = 70500000, pos = { x = 760.332, y = 708.507, z = 473.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2004, area_id = 300 },
		{ config_id = 413025, gadget_id = 70500000, pos = { x = 800.052, y = 720.048, z = 422.260 }, rot = { x = 21.964, y = 345.151, z = 21.594 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 413026, gadget_id = 70500000, pos = { x = 799.535, y = 719.997, z = 421.447 }, rot = { x = 29.800, y = 294.482, z = 1.182 }, level = 36, point_type = 2002, area_id = 300 },
		{ config_id = 413027, gadget_id = 70500000, pos = { x = 850.460, y = 732.683, z = 432.540 }, rot = { x = 21.964, y = 345.151, z = 21.594 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 413029, gadget_id = 70500000, pos = { x = 858.637, y = 736.353, z = 431.766 }, rot = { x = 21.228, y = 288.603, z = 7.830 }, level = 36, point_type = 2004, area_id = 300 },
		{ config_id = 413030, gadget_id = 70500000, pos = { x = 866.549, y = 742.478, z = 462.598 }, rot = { x = 346.909, y = 32.412, z = 11.722 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 413031, gadget_id = 70500000, pos = { x = 783.449, y = 752.630, z = 518.095 }, rot = { x = 352.525, y = 32.111, z = 342.245 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 413032, gadget_id = 70500000, pos = { x = 783.639, y = 763.108, z = 431.440 }, rot = { x = 0.804, y = 202.203, z = 350.475 }, level = 36, point_type = 2044, area_id = 300 }
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
		monsters = { 413012, 413013, 413014, 413015, 413021, 413033, 413034, 413035, 413036, 413037 },
		gadgets = { 413001, 413002, 413003, 413004, 413005, 413006, 413010, 413011, 413028 },
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