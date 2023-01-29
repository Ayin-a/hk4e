-- 基础信息
local base_info = {
	group_id = 133307299
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
    [1] = 299001,  
    [2] = 299002
}

local origin_defs =
{
    origin_nozzole = 299010,
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
    [pools[1]] = {up_nozzole = -1, down_nozzole = 299007},  
    [pools[2]] = {up_nozzole = -1, down_nozzole = 299008}
}

--填-1时，说明该池子没有对应的喷口
--填0时，说明该喷口不指向任何下游池子
local pool_connections =
{
    [pools[1]] = {up_nozzole = -1, down_nozzole = pools[2]},
    [pools[2]] = {up_nozzole = -1, down_nozzole = 0}
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
	{ config_id = 299001, gadget_id = 70290462, pos = { x = -1302.225, y = 5.256, z = 5757.305 }, rot = { x = 0.000, y = 194.667, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 299002, gadget_id = 70290462, pos = { x = -1302.376, y = -1.507, z = 5756.957 }, rot = { x = 0.000, y = 194.841, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 299003, gadget_id = 70290462, pos = { x = -1307.302, y = 6.577, z = 5764.389 }, rot = { x = 0.000, y = 286.369, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 299004, gadget_id = 70290765, pos = { x = -1307.035, y = 12.717, z = 5764.361 }, rot = { x = 0.000, y = 285.147, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 299005, gadget_id = 70290463, pos = { x = -1308.216, y = 7.327, z = 5764.729 }, rot = { x = 0.000, y = 289.437, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 299006, gadget_id = 70290766, pos = { x = -1307.286, y = 13.422, z = 5764.427 }, rot = { x = 359.944, y = 287.606, z = 0.253 }, level = 32, area_id = 32 },
	{ config_id = 299007, gadget_id = 70290463, pos = { x = -1302.366, y = 6.011, z = 5756.669 }, rot = { x = 0.000, y = 199.846, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 299008, gadget_id = 70290463, pos = { x = -1301.522, y = -0.454, z = 5756.158 }, rot = { x = 0.000, y = 134.796, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 299009, gadget_id = 70290765, pos = { x = -1302.152, y = 12.377, z = 5757.356 }, rot = { x = 0.000, y = 197.124, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 299010, gadget_id = 70290766, pos = { x = -1302.216, y = 13.084, z = 5757.099 }, rot = { x = 0.256, y = 193.016, z = 0.036 }, level = 32, area_id = 32 }
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
		gadgets = { 299001, 299002, 299003, 299004, 299005, 299006, 299007, 299008, 299009, 299010 },
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