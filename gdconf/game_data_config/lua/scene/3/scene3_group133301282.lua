-- 基础信息
local base_info = {
	group_id = 133301282
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
	{ config_id = 282007, gadget_id = 70310006, pos = { x = -1046.337, y = 347.823, z = 4008.478 }, rot = { x = 0.000, y = 24.639, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 282008, gadget_id = 70210101, pos = { x = -1052.358, y = 348.458, z = 4015.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 23 },
	{ config_id = 282009, gadget_id = 70210101, pos = { x = -1045.002, y = 348.335, z = 4022.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 23 },
	{ config_id = 282010, gadget_id = 70220052, pos = { x = -1047.629, y = 347.823, z = 4008.604 }, rot = { x = 0.000, y = 311.010, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282011, gadget_id = 70220052, pos = { x = -1045.035, y = 347.968, z = 4006.930 }, rot = { x = 349.812, y = 359.835, z = 1.853 }, level = 30, area_id = 23 },
	{ config_id = 282012, gadget_id = 70220051, pos = { x = -1044.243, y = 347.823, z = 4006.513 }, rot = { x = 0.000, y = 136.921, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282017, gadget_id = 70210101, pos = { x = -1090.641, y = 341.033, z = 3992.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 282021, gadget_id = 70210101, pos = { x = -1095.592, y = 341.627, z = 3996.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 23 },
	{ config_id = 282024, gadget_id = 70210101, pos = { x = -1099.463, y = 341.589, z = 4003.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 23 },
	{ config_id = 282025, gadget_id = 70220052, pos = { x = -1096.815, y = 341.088, z = 4005.434 }, rot = { x = 0.000, y = 65.709, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282026, gadget_id = 70220052, pos = { x = -1097.645, y = 341.088, z = 4005.388 }, rot = { x = 0.000, y = 20.833, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282027, gadget_id = 70220051, pos = { x = -1094.504, y = 341.072, z = 4004.954 }, rot = { x = 0.000, y = 136.921, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282028, gadget_id = 70220051, pos = { x = -1099.625, y = 341.072, z = 4004.870 }, rot = { x = 0.000, y = 136.921, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282030, gadget_id = 70220048, pos = { x = -1097.865, y = 346.480, z = 4003.034 }, rot = { x = 0.000, y = 316.903, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282031, gadget_id = 70220048, pos = { x = -1099.062, y = 346.472, z = 4001.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282032, gadget_id = 70220128, pos = { x = -1096.775, y = 346.473, z = 3999.583 }, rot = { x = 0.000, y = 335.073, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282039, gadget_id = 70310009, pos = { x = -1084.690, y = 338.123, z = 3977.540 }, rot = { x = 0.000, y = 268.688, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 282040, gadget_id = 70210101, pos = { x = -1051.127, y = 343.429, z = 3997.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 282041, gadget_id = 70210101, pos = { x = -1047.982, y = 344.447, z = 3994.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 23 },
	{ config_id = 282043, gadget_id = 70210101, pos = { x = -1066.652, y = 342.902, z = 4005.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 23 },
	{ config_id = 282044, gadget_id = 70210101, pos = { x = -1054.999, y = 348.406, z = 4014.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 23 },
	{ config_id = 282045, gadget_id = 70210101, pos = { x = -1053.144, y = 343.332, z = 4028.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 282046, gadget_id = 70210101, pos = { x = -1039.433, y = 348.261, z = 4024.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 282047, gadget_id = 70210101, pos = { x = -1054.886, y = 347.981, z = 4011.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 282048, gadget_id = 70210101, pos = { x = -1071.901, y = 342.341, z = 4007.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 282050, gadget_id = 70210101, pos = { x = -1059.055, y = 342.470, z = 4020.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 282051, gadget_id = 70210101, pos = { x = -1059.357, y = 342.632, z = 4019.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 23 },
	{ config_id = 282053, gadget_id = 70220048, pos = { x = -1036.102, y = 352.610, z = 4018.723 }, rot = { x = 0.000, y = 284.203, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282054, gadget_id = 70220048, pos = { x = -1044.671, y = 347.430, z = 3995.530 }, rot = { x = 0.000, y = 236.471, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 282056, gadget_id = 70217020, pos = { x = -1043.023, y = 347.468, z = 4003.603 }, rot = { x = 10.381, y = 59.052, z = 354.780 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 282057, gadget_id = 70210101, pos = { x = -1052.697, y = 342.833, z = 4021.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 23 },
	{ config_id = 282058, gadget_id = 70210101, pos = { x = -1042.964, y = 343.642, z = 4014.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 282059, gadget_id = 70210101, pos = { x = -1044.836, y = 342.976, z = 4012.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 },
	{ config_id = 282060, gadget_id = 70220048, pos = { x = -1044.892, y = 347.434, z = 3997.817 }, rot = { x = 0.000, y = 214.841, z = 0.000 }, level = 30, area_id = 23 }
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
		{ config_id = 282052, gadget_id = 70217020, pos = { x = -1058.942, y = 339.785, z = 3982.511 }, rot = { x = 0.285, y = 357.323, z = 348.397 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
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
		gadgets = { 282007, 282008, 282009, 282010, 282011, 282012, 282017, 282021, 282024, 282025, 282026, 282027, 282028, 282030, 282031, 282032, 282039, 282040, 282041, 282043, 282044, 282045, 282046, 282047, 282048, 282050, 282051, 282053, 282054, 282056, 282057, 282058, 282059, 282060 },
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