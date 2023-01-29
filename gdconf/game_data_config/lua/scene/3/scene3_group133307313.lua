-- 基础信息
local base_info = {
	group_id = 133307313
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
    [1] = 313003,  
    [2] = 313004,
    [3] = 313006
}

local origin_defs =
{
    origin_nozzole = 313002,
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
    [pools[1]] = {up_nozzole = 313007, down_nozzole = 313005},  
    [pools[2]] = {up_nozzole = -1, down_nozzole = 313008},
    [pools[3]] = {up_nozzole = 313009, down_nozzole = -1}
}

--填-1时，说明该池子没有对应的喷口
--填0时，说明该喷口不指向任何下游池子
local pool_connections =
{
    [pools[1]] = {up_nozzole = pools[2], down_nozzole = 0},
    [pools[2]] = {up_nozzole = -1, down_nozzole = pools[3]},
    [pools[3]] = {up_nozzole = 0, down_nozzole = -1}
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
	{ config_id = 313001, gadget_id = 70290765, pos = { x = -1266.292, y = -5.087, z = 5449.682 }, rot = { x = 0.000, y = 153.641, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 313002, gadget_id = 70290766, pos = { x = -1266.031, y = -4.347, z = 5449.027 }, rot = { x = 0.000, y = 157.885, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 313003, gadget_id = 70290462, pos = { x = -1266.169, y = -12.313, z = 5449.435 }, rot = { x = 0.000, y = 156.697, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 313004, gadget_id = 70290462, pos = { x = -1268.385, y = -18.009, z = 5445.790 }, rot = { x = 0.000, y = 65.623, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 313005, gadget_id = 70290463, pos = { x = -1265.704, y = -11.511, z = 5448.452 }, rot = { x = 358.751, y = 150.648, z = 359.256 }, level = 32, area_id = 32 },
	{ config_id = 313006, gadget_id = 70290462, pos = { x = -1266.169, y = -23.625, z = 5449.435 }, rot = { x = 0.000, y = 156.697, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 313007, gadget_id = 70290463, pos = { x = -1266.992, y = -10.733, z = 5447.985 }, rot = { x = 359.139, y = 209.629, z = 357.127 }, level = 32, area_id = 32 },
	{ config_id = 313008, gadget_id = 70290463, pos = { x = -1267.762, y = -16.582, z = 5447.402 }, rot = { x = 0.000, y = 28.614, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 313009, gadget_id = 70290463, pos = { x = -1264.882, y = -22.064, z = 5449.226 }, rot = { x = 355.781, y = 100.374, z = 0.000 }, level = 32, area_id = 32 }
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
		gadgets = { 313001, 313002, 313003, 313004, 313005, 313006, 313007, 313008, 313009 },
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