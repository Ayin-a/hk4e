-- 基础信息
local base_info = {
	group_id = 177008055
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
	{ config_id = 55001, gadget_id = 70330153, pos = { x = -170.030, y = 228.333, z = 303.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 55002, gadget_id = 70330153, pos = { x = -148.955, y = 237.038, z = 328.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 55003, gadget_id = 70330153, pos = { x = -96.518, y = 241.279, z = 383.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 55004, gadget_id = 70330153, pos = { x = -113.358, y = 245.646, z = 403.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 55005, gadget_id = 70330153, pos = { x = -135.817, y = 250.793, z = 503.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 55006, gadget_id = 70330153, pos = { x = -189.222, y = 238.415, z = 363.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 55007, gadget_id = 70330153, pos = { x = -192.605, y = 237.617, z = 363.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 55008, gadget_id = 70330153, pos = { x = -226.668, y = 234.605, z = 346.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 }
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
		gadgets = { 55001, 55002, 55003, 55004, 55005, 55006, 55007, 55008 },
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