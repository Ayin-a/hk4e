-- 基础信息
local base_info = {
	group_id = 177008056
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
	{ config_id = 56001, gadget_id = 70330153, pos = { x = -183.949, y = 185.285, z = 411.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 56003, gadget_id = 70330153, pos = { x = -169.527, y = 185.331, z = 426.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 56005, gadget_id = 70330153, pos = { x = -167.015, y = 198.334, z = 441.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 56007, gadget_id = 70330153, pos = { x = -181.535, y = 174.164, z = 446.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 56002, gadget_id = 70330153, pos = { x = -186.671, y = 184.696, z = 414.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
		{ config_id = 56004, gadget_id = 70330153, pos = { x = -173.530, y = 184.703, z = 424.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
		{ config_id = 56006, gadget_id = 70330153, pos = { x = -168.455, y = 199.170, z = 438.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 }
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
		gadgets = { 56001, 56003, 56005, 56007 },
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