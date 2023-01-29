-- 基础信息
local base_info = {
	group_id = 133307308
}

-- Trigger变量
local defs = {
	up_flow_speed = 5,
	down_flow_speed = 10,
	overflow_speed = 15
}

-- DEFS_MISCS
local pools =
{
    [1] = 308003,  
    [2] = 308004
}

local origin_defs =
{
    origin_nozzole = 308002,
    origin_pool = pools[1],
    origin_speed = 50,
    origin_time = 20
}

local pool_defs =
{
    max = 1000,
    overflow_max = 1500,
    up_nozzole_threshold = 600
}


--填-1时，说明该池子没有对应的喷口
local nozzoles =
{
    [pools[1]] = {up_nozzole = 308006, down_nozzole = 308005},  
    [pools[2]] = {up_nozzole = 308007, down_nozzole = -1}
}

--填-1时，说明该池子没有对应的喷口
--填0时，说明该喷口不指向任何下游池子
local pool_connections =
{
    [pools[1]] = {up_nozzole = -1, down_nozzole = pools[2]},
    [pools[2]] = {up_nozzole = 0, down_nozzole = -1}
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
	{ config_id = 308001, gadget_id = 70290765, pos = { x = -1353.560, y = 21.366, z = 5368.378 }, rot = { x = 0.000, y = 141.647, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 308002, gadget_id = 70290766, pos = { x = -1353.355, y = 22.118, z = 5368.118 }, rot = { x = 359.780, y = 140.566, z = 359.793 }, level = 32, area_id = 32 },
	{ config_id = 308003, gadget_id = 70290462, pos = { x = -1353.278, y = 14.818, z = 5368.458 }, rot = { x = 0.311, y = 139.498, z = 359.006 }, level = 32, area_id = 32 },
	{ config_id = 308004, gadget_id = 70290462, pos = { x = -1351.224, y = 10.087, z = 5370.246 }, rot = { x = 0.000, y = 140.882, z = 358.980 }, level = 32, area_id = 32 },
	{ config_id = 308005, gadget_id = 70290463, pos = { x = -1351.888, y = 16.025, z = 5368.722 }, rot = { x = 357.706, y = 72.388, z = 0.620 }, level = 32, area_id = 32 },
	{ config_id = 308006, gadget_id = 70290463, pos = { x = -1353.845, y = 16.645, z = 5367.092 }, rot = { x = 0.000, y = 204.757, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 308007, gadget_id = 70290463, pos = { x = -1350.159, y = 12.120, z = 5368.729 }, rot = { x = 0.000, y = 139.738, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 308008, gadget_id = 70290462, pos = { x = -1305.062, y = 11.082, z = 5383.276 }, rot = { x = 0.000, y = 318.988, z = 0.000 }, level = 32, area_id = 32 }
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
		gadgets = { 308001, 308002, 308003, 308004, 308005, 308006, 308007, 308008 },
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

require "V3_4/SandStair"