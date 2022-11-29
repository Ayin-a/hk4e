-- 基础信息
local base_info = {
	group_id = 201011010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 116, monster_id = 21010101, pos = { x = 143.813, y = 1.133, z = -2.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 117, monster_id = 21010201, pos = { x = 193.621, y = 1.133, z = -2.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 118, monster_id = 21010301, pos = { x = 242.839, y = 1.133, z = -1.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 119, monster_id = 21010401, pos = { x = 287.918, y = 1.133, z = -1.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 120, monster_id = 21010501, pos = { x = 342.190, y = 1.133, z = -1.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 121, monster_id = 21010601, pos = { x = 389.282, y = 1.133, z = -2.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 122, monster_id = 21010701, pos = { x = 441.699, y = 1.133, z = -2.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 123, monster_id = 21010901, pos = { x = 486.401, y = 1.133, z = -2.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 124, monster_id = 21011001, pos = { x = 536.456, y = 1.133, z = -2.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 125, monster_id = 20011201, pos = { x = 584.520, y = 1.133, z = -2.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 126, monster_id = 20011301, pos = { x = 634.157, y = 1.133, z = -2.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 127, monster_id = 20011401, pos = { x = 686.759, y = 1.133, z = -4.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 128, monster_id = 20011501, pos = { x = 734.601, y = 1.133, z = -2.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 129, monster_id = 20010801, pos = { x = 783.600, y = 1.133, z = -2.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 130, monster_id = 20010901, pos = { x = 833.180, y = 1.133, z = -2.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 131, monster_id = 20011001, pos = { x = 835.009, y = 0.786, z = -48.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 132, monster_id = 20011101, pos = { x = 791.514, y = 0.633, z = -47.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 133, monster_id = 20010101, pos = { x = 743.447, y = 0.518, z = -46.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true, pose_id = 201 },
	{ config_id = 134, monster_id = 20010201, pos = { x = 699.768, y = 0.429, z = -47.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true, pose_id = 201 },
	{ config_id = 135, monster_id = 20010301, pos = { x = 654.448, y = 0.429, z = -47.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 136, monster_id = 20010401, pos = { x = 607.311, y = 0.633, z = -47.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 137, monster_id = 20010501, pos = { x = 563.039, y = 0.595, z = -46.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 138, monster_id = 20010601, pos = { x = 514.926, y = 0.429, z = -45.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 139, monster_id = 20010601, pos = { x = 469.614, y = 0.429, z = -43.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 140, monster_id = 20010701, pos = { x = 470.466, y = 0.429, z = -48.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 141, monster_id = 20010701, pos = { x = 423.661, y = 0.429, z = -47.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 142, monster_id = 20010501, pos = { x = 425.994, y = 0.429, z = -42.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 143, monster_id = 20010501, pos = { x = 426.518, y = 0.429, z = -49.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 144, monster_id = 21030101, pos = { x = 376.991, y = 0.286, z = -49.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 145, monster_id = 21010201, pos = { x = 381.638, y = 0.286, z = -46.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 146, monster_id = 21010201, pos = { x = 381.319, y = 0.286, z = -50.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 147, monster_id = 21030201, pos = { x = 335.538, y = 0.133, z = -47.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 148, monster_id = 21030301, pos = { x = 289.184, y = 0.133, z = -48.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 149, monster_id = 21020101, pos = { x = 243.539, y = -0.071, z = -46.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 150, monster_id = 21020201, pos = { x = 198.379, y = -0.071, z = -47.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 151, monster_id = 22010101, pos = { x = 149.137, y = 0.133, z = -47.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 152, monster_id = 22010201, pos = { x = 150.361, y = -0.177, z = -96.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 153, monster_id = 22010301, pos = { x = 199.172, y = -0.040, z = -96.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 154, monster_id = 24010101, pos = { x = 94.621, y = 0.500, z = 205.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true, pose_id = 100 },
	{ config_id = 155, monster_id = 20020101, pos = { x = 92.004, y = 0.500, z = 238.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 288, monster_id = 21010401, pos = { x = 93.127, y = 0.540, z = 176.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 289, monster_id = 21010401, pos = { x = 97.899, y = 0.540, z = 177.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
	rand_suite = true
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
		monsters = { 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 288, 289 },
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