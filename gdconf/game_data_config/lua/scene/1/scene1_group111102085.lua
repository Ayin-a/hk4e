-- 基础信息
local base_info = {
	group_id = 111102085
}

-- Trigger变量
local defs = {
	play_region = 85005,
	gallery_id = 28020,
	exit_region = 85008
}

-- DEFS_MISCS
local mushroomBeastInfo = 
{
	[1]={configId=85006,maxProgress=300,normal=100,active=200,dieOut=300,patrolRoute={1,2,3,4,5,6}},
	[2]={configId=85007,maxProgress=300,normal=100,active=200,dieOut=300,patrolRoute={7,8,9,10,11,12,13}}
}

local groupInfo =
{
	pointArrayId = 110200025,
	playRegion =85005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85001, monster_id = 21010101, pos = { x = 1562.300, y = 333.923, z = -2061.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 50, drop_tag = "丘丘人" },
	{ config_id = 85002, monster_id = 21010101, pos = { x = 1574.219, y = 335.345, z = -2048.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 50, drop_tag = "丘丘人" },
	{ config_id = 85003, monster_id = 21010101, pos = { x = 1539.700, y = 331.417, z = -2050.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 50, drop_tag = "丘丘人" },
	{ config_id = 85004, monster_id = 21010101, pos = { x = 1560.020, y = 334.040, z = -2037.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 50, drop_tag = "丘丘人" },
	{ config_id = 85006, monster_id = 26090101, pos = { x = 1577.831, y = 335.698, z = -2057.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "蕈兽", affix = { 5212, 9009 }, pose_id = 101, server_global_value_config = {["SGV_MushroomMonster_Alert"]=0} },
	{ config_id = 85007, monster_id = 26090201, pos = { x = 1574.003, y = 335.083, z = -2069.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "蕈兽", affix = { 5212, 9009 }, pose_id = 101, server_global_value_config = {["SGV_MushroomMonster_Alert"]=0} }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 85005, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1560.185, y = 333.925, z = -2045.421 } },
	{ config_id = 85008, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1560.185, y = 333.925, z = -2045.421 } }
}

-- 触发器
triggers = {
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
		monsters = { 85001, 85002, 85003, 85004 },
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
		regions = { 85005, 85008 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_2/Activity_CatchMushroomMonster"