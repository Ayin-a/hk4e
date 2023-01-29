-- 基础信息
local base_info = {
	group_id = 133314324
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 324002, monster_id = 23050101, pos = { x = -586.822, y = 172.022, z = 4216.337 }, rot = { x = 0.000, y = 148.694, z = 0.000 }, level = 32, drop_tag = "藏镜侍女", disableWander = true, area_id = 32 },
	{ config_id = 324003, monster_id = 25310101, pos = { x = -583.894, y = 172.457, z = 4213.547 }, rot = { x = 0.000, y = 331.158, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 324001, gadget_id = 70330342, pos = { x = -583.359, y = 172.225, z = 4219.221 }, rot = { x = 16.358, y = 286.518, z = 2.991 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 },
	{ config_id = 324004, gadget_id = 70210101, pos = { x = -582.448, y = 172.955, z = 4221.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 324005, gadget_id = 70210101, pos = { x = -581.429, y = 173.876, z = 4220.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 324006, gadget_id = 70210101, pos = { x = -616.423, y = 159.487, z = 4228.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
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
		monsters = { 324002, 324003 },
		gadgets = { 324001, 324004, 324005, 324006 },
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