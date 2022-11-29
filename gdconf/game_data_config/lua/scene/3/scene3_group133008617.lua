-- 基础信息
local base_info = {
	group_id = 133008617
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 617001, monster_id = 28020601, pos = { x = 1088.393, y = 408.652, z = -705.458 }, rot = { x = 0.000, y = 78.671, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 617002, monster_id = 28020601, pos = { x = 1103.924, y = 411.034, z = -701.190 }, rot = { x = 0.000, y = 167.887, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 617003, monster_id = 28020601, pos = { x = 1088.950, y = 408.949, z = -706.617 }, rot = { x = 0.000, y = 150.795, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 617004, monster_id = 28030204, pos = { x = 1314.709, y = 405.109, z = -885.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", climate_area_id = 1, area_id = 10 },
	{ config_id = 617005, monster_id = 28030101, pos = { x = 1351.723, y = 413.241, z = -889.707 }, rot = { x = 0.000, y = 136.927, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 },
	{ config_id = 617009, monster_id = 28030101, pos = { x = 833.262, y = 404.569, z = -615.371 }, rot = { x = 0.000, y = 59.735, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 }
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
		{ config_id = 617006, monster_id = 28050103, pos = { x = 1196.063, y = 417.513, z = -682.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
		{ config_id = 617007, monster_id = 28050103, pos = { x = 1194.152, y = 419.437, z = -683.387 }, rot = { x = 0.000, y = 257.663, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
		{ config_id = 617008, monster_id = 28050103, pos = { x = 1193.245, y = 418.643, z = -684.132 }, rot = { x = 0.000, y = 73.113, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
		{ config_id = 617010, monster_id = 28020305, pos = { x = 1054.910, y = 391.333, z = -680.690 }, rot = { x = 14.452, y = 293.540, z = 331.854 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 }
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
		monsters = { 617001, 617002, 617003, 617004, 617005, 617009 },
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