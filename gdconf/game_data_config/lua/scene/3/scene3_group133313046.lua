-- 基础信息
local base_info = {
	group_id = 133313046
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
	{ config_id = 46001, gadget_id = 70350438, pos = { x = -559.720, y = 111.043, z = 5809.312 }, rot = { x = 343.225, y = 163.049, z = 176.979 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 46002, gadget_id = 70350438, pos = { x = -543.898, y = 117.494, z = 5816.023 }, rot = { x = 345.222, y = 162.940, z = 177.008 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 46003, gadget_id = 70350438, pos = { x = -554.416, y = 111.568, z = 5820.670 }, rot = { x = 339.227, y = 66.958, z = 264.699 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 46004, gadget_id = 70350438, pos = { x = -549.479, y = 116.817, z = 5803.906 }, rot = { x = 338.901, y = 66.365, z = 264.282 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 46005, gadget_id = 70350437, pos = { x = -565.993, y = 121.060, z = 5784.322 }, rot = { x = 335.176, y = 118.985, z = 331.461 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 46006, gadget_id = 70350437, pos = { x = -544.731, y = 121.714, z = 5843.898 }, rot = { x = 333.673, y = 120.644, z = 321.493 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 46007, gadget_id = 70350437, pos = { x = -578.488, y = 107.854, z = 5829.271 }, rot = { x = 2.554, y = 203.621, z = 313.375 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 46008, gadget_id = 70350437, pos = { x = -530.927, y = 135.053, z = 5798.548 }, rot = { x = 3.454, y = 203.247, z = 306.390 }, level = 32, state = GadgetState.GearStart, area_id = 32 }
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
		gadgets = { 46001, 46002, 46003, 46004, 46005, 46006, 46007, 46008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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