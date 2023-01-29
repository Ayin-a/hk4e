-- 基础信息
local base_info = {
	group_id = 133313076
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
	{ config_id = 76001, gadget_id = 70350438, pos = { x = -128.641, y = 161.909, z = 5369.796 }, rot = { x = 343.231, y = 145.797, z = 167.820 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 76002, gadget_id = 70350438, pos = { x = -117.289, y = 170.890, z = 5380.938 }, rot = { x = 343.231, y = 145.797, z = 167.820 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 76003, gadget_id = 70350438, pos = { x = -127.961, y = 163.560, z = 5382.271 }, rot = { x = 328.158, y = 45.258, z = 267.868 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 76004, gadget_id = 70350438, pos = { x = -118.076, y = 169.014, z = 5367.797 }, rot = { x = 330.455, y = 45.159, z = 267.918 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 76005, gadget_id = 70350437, pos = { x = -127.048, y = 170.098, z = 5343.648 }, rot = { x = 327.612, y = 102.072, z = 318.472 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 76006, gadget_id = 70350437, pos = { x = -129.086, y = 175.620, z = 5405.487 }, rot = { x = 325.581, y = 98.074, z = 326.421 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 76007, gadget_id = 70350437, pos = { x = -152.582, y = 156.254, z = 5381.863 }, rot = { x = 7.772, y = 182.611, z = 303.190 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 76008, gadget_id = 70350437, pos = { x = -101.606, y = 190.115, z = 5367.808 }, rot = { x = 7.734, y = 181.175, z = 298.045 }, level = 30, state = GadgetState.GearStart, area_id = 32 }
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
		gadgets = { 76001, 76002, 76003, 76004, 76005, 76006, 76007, 76008 },
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