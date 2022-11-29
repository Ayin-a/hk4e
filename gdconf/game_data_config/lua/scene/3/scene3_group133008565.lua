-- 基础信息
local base_info = {
	group_id = 133008565
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
	{ config_id = 565001, gadget_id = 70211145, pos = { x = 901.832, y = 198.767, z = -1155.122 }, rot = { x = 0.000, y = 208.428, z = 0.000 }, level = 26, drop_tag = "雪山玉髓高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 565002, gadget_id = 70211101, pos = { x = 900.409, y = 198.821, z = -1154.337 }, rot = { x = 0.000, y = 206.609, z = 0.000 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 565003, gadget_id = 70211101, pos = { x = 903.309, y = 198.763, z = -1155.814 }, rot = { x = 0.000, y = 208.944, z = 0.000 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
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
		gadgets = { 565001, 565002, 565003 },
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