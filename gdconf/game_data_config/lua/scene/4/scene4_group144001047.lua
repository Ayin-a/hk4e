-- 基础信息
local base_info = {
	group_id = 144001047
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
	{ config_id = 47001, gadget_id = 70211101, pos = { x = 340.426, y = 156.938, z = 158.107 }, rot = { x = 15.347, y = 141.895, z = 1.243 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 47003, gadget_id = 70211101, pos = { x = 150.968, y = 136.530, z = 283.633 }, rot = { x = 0.000, y = 68.781, z = 342.346 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 47004, gadget_id = 70211101, pos = { x = 221.339, y = 185.984, z = 139.494 }, rot = { x = 0.000, y = 119.559, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 47006, gadget_id = 70211101, pos = { x = 143.893, y = 190.436, z = 281.667 }, rot = { x = 0.000, y = 84.447, z = 357.840 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
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
		gadgets = { 47001, 47003, 47004, 47006 },
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