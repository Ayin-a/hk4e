-- 基础信息
local base_info = {
	group_id = 133210445
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
	{ config_id = 445001, gadget_id = 70500000, pos = { x = -3842.701, y = 201.946, z = -1194.409 }, rot = { x = 6.212, y = 359.716, z = 353.764 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 445002, gadget_id = 70500000, pos = { x = -3846.167, y = 202.463, z = -1203.864 }, rot = { x = 5.137, y = 189.490, z = 1.761 }, level = 1, point_type = 1008, persistent = true, area_id = 17 },
	{ config_id = 445003, gadget_id = 70500000, pos = { x = -3851.652, y = 202.551, z = -1202.049 }, rot = { x = 357.681, y = 83.034, z = 355.785 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 445004, gadget_id = 70360001, pos = { x = -3842.079, y = 202.691, z = -1199.573 }, rot = { x = 0.000, y = 289.074, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 445005, gadget_id = 70500000, pos = { x = -3840.474, y = 201.633, z = -1193.993 }, rot = { x = 350.209, y = 188.245, z = 5.701 }, level = 1, point_type = 1008, persistent = true, area_id = 17 }
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
		gadgets = { 445001, 445002, 445003, 445004, 445005 },
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