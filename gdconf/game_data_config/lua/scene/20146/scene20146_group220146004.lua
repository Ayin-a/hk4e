-- 基础信息
local base_info = {
	group_id = 220146004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 26090101, pos = { x = 350.497, y = 77.635, z = 686.336 }, rot = { x = 0.000, y = 357.229, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 },
	{ config_id = 4002, monster_id = 26090101, pos = { x = 340.240, y = 77.914, z = 681.817 }, rot = { x = 0.000, y = 276.024, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4003, gadget_id = 70210101, pos = { x = 339.206, y = 78.312, z = 681.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true },
	{ config_id = 4004, gadget_id = 70210101, pos = { x = 348.673, y = 77.472, z = 686.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true }
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
		gadgets = { 4003, 4004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4002 },
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