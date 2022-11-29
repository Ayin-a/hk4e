-- 基础信息
local base_info = {
	group_id = 242002006
}

-- Trigger变量
local defs = {
	group_id = 242002006,
	gear_group_id = 242002002
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={12040},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=4,max=3,min=1,fill_time=8,fill_count=1},{monster_package={12023,12024,12025,12026,12027,12028},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=15,max=4,min=4}},
        
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
	{ config_id = 6015, pos = { x = 33.732, y = -7.700, z = -87.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 6016, pos = { x = 33.689, y = -7.695, z = -89.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 6017, pos = { x = 35.643, y = -7.700, z = -89.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 6018, pos = { x = 33.675, y = -7.698, z = -91.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 6021, pos = { x = 36.365, y = -7.700, z = -90.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 6022, pos = { x = 36.315, y = -7.699, z = -86.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 6023, pos = { x = 2.232, y = -7.698, z = -61.236 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6024, pos = { x = 3.691, y = -7.700, z = -58.843 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6025, pos = { x = 1.904, y = -7.699, z = -56.866 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6026, pos = { x = 3.666, y = -7.698, z = -61.750 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6027, pos = { x = 3.925, y = -7.698, z = -55.168 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6028, pos = { x = 5.080, y = -7.695, z = -60.846 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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