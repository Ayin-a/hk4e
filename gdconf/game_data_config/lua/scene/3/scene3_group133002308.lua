-- 基础信息
local base_info = {
	group_id = 133002308
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
	{ config_id = 308001, gadget_id = 70710016, pos = { x = 1879.876, y = 239.254, z = -872.099 }, rot = { x = 0.000, y = 105.369, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 308002, gadget_id = 70710017, pos = { x = 1878.670, y = 239.404, z = -876.168 }, rot = { x = 0.000, y = 103.107, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 308003, gadget_id = 70310009, pos = { x = 1877.553, y = 239.531, z = -880.266 }, rot = { x = 352.170, y = 99.929, z = 2.703 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 308004, gadget_id = 70710018, pos = { x = 1864.696, y = 238.872, z = -871.824 }, rot = { x = 0.000, y = 289.587, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 308005, gadget_id = 70710019, pos = { x = 1866.028, y = 238.926, z = -867.673 }, rot = { x = 0.000, y = 287.855, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 308006, gadget_id = 70310006, pos = { x = 1859.515, y = 238.999, z = -864.972 }, rot = { x = 0.000, y = 317.747, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 308007, gadget_id = 70310006, pos = { x = 1866.760, y = 238.962, z = -864.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 308008, gadget_id = 70310009, pos = { x = 1863.679, y = 239.406, z = -855.901 }, rot = { x = 0.000, y = 9.879, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 }
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
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 308001, 308002, 308003, 308004, 308005, 308006, 308007, 308008 },
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