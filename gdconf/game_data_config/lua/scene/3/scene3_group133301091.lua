-- 基础信息
local base_info = {
	group_id = 133301091
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
	{ config_id = 91003, gadget_id = 70500000, pos = { x = -284.965, y = 134.513, z = 3953.713 }, rot = { x = 352.221, y = 30.881, z = 341.176 }, level = 27, point_type = 2046, area_id = 22 },
	{ config_id = 91005, gadget_id = 70500000, pos = { x = -320.707, y = 148.795, z = 3966.616 }, rot = { x = 14.058, y = 4.282, z = 350.045 }, level = 33, point_type = 2045, area_id = 22 },
	{ config_id = 91006, gadget_id = 70500000, pos = { x = -303.875, y = 142.927, z = 3959.668 }, rot = { x = 10.702, y = 88.779, z = 10.043 }, level = 33, point_type = 2045, area_id = 22 },
	{ config_id = 91007, gadget_id = 70500000, pos = { x = -327.679, y = 151.088, z = 3968.934 }, rot = { x = 4.874, y = 47.764, z = 345.221 }, level = 33, point_type = 2045, area_id = 22 },
	{ config_id = 91008, gadget_id = 70500000, pos = { x = -199.776, y = 90.441, z = 3923.277 }, rot = { x = 5.601, y = 297.220, z = 358.869 }, level = 27, point_type = 2045, area_id = 22 },
	{ config_id = 91009, gadget_id = 70500000, pos = { x = -168.942, y = 92.929, z = 3936.203 }, rot = { x = 9.160, y = 213.365, z = 2.236 }, level = 27, point_type = 2045, area_id = 22 },
	{ config_id = 91010, gadget_id = 70500000, pos = { x = -171.651, y = 91.484, z = 3922.059 }, rot = { x = 26.571, y = 334.851, z = 5.956 }, level = 27, point_type = 2045, area_id = 22 },
	{ config_id = 91014, gadget_id = 70217020, pos = { x = -317.846, y = 170.216, z = 3981.803 }, rot = { x = 0.000, y = 343.305, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 91015, gadget_id = 70500000, pos = { x = -287.779, y = 139.091, z = 3956.944 }, rot = { x = 353.628, y = 254.735, z = 10.140 }, level = 33, point_type = 2045, area_id = 22 },
	{ config_id = 91016, gadget_id = 70500000, pos = { x = -264.209, y = 102.794, z = 3937.866 }, rot = { x = 355.490, y = 328.359, z = 354.407 }, level = 33, point_type = 2045, area_id = 22 },
	{ config_id = 91017, gadget_id = 70500000, pos = { x = -274.472, y = 105.952, z = 3948.965 }, rot = { x = 7.706, y = 183.209, z = 3.590 }, level = 33, point_type = 2045, area_id = 22 },
	{ config_id = 91018, gadget_id = 70500000, pos = { x = -282.705, y = 107.515, z = 3950.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1001, area_id = 22 },
	{ config_id = 91019, gadget_id = 70500000, pos = { x = -281.484, y = 107.528, z = 3952.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 22 },
	{ config_id = 91020, gadget_id = 70500000, pos = { x = -279.256, y = 107.976, z = 3954.100 }, rot = { x = 0.000, y = 167.989, z = 0.000 }, level = 27, point_type = 1002, area_id = 22 },
	{ config_id = 91021, gadget_id = 70500000, pos = { x = -276.823, y = 121.109, z = 3947.532 }, rot = { x = 23.164, y = 189.473, z = 301.476 }, level = 27, point_type = 2046, area_id = 22 }
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
		{ config_id = 91001, monster_id = 28050106, pos = { x = -324.950, y = 172.954, z = 3982.645 }, rot = { x = 0.000, y = 163.343, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 91002, monster_id = 28050106, pos = { x = -312.943, y = 181.691, z = 3967.966 }, rot = { x = 0.000, y = 283.986, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 91011, monster_id = 28050106, pos = { x = -335.337, y = 183.590, z = 3974.495 }, rot = { x = 0.000, y = 283.986, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 91012, monster_id = 28050106, pos = { x = -317.840, y = 199.192, z = 3982.275 }, rot = { x = 0.000, y = 214.764, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 91013, monster_id = 28050106, pos = { x = -318.921, y = 219.194, z = 3959.389 }, rot = { x = 0.000, y = 214.764, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 }
	},
	gadgets = {
		{ config_id = 91004, gadget_id = 70500000, pos = { x = -280.561, y = 129.506, z = 3952.371 }, rot = { x = 356.161, y = 134.305, z = 312.712 }, level = 27, point_type = 2046, area_id = 22 }
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
		gadgets = { 91003, 91005, 91006, 91007, 91008, 91009, 91010, 91014, 91015, 91016, 91017, 91018, 91019, 91020, 91021 },
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