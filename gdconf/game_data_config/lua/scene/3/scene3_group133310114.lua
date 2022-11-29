-- 基础信息
local base_info = {
	group_id = 133310114
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
	{ config_id = 114001, gadget_id = 70330342, pos = { x = -2706.961, y = 227.412, z = 4642.138 }, rot = { x = 0.000, y = 280.627, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 28 },
	{ config_id = 114002, gadget_id = 70330342, pos = { x = -2735.505, y = 196.727, z = 4556.893 }, rot = { x = 359.159, y = 320.968, z = 359.931 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 28 },
	{ config_id = 114003, gadget_id = 70330342, pos = { x = -2709.971, y = 283.284, z = 4815.109 }, rot = { x = 339.264, y = 200.761, z = 352.778 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 28 },
	{ config_id = 114004, gadget_id = 70330342, pos = { x = -2705.938, y = 282.233, z = 4756.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 28 }
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
		gadgets = { 114001, 114002, 114003, 114004 },
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