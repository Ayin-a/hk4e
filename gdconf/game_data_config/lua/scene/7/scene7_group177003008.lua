-- 基础信息
local base_info = {
	group_id = 177003008
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
	{ config_id = 8001, gadget_id = 70330153, pos = { x = 1166.581, y = 248.805, z = -716.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 8002, gadget_id = 70330153, pos = { x = 1168.240, y = 229.334, z = -641.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 8003, gadget_id = 70330153, pos = { x = 1264.500, y = 235.500, z = -767.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 },
	{ config_id = 8004, gadget_id = 70330153, pos = { x = 1340.856, y = 259.829, z = -665.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, is_guest_can_operate = true, worktop_config = { is_persistent = true, init_options = { 700 } }, area_id = 210 }
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
		gadgets = { },
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