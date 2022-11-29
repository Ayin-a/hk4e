-- 基础信息
local base_info = {
	group_id = 245001005
}

-- Trigger变量
local defs = {
	group_id = 245001005,
	gear_group_id = 245001002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={16036},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=12,max=5,min=5},{monster_package={16036},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=12,max=5,min=5}},
        
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
	{ config_id = 5025, pos = { x = 79.568, y = 4.616, z = -49.029 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 5026, pos = { x = 79.524, y = 4.627, z = -50.832 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 5027, pos = { x = 81.478, y = 4.626, z = -50.639 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 5028, pos = { x = 79.510, y = 4.639, z = -53.058 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 5029, pos = { x = 82.201, y = 4.624, z = -52.293 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 5030, pos = { x = 82.150, y = 4.623, z = -48.468 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 5031, pos = { x = 64.408, y = 0.549, z = -18.471 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 5032, pos = { x = 65.867, y = 0.546, z = -16.077 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 5033, pos = { x = 64.080, y = 0.553, z = -14.100 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 5034, pos = { x = 65.843, y = 0.549, z = -18.985 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 5035, pos = { x = 66.101, y = 0.557, z = -12.402 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 5036, pos = { x = 67.256, y = 0.553, z = -18.080 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 }
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