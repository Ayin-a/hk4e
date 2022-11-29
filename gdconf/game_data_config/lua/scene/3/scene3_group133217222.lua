-- 基础信息
local base_info = {
	group_id = 133217222
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 222001, monster_id = 28030102, pos = { x = -4938.403, y = 206.957, z = -3952.394 }, rot = { x = 0.000, y = 111.362, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222002, monster_id = 28030102, pos = { x = -4964.618, y = 202.615, z = -3942.887 }, rot = { x = 0.000, y = 257.563, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222003, monster_id = 28030102, pos = { x = -4933.361, y = 201.921, z = -3858.234 }, rot = { x = 0.000, y = 317.136, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222004, monster_id = 28030102, pos = { x = -4926.823, y = 200.572, z = -3853.958 }, rot = { x = 0.000, y = 303.477, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222005, monster_id = 28030102, pos = { x = -4638.028, y = 200.406, z = -3970.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", climate_area_id = 10, area_id = 14 },
	{ config_id = 222006, monster_id = 28030102, pos = { x = -4641.878, y = 200.204, z = -3967.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", climate_area_id = 10, area_id = 14 },
	{ config_id = 222007, monster_id = 28030102, pos = { x = -4658.009, y = 200.207, z = -4064.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", climate_area_id = 10, area_id = 14 },
	{ config_id = 222008, monster_id = 28030102, pos = { x = -4656.330, y = 200.315, z = -4067.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", climate_area_id = 10, area_id = 14 },
	{ config_id = 222009, monster_id = 28050213, pos = { x = -4900.582, y = 206.756, z = -3883.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, pose_id = 9, area_id = 14, guest_ban_drop = 63 },
	{ config_id = 222010, monster_id = 28050213, pos = { x = -4282.553, y = 211.732, z = -3880.147 }, rot = { x = 0.000, y = 102.816, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, pose_id = 9, area_id = 14, guest_ban_drop = 63 },
	{ config_id = 222011, monster_id = 28030102, pos = { x = -4563.520, y = 200.190, z = -3856.633 }, rot = { x = 344.902, y = 222.688, z = 343.600 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222012, monster_id = 28030102, pos = { x = -4548.452, y = 200.235, z = -3865.095 }, rot = { x = 1.647, y = 118.823, z = 358.864 }, level = 30, drop_tag = "鸟类", pose_id = 901, area_id = 14 },
	{ config_id = 222013, monster_id = 28050213, pos = { x = -4344.042, y = 214.181, z = -3800.515 }, rot = { x = 0.000, y = 14.660, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, pose_id = 9, area_id = 14, guest_ban_drop = 63 },
	{ config_id = 222015, monster_id = 28030102, pos = { x = -4517.429, y = 201.118, z = -4014.525 }, rot = { x = 351.577, y = 168.951, z = 10.516 }, level = 30, drop_tag = "鸟类", pose_id = 901, climate_area_id = 10, area_id = 14 },
	{ config_id = 222016, monster_id = 28030102, pos = { x = -4520.295, y = 201.093, z = -4011.877 }, rot = { x = 346.262, y = 254.049, z = 352.331 }, level = 30, drop_tag = "鸟类", pose_id = 901, climate_area_id = 10, area_id = 14 },
	{ config_id = 222017, monster_id = 28050213, pos = { x = -4514.053, y = 201.306, z = -3970.000 }, rot = { x = 13.286, y = 290.242, z = 2.069 }, level = 30, drop_tag = "魔法生物", isOneoff = true, pose_id = 9, area_id = 14, guest_ban_drop = 63 },
	{ config_id = 222018, monster_id = 28030401, pos = { x = -4431.506, y = 217.584, z = -3785.780 }, rot = { x = 0.000, y = 111.320, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, area_id = 14 },
	{ config_id = 222019, monster_id = 28030404, pos = { x = -4430.687, y = 217.415, z = -3786.995 }, rot = { x = 0.000, y = 319.164, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 901, area_id = 14 },
	{ config_id = 222020, monster_id = 28030404, pos = { x = -4430.365, y = 217.049, z = -3785.445 }, rot = { x = 0.000, y = 272.176, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 901, area_id = 14 },
	{ config_id = 222021, monster_id = 28030102, pos = { x = -4469.808, y = 203.966, z = -4074.837 }, rot = { x = 0.000, y = 17.810, z = 0.000 }, level = 30, drop_tag = "鸟类", climate_area_id = 10, area_id = 14 },
	{ config_id = 222022, monster_id = 28010103, pos = { x = -4458.645, y = 200.088, z = -4060.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 222023, monster_id = 28010103, pos = { x = -4468.205, y = 200.385, z = -4057.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 222024, monster_id = 28030102, pos = { x = -4905.335, y = 200.000, z = -3794.995 }, rot = { x = 0.000, y = 17.062, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222025, monster_id = 28030102, pos = { x = -4901.580, y = 201.041, z = -3795.288 }, rot = { x = 0.000, y = 18.222, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222026, monster_id = 28030102, pos = { x = -4882.188, y = 200.306, z = -3822.633 }, rot = { x = 0.000, y = 81.447, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222027, monster_id = 28030102, pos = { x = -4941.066, y = 207.431, z = -3955.806 }, rot = { x = 0.000, y = 157.163, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 222043, monster_id = 28020603, pos = { x = -4802.193, y = 202.464, z = -3927.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 14 },
	{ config_id = 222044, monster_id = 28020602, pos = { x = -4797.471, y = 201.293, z = -3919.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 14 },
	{ config_id = 222048, monster_id = 28020601, pos = { x = -4670.466, y = 204.330, z = -4098.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 10, area_id = 14 }
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
		{ config_id = 222014, monster_id = 28030102, pos = { x = -4521.207, y = 200.856, z = -4010.294 }, rot = { x = 347.526, y = 250.017, z = 353.253 }, level = 30, drop_tag = "鸟类", pose_id = 901, climate_area_id = 10, area_id = 14 },
		{ config_id = 222039, monster_id = 28030204, pos = { x = -5039.202, y = 200.000, z = -3809.108 }, rot = { x = 0.000, y = 169.890, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
		{ config_id = 222041, monster_id = 28020603, pos = { x = -5028.799, y = 200.303, z = -3794.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 14 },
		{ config_id = 222042, monster_id = 28020601, pos = { x = -5031.243, y = 199.697, z = -3792.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 14 }
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
		monsters = { 222001, 222002, 222003, 222004, 222005, 222006, 222007, 222008, 222009, 222010, 222011, 222012, 222013, 222015, 222016, 222017, 222018, 222019, 222020, 222021, 222022, 222023, 222024, 222025, 222026, 222027, 222043, 222044, 222048 },
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