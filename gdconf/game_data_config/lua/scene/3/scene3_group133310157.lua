-- 基础信息
local base_info = {
	group_id = 133310157
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
	{ config_id = 157001, gadget_id = 70330342, pos = { x = -2335.329, y = 113.910, z = 4786.923 }, rot = { x = 338.396, y = 85.320, z = 357.069 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 26 },
	{ config_id = 157002, gadget_id = 70330342, pos = { x = -2304.541, y = 123.475, z = 4952.706 }, rot = { x = 344.179, y = 84.190, z = 342.500 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 157003, gadget_id = 70330342, pos = { x = -2525.193, y = 139.460, z = 4899.101 }, rot = { x = 357.558, y = 133.937, z = 337.451 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 157004, gadget_id = 70330342, pos = { x = -2308.174, y = 119.492, z = 5039.213 }, rot = { x = 4.943, y = 81.528, z = 356.904 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 157005, gadget_id = 70330342, pos = { x = -2511.349, y = 121.788, z = 4785.458 }, rot = { x = 357.139, y = 130.313, z = 359.944 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 }
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
		gadgets = { 157001, 157002, 157003, 157004, 157005 },
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