-- 基础信息
local base_info = {
	group_id = 245005007
}

-- Trigger变量
local defs = {
	group_id = 245005007,
	gear_group_id = 245005002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12019},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12019},route=2,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12040},route=3,route_points={1,2,3,4,5,6,7,8},tags=4,count=4,max=1,min=1,fill_time=8,fill_count=1},{monster_package={12040},route=4,route_points={1,2,3,4,5,6,7,8},tags=8,count=4,max=1,min=1,fill_time=8,fill_count=1}},
        
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 7003, pos = { x = 86.191, y = -6.240, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7004, pos = { x = 88.298, y = -6.248, z = 6.316 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7005, pos = { x = 88.276, y = -6.241, z = 3.884 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7006, pos = { x = 86.191, y = -6.242, z = 5.533 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7009, pos = { x = 86.191, y = -6.240, z = 3.471 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7010, pos = { x = 88.479, y = -6.241, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7011, pos = { x = 59.372, y = -2.376, z = -9.287 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 7012, pos = { x = 60.831, y = -2.376, z = -6.893 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 7013, pos = { x = 59.044, y = -2.377, z = -4.916 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 7014, pos = { x = 60.805, y = -2.377, z = -9.801 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 7015, pos = { x = 61.065, y = -2.375, z = -3.218 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 7016, pos = { x = 62.220, y = -2.383, z = -8.896 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 7017, pos = { x = 107.328, y = -2.363, z = -59.055 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 7018, pos = { x = 108.787, y = -2.361, z = -56.662 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 7019, pos = { x = 106.999, y = -2.364, z = -54.685 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 7020, pos = { x = 108.761, y = -2.361, z = -59.569 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 7021, pos = { x = 110.854, y = -2.360, z = -55.077 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 7022, pos = { x = 110.175, y = -2.360, z = -58.665 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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

require "TowerDefense_Monster02"