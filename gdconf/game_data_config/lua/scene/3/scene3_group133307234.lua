-- 基础信息
local base_info = {
	group_id = 133307234
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
	{ config_id = 234002, gadget_id = 70211101, pos = { x = -1062.361, y = -61.061, z = 5614.979 }, rot = { x = 8.090, y = 47.802, z = 349.229 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 234003, gadget_id = 70330342, pos = { x = -1126.779, y = -41.384, z = 5449.457 }, rot = { x = 334.543, y = 161.360, z = 356.518 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 },
	{ config_id = 234004, gadget_id = 70330342, pos = { x = -1287.644, y = 0.620, z = 5437.453 }, rot = { x = 0.000, y = 137.972, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 },
	{ config_id = 234005, gadget_id = 70330342, pos = { x = -1337.580, y = 1.290, z = 5395.553 }, rot = { x = 346.473, y = 124.255, z = 357.923 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 },
	{ config_id = 234006, gadget_id = 70330342, pos = { x = -1199.415, y = -24.384, z = 5495.652 }, rot = { x = 1.503, y = 270.170, z = 357.644 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 }
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
		gadgets = { 234002, 234003, 234004, 234005, 234006 },
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