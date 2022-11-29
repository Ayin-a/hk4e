-- 基础信息
local base_info = {
	group_id = 133220444
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
	{ config_id = 444001, gadget_id = 70350292, pos = { x = -2531.173, y = 361.749, z = -4462.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 322000131, persistent = true, area_id = 11 },
	{ config_id = 444003, gadget_id = 70690012, pos = { x = -2536.208, y = 364.758, z = -4432.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 444004, gadget_id = 70690012, pos = { x = -2511.856, y = 367.039, z = -4443.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 444005, gadget_id = 70690012, pos = { x = -2555.199, y = 362.608, z = -4462.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
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
		{ config_id = 444002, gadget_id = 70690027, pos = { x = -2543.172, y = 359.709, z = -4442.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
		{ config_id = 444006, gadget_id = 70690012, pos = { x = -2522.071, y = 360.319, z = -4432.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
		{ config_id = 444007, gadget_id = 70690027, pos = { x = -2554.141, y = 359.629, z = -4461.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
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
		gadgets = { 444001, 444003 },
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