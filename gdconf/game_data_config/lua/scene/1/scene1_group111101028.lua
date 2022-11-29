-- 基础信息
local base_info = {
	group_id = 111101028
}

-- Trigger变量
local defs = {
	option_id = 24,
	pointarray_ID = 110100049
}

-- DEFS_MISCS
--方尖碑configID
defs.gadget_1 = 28001
defs.gadget_2 = 28002
defs.gadget_3 = 28003

--方尖碑初始旋转角
defs.rotation_1 = 120
defs.rotation_2 = 0
defs.rotation_3 = 240

--方尖碑旋转影响的configID表
defs.gadget_connect1={}
defs.gadget_connect2={28001,28003}
defs.gadget_connect3={}

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
	{ config_id = 28001, gadget_id = 70330302, pos = { x = 2988.137, y = 266.107, z = -1336.769 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 28002, gadget_id = 70330302, pos = { x = 2988.141, y = 265.650, z = -1339.875 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 28003, gadget_id = 70330302, pos = { x = 2988.206, y = 265.218, z = -1342.824 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true }
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
		gadgets = { 28001, 28002, 28003 },
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

require "V3_1/DesertRotObelisk_Select"