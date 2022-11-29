-- 基础信息
local base_info = {
	group_id = 201052015
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
	{ config_id = 15001, gadget_id = 70211102, pos = { x = -147.093, y = 104.171, z = 105.641 }, rot = { x = 0.000, y = 350.291, z = 0.000 }, level = 6, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 15002, gadget_id = 70211112, pos = { x = -149.759, y = 104.189, z = 106.127 }, rot = { x = 0.000, y = 31.198, z = 0.000 }, level = 6, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 15003, gadget_id = 70211122, pos = { x = -151.293, y = 104.215, z = 108.225 }, rot = { x = 0.000, y = 94.291, z = 0.000 }, level = 6, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
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
		gadgets = { 15001, 15002, 15003 },
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