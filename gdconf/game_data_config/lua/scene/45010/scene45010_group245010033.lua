-- 基础信息
local base_info = {
	group_id = 245010033
}

-- Trigger变量
local defs = {
	group_id = 245010033,
	gear_group_id = 245010037
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
  [1]=1,
  [2]=2,
}


local entrance_map={
  [2]=1,
  [4]=2,
}
local exit_point_list={3}  --退出点


--对应的刷怪策略
local monster_programme={
  [1]=stage_thug_twoway,
  [2]=stage_rockking_twoway,
  --[3]=stage_hunter_twoway,
  --[4]=stage_iceking_twoway,
  --[5]=stage_rockking_twoway,
  --[6]=stage_electricking_twoway, 
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
	{ config_id = 33001, pos = { x = -18.714, y = -0.352, z = -54.720 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 33002, pos = { x = -17.271, y = -0.355, z = -54.667 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 33003, pos = { x = -15.653, y = -0.359, z = -54.696 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 33004, pos = { x = -19.025, y = -0.350, z = -53.068 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 33005, pos = { x = -17.347, y = -0.348, z = -52.974 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 33006, pos = { x = -15.481, y = -0.355, z = -52.792 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 33007, pos = { x = -17.463, y = -0.347, z = -51.052 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 33008, pos = { x = -14.721, y = -0.347, z = -82.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 33009, pos = { x = -16.384, y = -0.370, z = -82.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 33010, pos = { x = -18.056, y = -0.350, z = -82.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 33011, pos = { x = -14.623, y = -0.348, z = -84.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 33012, pos = { x = -16.646, y = -0.350, z = -84.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 33013, pos = { x = -18.596, y = -0.350, z = -84.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 33014, pos = { x = -14.697, y = -0.355, z = -86.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 33015, pos = { x = -16.957, y = -0.349, z = -86.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- StartPoint2
	{ config_id = 33016, pos = { x = -13.740, y = -0.347, z = -52.769 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	-- StartPoint2
	{ config_id = 33017, pos = { x = -13.740, y = -0.347, z = -54.337 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 }
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
		-- description = Option1-1-A,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Option1-2-A,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Option1-1-B,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Option1-2-B,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Option1-1-A,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Option1-2-A,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Option1-1-B,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = Option1-2-B,
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