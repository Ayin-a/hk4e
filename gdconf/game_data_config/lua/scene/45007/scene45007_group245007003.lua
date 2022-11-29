-- 基础信息
local base_info = {
	group_id = 245007003
}

-- Trigger变量
local defs = {
	group_id = 245007003,
	gear_group_id = 245007002
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
  [1]=18,
  [2]=19, 
  [3]=20,  
}


local entrance_map={
  [2]=18,
  [4]=18,
  [8]=19,
  [16]=20,   
}

local exit_point_list={21,22}


--对应的刷怪策略
local monster_programme={
  [1]=stage_defender_oneway,
  [2]=stage_dragon_oneway,
  [3]=stage_hunter_oneway,
  [4]=stage_iceking_oneway,
  [5]=stage_rockking_oneway,
  [6]=stage_electricking_oneway, 
  [7]=stage_defender_twoway,
  [8]=stage_dragon_twoway,
  [9]=stage_hunter_twoway,
  [10]=stage_iceking_twoway,
  [11]=stage_rockking_twoway,
  [12]=stage_electricking_twoway, 
  [13]=stage_defender_threeway,
  [14]=stage_dragon_threeway,
  [15]=stage_hunter_threeway,
  [16]=stage_iceking_threeway,
  [17]=stage_rockking_threeway,
  [18]=stage_electricking_threeway, 
  [19]=stage_defender_fourway,
  [20]=stage_dragon_fourway,
  [21]=stage_hunter_fourway,
  [22]=stage_iceking_fourway,
  [23]=stage_rockking_fourway,
  [24]=stage_electricking_fourway, 
  [25]=stage_rockking_hil_twoway,
  [26]=stage_iceking_hil_twoway,
  [27]=stage_thug_twoway,
  [28]=stage_electricking_iceking_twoway,
  [29]=stage_electricking_rockking_twoway,
  [30]=stage_iceking_rockking_twoway,
  [31]=stage_thug_threeway,
  [32]=stage_iceking_rockking_fourway,
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
	{ config_id = 3001, pos = { x = 82.325, y = -6.240, z = 5.236 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3002, pos = { x = 82.281, y = -6.240, z = 3.434 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3003, pos = { x = 84.235, y = -6.240, z = 3.627 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3004, pos = { x = 82.268, y = -6.234, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3005, pos = { x = 84.958, y = -6.240, z = 1.972 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3006, pos = { x = 84.907, y = -6.240, z = 5.797 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 3013, pos = { x = 86.249, y = -6.241, z = 5.236 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3014, pos = { x = 86.205, y = -6.240, z = 3.434 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3015, pos = { x = 88.159, y = -6.240, z = 3.627 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3016, pos = { x = 86.191, y = -6.240, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3017, pos = { x = 88.882, y = -6.240, z = 1.972 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 3018, pos = { x = 88.831, y = -6.249, z = 5.797 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
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