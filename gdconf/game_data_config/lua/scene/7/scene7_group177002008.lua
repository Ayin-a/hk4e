-- 基础信息
local base_info = {
	group_id = 177002008
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
	{ config_id = 8001, gadget_id = 70330153, pos = { x = 1468.999, y = 203.320, z = 822.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 8002, gadget_id = 70330153, pos = { x = 1351.965, y = 180.123, z = 837.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 8003, gadget_id = 70330153, pos = { x = 1329.770, y = 193.794, z = 828.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 8004, gadget_id = 70330153, pos = { x = 1309.581, y = 224.436, z = 714.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 8005, gadget_id = 70330153, pos = { x = 1341.427, y = 232.342, z = 726.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005 },
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

require "V2_5/Watcher_Energy"