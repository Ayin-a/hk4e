-- 基础信息
local base_info = {
	group_id = 133210474
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
	{ config_id = 474002, gadget_id = 70500000, pos = { x = -3846.167, y = 202.463, z = -1203.864 }, rot = { x = 5.137, y = 189.490, z = 1.761 }, level = 1, point_type = 1008, persistent = true, area_id = 17 },
	{ config_id = 474004, gadget_id = 70360001, pos = { x = -3842.079, y = 202.691, z = -1199.573 }, rot = { x = 0.000, y = 289.074, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 474005, gadget_id = 70500000, pos = { x = -3840.474, y = 201.633, z = -1193.993 }, rot = { x = 350.209, y = 188.245, z = 5.701 }, level = 1, point_type = 1008, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 474001, gadget_id = 70500000, pos = { x = -3842.572, y = 201.779, z = -1193.230 }, rot = { x = 7.954, y = 359.524, z = 353.752 }, level = 1, point_type = 1008, area_id = 17 },
		{ config_id = 474003, gadget_id = 70500000, pos = { x = -3843.713, y = 202.379, z = -1203.557 }, rot = { x = 356.434, y = 0.167, z = 356.420 }, level = 1, point_type = 1008, area_id = 17 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 474002, 474004, 474005 },
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

require "V2_0/OreBlossomGroup"