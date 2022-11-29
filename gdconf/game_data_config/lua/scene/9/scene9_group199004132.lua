-- 基础信息
local base_info = {
	group_id = 199004132
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
	monsters = {
		{ config_id = 132005, monster_id = 21010401, pos = { x = -54.102, y = 126.033, z = -630.268 }, rot = { x = 0.000, y = 91.617, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 401 },
		{ config_id = 132006, monster_id = 21010401, pos = { x = -54.901, y = 126.054, z = -629.653 }, rot = { x = 0.000, y = 288.785, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 401 },
		{ config_id = 132007, monster_id = 21010401, pos = { x = -61.154, y = 126.095, z = -655.344 }, rot = { x = 0.000, y = 228.201, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 401 },
		{ config_id = 132008, monster_id = 21010401, pos = { x = -64.554, y = 126.012, z = -658.244 }, rot = { x = 0.000, y = 46.383, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 401 },
		{ config_id = 132009, monster_id = 21030301, pos = { x = -57.819, y = 125.047, z = -640.953 }, rot = { x = 0.000, y = 171.836, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 401 },
		{ config_id = 132010, monster_id = 21030301, pos = { x = -59.393, y = 125.092, z = -645.739 }, rot = { x = 0.000, y = 17.018, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 401 },
		{ config_id = 132015, monster_id = 20011201, pos = { x = -63.058, y = 126.665, z = -656.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 },
		{ config_id = 132027, monster_id = 21010401, pos = { x = -79.374, y = 123.718, z = -635.313 }, rot = { x = 0.000, y = 239.799, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 401 },
		{ config_id = 132028, monster_id = 21010401, pos = { x = -41.590, y = 123.870, z = -647.118 }, rot = { x = 0.000, y = 256.472, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 401 }
	},
	gadgets = {
		{ config_id = 132001, gadget_id = 70290059, pos = { x = -54.783, y = 120.000, z = -630.660 }, rot = { x = 0.000, y = 194.830, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132002, gadget_id = 70290059, pos = { x = -62.159, y = 120.000, z = -656.234 }, rot = { x = 0.000, y = 12.475, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132003, gadget_id = 70290060, pos = { x = -57.001, y = 124.643, z = -638.876 }, rot = { x = 0.000, y = 288.781, z = 351.831 }, level = 20, area_id = 401 },
		{ config_id = 132004, gadget_id = 70290060, pos = { x = -60.112, y = 124.712, z = -648.015 }, rot = { x = 0.000, y = 108.598, z = 351.746 }, level = 20, area_id = 401 },
		{ config_id = 132011, gadget_id = 70300087, pos = { x = -62.869, y = 126.203, z = -656.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132012, gadget_id = 70300089, pos = { x = -54.552, y = 126.215, z = -630.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132013, gadget_id = 70290056, pos = { x = -68.599, y = 120.000, z = -632.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
		{ config_id = 132014, gadget_id = 70290056, pos = { x = -51.167, y = 120.000, z = -654.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
		{ config_id = 132016, gadget_id = 70290057, pos = { x = -38.347, y = 119.253, z = -635.560 }, rot = { x = 0.000, y = 78.957, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132017, gadget_id = 70290057, pos = { x = -76.071, y = 119.264, z = -662.035 }, rot = { x = 0.000, y = 42.890, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 132018, gadget_id = 70950092, pos = { x = -78.742, y = 120.000, z = -635.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132019, gadget_id = 70950092, pos = { x = -41.768, y = 120.000, z = -646.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132020, gadget_id = 70950087, pos = { x = -81.065, y = 120.000, z = -633.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132021, gadget_id = 70950087, pos = { x = -80.515, y = 120.000, z = -637.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132022, gadget_id = 70950087, pos = { x = -81.436, y = 120.000, z = -636.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132023, gadget_id = 70950087, pos = { x = -43.945, y = 120.000, z = -645.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132024, gadget_id = 70950087, pos = { x = -44.097, y = 120.000, z = -648.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132025, gadget_id = 70950087, pos = { x = -39.534, y = 120.000, z = -644.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 132026, gadget_id = 70950087, pos = { x = -41.166, y = 120.000, z = -643.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================