-- 基础信息
local base_info = {
	group_id = 133103362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362001, monster_id = 21010501, pos = { x = -87.116, y = 314.908, z = 1823.626 }, rot = { x = 0.000, y = 105.805, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 362002, monster_id = 21010701, pos = { x = -120.840, y = 321.523, z = 1876.434 }, rot = { x = 0.000, y = 331.959, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 362003, monster_id = 21010701, pos = { x = -96.567, y = 303.526, z = 1805.187 }, rot = { x = 0.000, y = 137.948, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 362004, monster_id = 21010201, pos = { x = -96.748, y = 321.295, z = 1868.504 }, rot = { x = 0.000, y = 50.307, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9013, area_id = 6 },
	{ config_id = 362005, monster_id = 21030201, pos = { x = -113.335, y = 323.313, z = 1885.672 }, rot = { x = 0.000, y = 196.407, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 },
	{ config_id = 362006, monster_id = 21010101, pos = { x = -114.647, y = 322.166, z = 1880.437 }, rot = { x = 0.000, y = 20.285, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 6 },
	{ config_id = 362007, monster_id = 21010101, pos = { x = -116.895, y = 322.421, z = 1882.351 }, rot = { x = 0.000, y = 23.648, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9003, area_id = 6 },
	{ config_id = 362008, monster_id = 21010101, pos = { x = -117.815, y = 322.340, z = 1884.413 }, rot = { x = 0.000, y = 71.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9003, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362009, gadget_id = 70310001, pos = { x = -110.103, y = 323.071, z = 1885.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 362010, gadget_id = 70310001, pos = { x = -105.603, y = 314.367, z = 1833.655 }, rot = { x = 0.000, y = 310.741, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 362011, gadget_id = 70310001, pos = { x = -95.221, y = 304.994, z = 1810.024 }, rot = { x = 352.293, y = 36.883, z = 352.417 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 362012, gadget_id = 70310001, pos = { x = -139.322, y = 320.499, z = 1803.623 }, rot = { x = 3.505, y = 359.648, z = 348.517 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 362013, gadget_id = 70310001, pos = { x = -150.890, y = 326.101, z = 1825.199 }, rot = { x = 351.380, y = 1.063, z = 345.963 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 362014, gadget_id = 70310001, pos = { x = -144.611, y = 327.487, z = 1855.106 }, rot = { x = 351.154, y = 292.996, z = 4.898 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 362015, gadget_id = 70220013, pos = { x = -134.476, y = 327.425, z = 1866.420 }, rot = { x = 351.514, y = 0.782, z = 349.492 }, level = 27, area_id = 6 },
	{ config_id = 362016, gadget_id = 70220013, pos = { x = -104.598, y = 322.715, z = 1878.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362017, gadget_id = 70220013, pos = { x = -105.724, y = 322.836, z = 1880.971 }, rot = { x = 0.000, y = 299.330, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362018, gadget_id = 70220013, pos = { x = -153.421, y = 326.532, z = 1814.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362019, gadget_id = 70220013, pos = { x = -159.993, y = 326.395, z = 1819.535 }, rot = { x = 7.464, y = 87.974, z = 9.422 }, level = 27, area_id = 6 },
	{ config_id = 362020, gadget_id = 70220014, pos = { x = -133.122, y = 327.398, z = 1867.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362021, gadget_id = 70220014, pos = { x = -146.157, y = 332.657, z = 1839.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362022, gadget_id = 70220014, pos = { x = -131.731, y = 320.059, z = 1793.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362023, gadget_id = 70220014, pos = { x = -154.818, y = 326.643, z = 1814.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362024, gadget_id = 70220013, pos = { x = -130.354, y = 319.870, z = 1792.299 }, rot = { x = 355.345, y = 299.263, z = 1.660 }, level = 27, area_id = 6 },
	{ config_id = 362025, gadget_id = 70300089, pos = { x = -139.801, y = 321.040, z = 1796.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362026, gadget_id = 70300089, pos = { x = -134.238, y = 319.645, z = 1814.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362027, gadget_id = 70300089, pos = { x = -123.768, y = 317.868, z = 1800.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362028, gadget_id = 70300089, pos = { x = -130.564, y = 325.167, z = 1842.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362029, gadget_id = 70310009, pos = { x = -104.287, y = 321.391, z = 1869.680 }, rot = { x = 349.617, y = 58.399, z = 354.992 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 362030, gadget_id = 70220014, pos = { x = -104.559, y = 322.174, z = 1874.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 362031, gadget_id = 70220014, pos = { x = -105.536, y = 322.325, z = 1874.326 }, rot = { x = 308.320, y = 258.416, z = 99.136 }, level = 27, area_id = 6 }
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
		monsters = { 362001, 362002, 362003, 362004, 362005, 362006, 362007, 362008 },
		gadgets = { 362009, 362010, 362011, 362012, 362013, 362014, 362015, 362016, 362017, 362018, 362019, 362020, 362021, 362022, 362023, 362024, 362025, 362026, 362027, 362028, 362029, 362030, 362031 },
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