-- 基础信息
local base_info = {
	group_id = 133107009
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
	{ config_id = 9012, npc_id = 20135, pos = { x = -567.209, y = 227.989, z = 366.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7 }
}

-- 装置
gadgets = {
	{ config_id = 9001, gadget_id = 70500000, pos = { x = -549.286, y = 239.151, z = 384.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9043, isOneoff = true, area_id = 7 },
	{ config_id = 9002, gadget_id = 70500000, pos = { x = -544.311, y = 238.818, z = 384.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9044, isOneoff = true, area_id = 7 },
	{ config_id = 9003, gadget_id = 70500000, pos = { x = -540.275, y = 238.786, z = 384.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9081, area_id = 7 },
	{ config_id = 9004, gadget_id = 70500000, pos = { x = -541.112, y = 238.818, z = 390.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9045, isOneoff = true, area_id = 7 },
	{ config_id = 9005, gadget_id = 70710136, pos = { x = -643.182, y = 222.356, z = 245.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 9006, gadget_id = 70500000, pos = { x = -643.202, y = 222.427, z = 245.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9222, area_id = 7 },
	{ config_id = 9007, gadget_id = 70500000, pos = { x = -558.283, y = 243.863, z = 390.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9240, area_id = 7 },
	{ config_id = 9008, gadget_id = 70500000, pos = { x = -558.726, y = 244.008, z = 390.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9233, area_id = 7 },
	{ config_id = 9009, gadget_id = 70710136, pos = { x = -667.452, y = 220.490, z = 219.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 9010, gadget_id = 70500000, pos = { x = -667.459, y = 220.561, z = 219.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9241, area_id = 7 },
	{ config_id = 9011, gadget_id = 70710093, pos = { x = -567.251, y = 226.426, z = 366.348 }, rot = { x = 0.000, y = 136.260, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 9013, gadget_id = 70710136, pos = { x = -514.590, y = 203.673, z = 311.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 9014, gadget_id = 70500000, pos = { x = -514.597, y = 203.788, z = 311.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9098, isOneoff = true, area_id = 7 },
	{ config_id = 9015, gadget_id = 70710136, pos = { x = -671.948, y = 220.463, z = 221.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 9016, gadget_id = 70500000, pos = { x = -671.972, y = 220.534, z = 221.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9203, isOneoff = true, area_id = 7 }
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
		gadgets = { 9001, 9002, 9003, 9004, 9005, 9006, 9007, 9008, 9009, 9010, 9011, 9013, 9014, 9015, 9016 },
		regions = { },
		triggers = { },
		npcs = { 9012 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================