-- 基础信息
local base_info = {
	group_id = 133107097
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 97001, monster_id = 20011101, pos = { x = -724.307, y = 217.321, z = 662.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1001004, disableWander = true, area_id = 7 },
	{ config_id = 97002, monster_id = 20011101, pos = { x = -724.047, y = 217.286, z = 664.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1001004, disableWander = true, area_id = 7 },
	{ config_id = 97003, monster_id = 20011101, pos = { x = -720.815, y = 216.339, z = 658.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1001004, disableWander = true, area_id = 7 },
	{ config_id = 97004, monster_id = 20011101, pos = { x = -728.239, y = 217.200, z = 669.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1001004, disableWander = true, area_id = 7 },
	{ config_id = 97005, monster_id = 20011101, pos = { x = -726.625, y = 217.200, z = 668.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1001004, disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 97001, 97002, 97003, 97004, 97005 },
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