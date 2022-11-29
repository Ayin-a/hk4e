-- 基础信息
local base_info = {
	group_id = 111102017
}

-- DEFS_MISCS
local defs = {
	-- 【根据实际情况修改】幻梦之门的config id
	door = 17001,
	-- 【根据实际情况修改】禁联机挑战的gallery id
	galleryId = 19101,
	-- 【根据实际情况修改】挑战的保底区域，出了这个区域挑战即失败
	challengeRegion = 17021,
	
	weatherId = 4307,

	-- 挑战id，没有特殊情况保持不变即可
	fatherChallenge = 267,
	childChallenge = {268, 269},

	-- 拾取spirit的最大间隔时间
	maxPickupTime = 30,

	minusTime = -5,
	
	-- 【根据实际情况修改】失败传送坐标
	transParam_Pos = {x = 1438, y = 262.5, z = -1701},
	transParam_Rot = {x = 0, y = 0, z = 0},
	transParam_Radius = 1,
	
	-- 视野id
	visionType = 11020002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[17015] = { config_id = 17015, monster_id = 20011201, pos = { x = 1446.138, y = 261.216, z = -1691.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	[17016] = { config_id = 17016, monster_id = 20011201, pos = { x = 1445.671, y = 262.006, z = -1694.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	[17017] = { config_id = 17017, monster_id = 20011201, pos = { x = 1426.671, y = 265.474, z = -1715.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	[17018] = { config_id = 17018, monster_id = 20011201, pos = { x = 1428.061, y = 265.844, z = -1716.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	[17019] = { config_id = 17019, monster_id = 20011201, pos = { x = 1413.342, y = 258.125, z = -1690.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	[17020] = { config_id = 17020, monster_id = 20011201, pos = { x = 1413.802, y = 257.638, z = -1686.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[17001] = { config_id = 17001, gadget_id = 70310205, pos = { x = 1437.260, y = 261.296, z = -1696.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	[17002] = { config_id = 17002, gadget_id = 70220105, pos = { x = 1419.426, y = 260.050, z = -1697.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17003] = { config_id = 17003, gadget_id = 70220105, pos = { x = 1432.673, y = 264.613, z = -1709.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17004] = { config_id = 17004, gadget_id = 70220105, pos = { x = 1450.557, y = 261.509, z = -1693.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17005] = { config_id = 17005, gadget_id = 70220104, pos = { x = 1416.588, y = 258.489, z = -1691.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17006] = { config_id = 17006, gadget_id = 70220104, pos = { x = 1426.765, y = 259.566, z = -1692.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17007] = { config_id = 17007, gadget_id = 70220104, pos = { x = 1436.820, y = 260.053, z = -1687.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17008] = { config_id = 17008, gadget_id = 70220104, pos = { x = 1446.168, y = 261.716, z = -1693.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17009] = { config_id = 17009, gadget_id = 70220104, pos = { x = 1457.791, y = 260.983, z = -1692.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17010] = { config_id = 17010, gadget_id = 70360001, pos = { x = 1437.260, y = 261.296, z = -1696.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 758 } }, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	[17030] = { config_id = 17030, gadget_id = 70210119, pos = { x = 1437.260, y = 261.296, z = -1696.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, guest_ban_drop = 1 }
}

-- 区域
regions = {
	[17021] = { config_id = 17021, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1434.859, y = 263.363, z = -1704.147 } }
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
	end_suite = 3,
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
		gadgets = { 17001 },
		regions = { 17021 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 17016, 17017, 17018, 17019, 17020 },
		gadgets = { 17002, 17003, 17004, 17005, 17006, 17007, 17008, 17009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 17030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 17015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 17010 },
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

require "V3_0/Dreamland"