-- 基础信息
local base_info = {
	group_id = 133302690
}

-- Trigger变量
local defs = {
	play_region = 690004,
	gallery_id = 28019,
	exit_region = 690005
}

-- DEFS_MISCS
local mushroomBeastInfo = 
{
    [1]={configId=690001,maxProgress=1000,normal=600,active=1200,dieOut=400,patrolRoute={1,2,5,6,7}},
    [2]={configId=690002,maxProgress=1000,normal=600,active=1200,dieOut=400,patrolRoute={8,9,10,11,12}}
}

local groupInfo =
{
    pointArrayId = 330200014,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 690001, monster_id = 26090191, pos = { x = -1492.091, y = 200.082, z = 2701.092 }, rot = { x = 0.000, y = 201.791, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 5212, 9009 }, pose_id = 101, area_id = 21 },
	{ config_id = 690002, monster_id = 26091091, pos = { x = -1512.666, y = 202.726, z = 2690.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 5212, 9009 }, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 690003, gadget_id = 70290659, pos = { x = -1486.038, y = 200.832, z = 2694.475 }, rot = { x = 0.000, y = 6.253, z = 0.000 }, level = 27, area_id = 21 },
	{ config_id = 690006, gadget_id = 70220103, pos = { x = -1492.005, y = 204.293, z = 2730.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 690007, gadget_id = 70220103, pos = { x = -1465.155, y = 205.121, z = 2690.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 690004, shape = RegionShape.SPHERE, radius = 55, pos = { x = -1484.322, y = 201.673, z = 2700.425 }, area_id = 21 },
	-- exit
	{ config_id = 690005, shape = RegionShape.SPHERE, radius = 58, pos = { x = -1484.322, y = 201.673, z = 2700.425 }, area_id = 21 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 690008, gadget_id = 70800236, pos = { x = -1517.038, y = 204.100, z = 2684.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 690010, gadget_id = 70800236, pos = { x = -1496.504, y = 203.254, z = 2679.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
	}
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
		gadgets = { 690003, 690006, 690007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 690004, 690005 },
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