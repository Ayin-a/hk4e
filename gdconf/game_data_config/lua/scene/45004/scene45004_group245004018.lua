-- 基础信息
local base_info = {
	group_id = 245004018
}

-- Trigger变量
local defs = {
	group_id = 245004018,
	gear_group_id = 245004001
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
  [1]=13,
  [2]=10,
  --[3]=12, 
}


local entrance_map={
  [2]=13,
  [4]=10,
  --[8]=12, 
}

local exit_point_list={11,12}

--对应的刷怪策略
local monster_programme={
  [1]=stage_thug_twoway,
  [2]=stage_dragon_twoway,
  --[3]=stage_rockking_twoway,
  --[4]=stage_defender_twoway,
  --[5]=stage_rockking_twoway,
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
	-- StartPoint1
	{ config_id = 18018, pos = { x = 108.112, y = -9.646, z = -52.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18019, pos = { x = 105.625, y = -9.646, z = -52.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18020, pos = { x = 102.999, y = -9.642, z = -52.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18021, pos = { x = 102.701, y = -9.668, z = -54.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18022, pos = { x = 105.770, y = -9.603, z = -54.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18023, pos = { x = 108.679, y = -9.646, z = -54.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18024, pos = { x = 102.903, y = -9.666, z = -56.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18025, pos = { x = 106.277, y = -9.646, z = -56.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18026, pos = { x = 109.141, y = -9.668, z = -56.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- StartPoint2
	{ config_id = 18027, pos = { x = 104.246, y = -9.634, z = 15.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18028, pos = { x = 106.560, y = -9.634, z = 15.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18029, pos = { x = 109.158, y = -9.631, z = 15.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18030, pos = { x = 109.059, y = -9.634, z = 17.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18031, pos = { x = 106.691, y = -9.634, z = 17.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18032, pos = { x = 103.951, y = -9.634, z = 17.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18033, pos = { x = 103.961, y = -9.634, z = 20.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18034, pos = { x = 106.337, y = -9.637, z = 20.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18035, pos = { x = 109.136, y = -9.639, z = 20.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_0/TowerDefense_Monster_V2.0"