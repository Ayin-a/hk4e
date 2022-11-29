-- 基础信息
local base_info = {
	group_id = 245001003
}

-- Trigger变量
local defs = {
	group_id = 245001003,
	gear_group_id = 245001002
}

-- DEFS_MISCS
require "V2_0/TowerDefense_MonsterWaveConfig_V2.0"


route_map={
  [1]={route_points={1,2,3,4,5,6,7,8,9,10},tags=2},
  [2]={route_points={1,2,3,4,5,6,7,8,9,10},tags=4},
  [3]={route_points={1,2,3,4,5,6,7,8,9,10},tags=8},
  [4]={route_points={1,2,3,4,5,6,7,8,9,10},tags=16},
}
local entrance_point_map={
  [1]=7,
  [2]=8,
}


local entrance_map={
  [2]=7,
  [4]=8,
}
local exit_point_list={9}


--对应的刷怪策略
local monster_programme={
  [1]=stage_hunter_twoway,
  [2]=stage_defender_twoway,

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
	{ config_id = 3013, pos = { x = 78.900, y = 4.631, z = -48.935 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 3014, pos = { x = 78.856, y = 4.628, z = -50.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 3015, pos = { x = 80.810, y = 4.626, z = -50.545 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 3016, pos = { x = 78.842, y = 4.633, z = -52.964 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 3017, pos = { x = 81.532, y = 4.613, z = -52.199 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 3018, pos = { x = 81.482, y = 4.622, z = -48.374 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 3019, pos = { x = 63.603, y = 0.543, z = -18.631 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 3020, pos = { x = 65.063, y = 0.543, z = -16.237 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 3021, pos = { x = 63.275, y = 0.583, z = -14.262 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 3022, pos = { x = 65.037, y = 0.565, z = -19.144 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 3023, pos = { x = 65.296, y = 0.567, z = -12.566 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 3024, pos = { x = 66.451, y = 0.540, z = -18.240 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 }
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

require "V2_0/TowerDefense_Monster_V2.0"