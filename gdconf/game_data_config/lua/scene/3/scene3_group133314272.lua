-- 基础信息
local base_info = {
	group_id = 133314272
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
    [1] = 741003
}

local origin_defs =
{
    origin_nozzole = 741001,
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
    [pools[1]] = {up_nozzole = -1, down_nozzole = 741004}
}

--填-1时，说明该池子没有对应的喷口
--填0时，说明该喷口不指向任何下游池子
local pool_connections =
{
    [pools[1]] = {up_nozzole = -1, down_nozzole = 0}
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
	{ config_id = 272001, gadget_id = 70290462, pos = { x = -601.615, y = 177.587, z = 4841.075 }, rot = { x = 2.172, y = 322.223, z = 359.721 }, level = 32, area_id = 32 },
	{ config_id = 272002, gadget_id = 70290765, pos = { x = -600.823, y = 190.964, z = 4841.447 }, rot = { x = 1.351, y = 322.038, z = 359.498 }, level = 32, area_id = 32 },
	{ config_id = 272003, gadget_id = 70290766, pos = { x = -601.139, y = 191.670, z = 4841.870 }, rot = { x = 1.329, y = 319.630, z = 359.441 }, level = 32, area_id = 32 },
	{ config_id = 272004, gadget_id = 70290463, pos = { x = -602.630, y = 178.459, z = 4840.680 }, rot = { x = 1.206, y = 322.744, z = 359.515 }, level = 32, area_id = 32 }
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
		gadgets = { 272001, 272002, 272003, 272004 },
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