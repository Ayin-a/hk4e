-- 基础信息
local base_info = {
	group_id = 155005223
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
	{ config_id = 223003, gadget_id = 70217012, pos = { x = 293.774, y = 153.696, z = 858.529 }, rot = { x = 344.970, y = 181.416, z = 13.974 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 223004, gadget_id = 70217012, pos = { x = 446.120, y = 136.332, z = 1006.163 }, rot = { x = 9.723, y = 218.856, z = 359.177 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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
		{ config_id = 223001, gadget_id = 70217012, pos = { x = 239.392, y = 153.339, z = 954.534 }, rot = { x = 353.673, y = 1.531, z = 344.706 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 223002, gadget_id = 70217012, pos = { x = 360.252, y = 120.610, z = 947.945 }, rot = { x = 0.000, y = 324.969, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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
		gadgets = { 223003, 223004 },
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