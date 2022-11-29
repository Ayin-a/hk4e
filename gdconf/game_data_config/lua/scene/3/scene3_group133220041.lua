-- 基础信息
local base_info = {
	group_id = 133220041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41005, monster_id = 23010601, pos = { x = -2388.995, y = 264.984, z = -4310.115 }, rot = { x = 1.710, y = 306.320, z = 353.971 }, level = 27, drop_tag = "先遣队", disableWander = true, isOneoff = true, pose_id = 9012, area_id = 11 },
	{ config_id = 41007, monster_id = 23010301, pos = { x = -2378.809, y = 265.534, z = -4319.121 }, rot = { x = 349.374, y = 222.656, z = 359.142 }, level = 27, drop_tag = "先遣队", disableWander = true, isOneoff = true, pose_id = 9001, area_id = 11 },
	{ config_id = 41008, monster_id = 23010401, pos = { x = -2390.712, y = 264.558, z = -4308.791 }, rot = { x = 0.690, y = 105.221, z = 4.035 }, level = 27, drop_tag = "先遣队", disableWander = true, isOneoff = true, pose_id = 9002, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41001, gadget_id = 70310006, pos = { x = -2380.613, y = 264.586, z = -4305.785 }, rot = { x = 6.393, y = 4.381, z = 5.502 }, level = 27, area_id = 11 },
	{ config_id = 41002, gadget_id = 70950135, pos = { x = -2391.880, y = 264.830, z = -4311.592 }, rot = { x = 12.118, y = 23.037, z = 6.983 }, level = 27, area_id = 11 },
	{ config_id = 41003, gadget_id = 70220051, pos = { x = -2389.805, y = 265.071, z = -4312.441 }, rot = { x = 11.608, y = 249.994, z = 67.062 }, level = 27, area_id = 11 },
	{ config_id = 41004, gadget_id = 70710352, pos = { x = -2391.846, y = 264.796, z = -4311.515 }, rot = { x = 5.241, y = 39.701, z = 13.563 }, level = 27, area_id = 11 },
	{ config_id = 41006, gadget_id = 70220052, pos = { x = -2394.435, y = 265.564, z = -4311.305 }, rot = { x = 19.033, y = 35.523, z = 353.123 }, level = 27, area_id = 11 },
	{ config_id = 41009, gadget_id = 70710553, pos = { x = -2391.864, y = 265.598, z = -4311.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 41010, gadget_id = 70211001, pos = { x = -2393.950, y = 264.420, z = -4309.812 }, rot = { x = 3.056, y = 73.372, z = 14.328 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
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
		gadgets = { 41001, 41002, 41003, 41004, 41006, 41009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 41005, 41007, 41008 },
		gadgets = { 41001, 41002, 41003, 41004, 41006, 41009, 41010 },
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