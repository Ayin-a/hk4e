-- 基础信息
local base_info = {
	group_id = 133307030
}

-- Trigger变量
local defs = {
	flowerGadgetID = 30001,
	ActivateQuest1_Event = 7322302,
	ActivateQuest2_Event = 7322402
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
	-- 种子状态 0
	{ config_id = 30001, gadget_id = 70330293, pos = { x = -1826.447, y = 213.513, z = 4629.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	-- 幼苗状态 201
	{ config_id = 30002, gadget_id = 70330293, pos = { x = -1826.447, y = 213.513, z = 4629.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 26 },
	-- 花状态 204
	{ config_id = 30003, gadget_id = 70330293, pos = { x = -1826.447, y = 213.513, z = 4629.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction2, area_id = 26 },
	{ config_id = 30004, gadget_id = 70330292, pos = { x = -1833.087, y = 213.375, z = 4634.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 26 }
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
		-- description = 播种前,
		monsters = { },
		gadgets = { 30004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 播种后,
		monsters = { },
		gadgets = { 30001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 30002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 30003 },
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

require "V3_1/DesertRoseFlower_Quest"
require "V3_0/DeathFieldStandard"