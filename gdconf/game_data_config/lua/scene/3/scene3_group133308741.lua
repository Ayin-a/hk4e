-- 基础信息
local base_info = {
	group_id = 133308741
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
	{ config_id = 741001, gadget_id = 70290462, pos = { x = -1549.805, y = 17.599, z = 5075.004 }, rot = { x = 0.820, y = 250.290, z = 0.219 }, level = 32, area_id = 32 },
	{ config_id = 741002, gadget_id = 70290765, pos = { x = -1549.587, y = 24.662, z = 5075.033 }, rot = { x = 0.000, y = 250.098, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 741003, gadget_id = 70290766, pos = { x = -1550.202, y = 25.366, z = 5074.800 }, rot = { x = 0.000, y = 247.690, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 741004, gadget_id = 70290463, pos = { x = -1550.820, y = 18.471, z = 5074.609 }, rot = { x = 359.848, y = 250.802, z = 0.000 }, level = 32, area_id = 32 }
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
		gadgets = { 741001, 741002, 741003, 741004 },
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