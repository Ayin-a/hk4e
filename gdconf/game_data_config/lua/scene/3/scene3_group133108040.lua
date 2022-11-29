-- 基础信息
local base_info = {
	group_id = 133108040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40001, monster_id = 28030101, pos = { x = -293.962, y = 200.131, z = -858.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 40002, monster_id = 28030101, pos = { x = -287.346, y = 245.500, z = -913.110 }, rot = { x = 0.000, y = 338.520, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40003, monster_id = 28030101, pos = { x = -262.486, y = 203.697, z = -842.509 }, rot = { x = 0.000, y = 94.799, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 40004, monster_id = 28030101, pos = { x = -264.871, y = 208.869, z = -832.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 40005, monster_id = 28030101, pos = { x = -238.256, y = 260.822, z = -956.487 }, rot = { x = 0.000, y = 65.190, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40006, monster_id = 28030101, pos = { x = -247.395, y = 280.739, z = -991.430 }, rot = { x = 0.000, y = 295.781, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40007, monster_id = 28030101, pos = { x = -247.117, y = 280.147, z = -989.543 }, rot = { x = 0.000, y = 344.129, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40008, monster_id = 28030101, pos = { x = -254.267, y = 275.195, z = -1006.777 }, rot = { x = 0.000, y = 305.145, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40009, monster_id = 28030101, pos = { x = -295.300, y = 200.744, z = -825.532 }, rot = { x = 0.000, y = 277.141, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40010, monster_id = 28030101, pos = { x = -249.389, y = 277.655, z = -997.460 }, rot = { x = 0.000, y = 305.145, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40011, monster_id = 28030101, pos = { x = -294.688, y = 200.055, z = -860.388 }, rot = { x = 0.000, y = 232.585, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40012, monster_id = 28030101, pos = { x = -179.077, y = 205.801, z = -928.565 }, rot = { x = 0.000, y = 218.293, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40013, monster_id = 28030101, pos = { x = -176.448, y = 200.000, z = -959.503 }, rot = { x = 0.000, y = 233.748, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40014, monster_id = 28030101, pos = { x = -172.843, y = 200.000, z = -958.703 }, rot = { x = 0.000, y = 172.750, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40015, monster_id = 28030101, pos = { x = -281.243, y = 200.436, z = -828.949 }, rot = { x = 0.000, y = 7.297, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40016, monster_id = 28030101, pos = { x = -284.713, y = 200.355, z = -824.615 }, rot = { x = 0.000, y = 233.748, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40017, monster_id = 28030101, pos = { x = -282.606, y = 200.276, z = -823.950 }, rot = { x = 0.000, y = 305.145, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40018, monster_id = 28030101, pos = { x = -14.864, y = 202.773, z = -122.534 }, rot = { x = 0.000, y = 233.748, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40019, monster_id = 28030101, pos = { x = -13.476, y = 202.501, z = -123.819 }, rot = { x = 0.000, y = 187.521, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40021, monster_id = 28030101, pos = { x = -231.229, y = 200.392, z = -927.074 }, rot = { x = 0.000, y = 33.765, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 40022, monster_id = 28030101, pos = { x = -52.759, y = 202.317, z = -932.359 }, rot = { x = 0.000, y = 60.673, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 40024, monster_id = 28030101, pos = { x = -35.296, y = 200.000, z = -885.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 40025, monster_id = 28030101, pos = { x = -36.711, y = 200.001, z = -888.562 }, rot = { x = 0.000, y = 303.712, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 901, area_id = 7 }
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
		monsters = { 40001, 40002, 40003, 40004, 40005, 40006, 40007, 40008, 40009, 40010, 40011, 40012, 40013, 40014, 40015, 40016, 40017, 40018, 40019, 40021, 40022, 40024, 40025 },
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