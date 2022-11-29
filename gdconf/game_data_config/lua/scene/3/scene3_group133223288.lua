-- 基础信息
local base_info = {
	group_id = 133223288
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 288001, monster_id = 28020201, pos = { x = -6282.482, y = 200.957, z = -3181.576 }, rot = { x = 0.000, y = 96.507, z = 0.000 }, level = 33, drop_tag = "走兽", area_id = 18 },
	{ config_id = 288004, monster_id = 28020201, pos = { x = -6179.179, y = 203.498, z = -3263.265 }, rot = { x = 0.000, y = 205.986, z = 0.000 }, level = 33, drop_tag = "走兽", area_id = 18 },
	{ config_id = 288005, monster_id = 28030404, pos = { x = -6201.804, y = 202.401, z = -3233.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, area_id = 18 },
	{ config_id = 288006, monster_id = 28030404, pos = { x = -6201.274, y = 201.083, z = -3231.359 }, rot = { x = 0.000, y = 210.709, z = 0.000 }, level = 33, drop_tag = "鸟类", area_id = 18 },
	{ config_id = 288007, monster_id = 28030102, pos = { x = -6163.674, y = 204.536, z = -3015.824 }, rot = { x = 0.000, y = 113.654, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288008, monster_id = 28030102, pos = { x = -6152.056, y = 200.549, z = -2990.695 }, rot = { x = 0.000, y = 94.145, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288009, monster_id = 28030102, pos = { x = -6093.780, y = 200.167, z = -2793.857 }, rot = { x = 0.000, y = 319.270, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288011, monster_id = 28030102, pos = { x = -6115.418, y = 200.081, z = -2661.996 }, rot = { x = 0.000, y = 72.401, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 901, climate_area_id = 7, area_id = 18 },
	{ config_id = 288014, monster_id = 28030102, pos = { x = -6537.784, y = 200.000, z = -2675.192 }, rot = { x = 0.000, y = 345.958, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288015, monster_id = 28030306, pos = { x = -6136.511, y = 202.240, z = -2547.920 }, rot = { x = 0.000, y = 58.385, z = 0.000 }, level = 33, drop_tag = "鸟类", climate_area_id = 7, area_id = 18 },
	{ config_id = 288016, monster_id = 28030306, pos = { x = -6311.844, y = 253.598, z = -2535.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288017, monster_id = 28020201, pos = { x = -6333.781, y = 256.053, z = -2509.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "走兽", climate_area_id = 7, area_id = 18 },
	{ config_id = 288018, monster_id = 28030306, pos = { x = -6145.522, y = 209.929, z = -2505.072 }, rot = { x = 0.000, y = 235.755, z = 0.000 }, level = 33, drop_tag = "鸟类", climate_area_id = 7, area_id = 18 },
	{ config_id = 288019, monster_id = 28030102, pos = { x = -6196.112, y = 200.575, z = -3036.336 }, rot = { x = 0.000, y = 282.983, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288020, monster_id = 28030102, pos = { x = -6214.259, y = 200.950, z = -3054.398 }, rot = { x = 0.000, y = 142.741, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288022, monster_id = 28020301, pos = { x = -6082.014, y = 200.919, z = -2480.413 }, rot = { x = 0.000, y = 205.255, z = 0.000 }, level = 33, drop_tag = "走兽", climate_area_id = 7, area_id = 18 },
	{ config_id = 288023, monster_id = 28020301, pos = { x = -6118.019, y = 204.707, z = -2483.637 }, rot = { x = 0.000, y = 160.632, z = 0.000 }, level = 33, drop_tag = "走兽", climate_area_id = 7, area_id = 18 },
	{ config_id = 288024, monster_id = 28020301, pos = { x = -6326.661, y = 211.987, z = -2883.088 }, rot = { x = 0.000, y = 205.905, z = 0.000 }, level = 33, drop_tag = "走兽", climate_area_id = 7, area_id = 18 },
	{ config_id = 288026, monster_id = 28030102, pos = { x = -6392.458, y = 249.107, z = -2576.852 }, rot = { x = 0.000, y = 108.906, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288028, monster_id = 28020301, pos = { x = -6048.615, y = 210.051, z = -3260.776 }, rot = { x = 0.000, y = 47.105, z = 0.000 }, level = 33, drop_tag = "走兽", area_id = 18 },
	{ config_id = 288032, monster_id = 28020102, pos = { x = -6191.271, y = 220.782, z = -2502.266 }, rot = { x = 0.462, y = 85.453, z = 5.789 }, level = 33, drop_tag = "走兽", climate_area_id = 7, area_id = 18 },
	{ config_id = 288033, monster_id = 28030102, pos = { x = -6501.719, y = 200.818, z = -2714.338 }, rot = { x = 0.000, y = 345.958, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 2, climate_area_id = 7, area_id = 18 },
	{ config_id = 288057, monster_id = 28030306, pos = { x = -6166.045, y = 217.669, z = -2483.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "鸟类", climate_area_id = 7, area_id = 18 },
	{ config_id = 288058, monster_id = 28030306, pos = { x = -6165.968, y = 219.228, z = -2481.062 }, rot = { x = 0.000, y = 211.024, z = 0.000 }, level = 33, drop_tag = "鸟类", climate_area_id = 7, area_id = 18 }
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
		monsters = { 288001, 288004, 288005, 288006, 288007, 288008, 288009, 288011, 288014, 288015, 288016, 288017, 288018, 288019, 288020, 288022, 288023, 288024, 288026, 288028, 288032, 288033, 288057, 288058 },
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