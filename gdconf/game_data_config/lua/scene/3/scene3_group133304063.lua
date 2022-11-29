-- 基础信息
local base_info = {
	group_id = 133304063
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
	{ config_id = 63001, gadget_id = 70211150, pos = { x = -1578.056, y = 261.635, z = 2345.742 }, rot = { x = 20.152, y = 98.405, z = 0.052 }, level = 26, chest_drop_id = 21910041, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 63002, gadget_id = 70217020, pos = { x = -1570.040, y = 265.683, z = 2313.059 }, rot = { x = 341.037, y = 257.664, z = 6.956 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 },
	{ config_id = 63003, gadget_id = 70211131, pos = { x = -1548.385, y = 271.513, z = 2302.207 }, rot = { x = 354.205, y = 81.102, z = 347.826 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
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
		gadgets = { 63001, 63002, 63003 },
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