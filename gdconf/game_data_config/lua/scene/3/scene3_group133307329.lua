-- 基础信息
local base_info = {
	group_id = 133307329
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
    [1] = 329003,  
    [2] = 329005,
    [3] = 329004
}

local origin_defs =
{
    origin_nozzole = 329002,
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
    [pools[1]] = {up_nozzole = 329008, down_nozzole = 329007},  
    [pools[2]] = {up_nozzole = -1, down_nozzole = 329006},
    [pools[3]] = {up_nozzole = -1, down_nozzole = 329009}
}

--填-1时，说明该池子没有对应的喷口
--填0时，说明该喷口不指向任何下游池子
local pool_connections =
{
    [pools[1]] = {up_nozzole = 0, down_nozzole = pools[2]},
    [pools[2]] = {up_nozzole = -1, down_nozzole = pools[3]},
    [pools[3]] = {up_nozzole = -1, down_nozzole = 0}
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
	{ config_id = 329001, gadget_id = 70290765, pos = { x = -1479.672, y = 15.688, z = 5599.764 }, rot = { x = 359.933, y = 14.480, z = 0.003 }, level = 32, area_id = 32 },
	{ config_id = 329002, gadget_id = 70290766, pos = { x = -1479.555, y = 16.408, z = 5600.131 }, rot = { x = 1.404, y = 16.596, z = 359.551 }, level = 32, area_id = 32 },
	{ config_id = 329003, gadget_id = 70290462, pos = { x = -1479.578, y = 10.307, z = 5600.049 }, rot = { x = 0.000, y = 15.225, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 329004, gadget_id = 70290462, pos = { x = -1482.467, y = -0.931, z = 5602.962 }, rot = { x = 357.423, y = 103.436, z = 0.005 }, level = 32, area_id = 32 },
	{ config_id = 329005, gadget_id = 70290462, pos = { x = -1481.041, y = 6.001, z = 5600.543 }, rot = { x = 0.000, y = 15.225, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 329006, gadget_id = 70290463, pos = { x = -1481.785, y = 7.447, z = 5601.733 }, rot = { x = 0.000, y = 317.669, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 329007, gadget_id = 70290463, pos = { x = -1480.398, y = 11.626, z = 5601.040 }, rot = { x = 356.610, y = 317.669, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 329008, gadget_id = 70290463, pos = { x = -1478.228, y = 12.273, z = 5600.400 }, rot = { x = 357.549, y = 72.200, z = 359.659 }, level = 32, area_id = 32 },
	{ config_id = 329009, gadget_id = 70290463, pos = { x = -1481.580, y = -0.084, z = 5602.733 }, rot = { x = 359.849, y = 104.559, z = 0.000 }, level = 32, area_id = 32 }
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
		gadgets = { 329001, 329002, 329003, 329004, 329005, 329006, 329007, 329008, 329009 },
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