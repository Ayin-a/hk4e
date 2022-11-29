-- 基础信息
local base_info = {
	group_id = 245005003
}

-- Trigger变量
local defs = {
	group_id = 245005003,
	gear_group_id = 245005002
}

-- DEFS_MISCS
require "V2_0/TowerDefense_MonsterWaveConfig_V2.0"

route_map={
  [1]={route_points={1,2,3,4,5,6,7,8,9,10},tags=2},
  [2]={route_points={1,2,3,4,5,6,7,8,9,10},tags=4},
  --[3]={route_points={1,2,3,4,5,6,7,8,9,10},tags=8},
  --[4]={route_points={1,2,3,4,5,6,7,8,9,10},tags=16},
}

local entrance_point_map={
  [1]=19,
  [2]=20,
  --[3]=19, 
  --[4]=20,  
}


local entrance_map={
  [2]=20,
  [4]=19,
  --[8]=19,
  --[16]=20,   
}

local exit_point_list={21,18}


--对应的刷怪策略
local monster_programme={
  [1]=stage_electricking_twoway,
  [2]=stage_iceking_twoway,
  [3]=stage_rockking_twoway,
  --[4]=stage_defender_twoway,
  --[5]=stage_electricking_twoway,
  --[6]=stage_defender_twoway, 
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
	{ config_id = 3001, pos = { x = 57.302, y = -2.375, z = -4.056 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3002, pos = { x = 57.259, y = -2.376, z = -5.858 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3003, pos = { x = 60.211, y = -2.376, z = -3.823 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3004, pos = { x = 60.159, y = -2.370, z = -5.801 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3005, pos = { x = 62.198, y = -2.376, z = -5.077 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3006, pos = { x = 62.147, y = -2.375, z = -3.494 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3013, pos = { x = 108.827, y = -2.362, z = -55.101 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3014, pos = { x = 108.783, y = -2.361, z = -56.903 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3015, pos = { x = 110.737, y = -2.360, z = -56.710 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3016, pos = { x = 108.770, y = -2.361, z = -59.130 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3017, pos = { x = 111.460, y = -2.265, z = -58.365 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3018, pos = { x = 111.409, y = -2.285, z = -54.540 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3019, pos = { x = 59.262, y = -2.376, z = -9.069 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 3020, pos = { x = 60.721, y = -2.374, z = -6.676 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 3021, pos = { x = 58.933, y = -2.389, z = -4.698 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 3022, pos = { x = 60.695, y = -2.377, z = -9.583 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 3023, pos = { x = 60.955, y = -2.375, z = -3.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 3024, pos = { x = 62.109, y = -2.384, z = -8.679 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 3025, pos = { x = 106.907, y = -2.363, z = -58.418 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 16 },
	{ config_id = 3026, pos = { x = 108.366, y = -2.362, z = -56.024 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 16 },
	{ config_id = 3027, pos = { x = 106.578, y = -2.363, z = -54.047 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 16 },
	{ config_id = 3028, pos = { x = 108.340, y = -2.362, z = -58.932 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 16 },
	{ config_id = 3029, pos = { x = 110.433, y = -2.361, z = -54.440 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 16 },
	{ config_id = 3030, pos = { x = 109.754, y = -2.361, z = -58.027 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 16 }
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