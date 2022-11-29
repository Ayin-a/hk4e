-- 基础信息
local base_info = {
	group_id = 245012011
}

-- Trigger变量
local defs = {
	group_id = 245012011,
	gear_group_id = 245012002
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

-- 变量
variables = {
}

-- 废弃数据
garbages = {
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