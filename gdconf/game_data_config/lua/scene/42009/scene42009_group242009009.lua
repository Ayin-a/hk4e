-- 基础信息
local base_info = {
	group_id = 242009009
}

-- Trigger变量
local defs = {
	group_id = 242009009,
	gear_group_id = 242009002
}

-- DEFS_MISCS
tide_defs = {
	[1] = { {sum = 20, min = 6, max = 6,suite=2},{sum = 20, min = 6, max = 6,suite=3},},
		
}
package_tide_defs={
        [1]={{monster_package={12001,12002,12003},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=100,max=6,min=5},{monster_package={12001,12002,12003},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=20,max=6,min=5}},
        
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
	{ config_id = 9005, pos = { x = 33.762, y = -7.700, z = -88.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9006, pos = { x = 33.719, y = -7.691, z = -90.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9007, pos = { x = 35.673, y = -7.697, z = -89.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9008, pos = { x = 33.705, y = -7.699, z = -92.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9009, pos = { x = 36.395, y = -7.700, z = -91.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9010, pos = { x = 36.345, y = -7.700, z = -87.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9011, pos = { x = 3.192, y = -7.697, z = -60.974 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 9012, pos = { x = 4.651, y = -7.700, z = -58.581 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 9013, pos = { x = 2.863, y = -7.700, z = -56.604 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 9014, pos = { x = 4.625, y = -7.698, z = -61.488 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 9015, pos = { x = 4.885, y = -7.699, z = -54.905 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 9016, pos = { x = 6.039, y = -7.700, z = -60.584 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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