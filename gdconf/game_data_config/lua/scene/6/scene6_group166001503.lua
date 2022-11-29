-- 基础信息
local base_info = {
	group_id = 166001503
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
	{ config_id = 503001, gadget_id = 70710078, pos = { x = 616.911, y = 414.255, z = 476.463 }, rot = { x = 14.133, y = 92.292, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 503002, gadget_id = 70710078, pos = { x = 616.514, y = 414.547, z = 474.525 }, rot = { x = 6.038, y = 358.901, z = 349.665 }, level = 36, area_id = 300 },
	{ config_id = 503003, gadget_id = 70710706, pos = { x = 606.364, y = 414.481, z = 447.453 }, rot = { x = 314.888, y = 245.478, z = 24.606 }, level = 36, area_id = 300 },
	{ config_id = 503004, gadget_id = 70210101, pos = { x = 616.612, y = 414.383, z = 475.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050184, drop_count = 1, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 503005, gadget_id = 70210101, pos = { x = 608.322, y = 414.701, z = 447.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050184, drop_count = 1, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 503006, gadget_id = 70710078, pos = { x = 608.201, y = 414.877, z = 446.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 503007, gadget_id = 70710078, pos = { x = 608.126, y = 414.589, z = 448.207 }, rot = { x = 1.648, y = 216.744, z = 346.102 }, level = 36, area_id = 300 },
	{ config_id = 503008, gadget_id = 70310004, pos = { x = 614.780, y = 413.069, z = 461.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 503009, gadget_id = 70300087, pos = { x = 619.229, y = 413.276, z = 464.189 }, rot = { x = 4.000, y = 0.053, z = 2.343 }, level = 36, persistent = true, area_id = 300 }
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
		-- description = ,
		monsters = { },
		gadgets = { 503001, 503002, 503003, 503006, 503007, 503008, 503009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 503003, 503004, 503005, 503008, 503009 },
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