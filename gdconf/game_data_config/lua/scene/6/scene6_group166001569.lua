-- 基础信息
local base_info = {
	group_id = 166001569
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
	{ config_id = 569001, gadget_id = 70290347, pos = { x = 921.261, y = 748.062, z = 318.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 569002, gadget_id = 70290347, pos = { x = 886.241, y = 734.193, z = 256.150 }, rot = { x = 0.000, y = 33.734, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 569003, gadget_id = 70290347, pos = { x = 897.172, y = 723.070, z = 161.856 }, rot = { x = 0.000, y = 336.434, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 569004, gadget_id = 70290347, pos = { x = 771.606, y = 706.166, z = 171.981 }, rot = { x = 0.000, y = 321.769, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 }
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
		gadgets = { 569001, 569002, 569003, 569004 },
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