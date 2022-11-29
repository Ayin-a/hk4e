-- 基础信息
local base_info = {
	group_id = 133303019
}

-- Trigger变量
local defs = {
	door = 19005,
	galleryId = 19110,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 19029,
	weatherId = 4062,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -1237.322, y = 240.0292, z = 3306.499},
	transParam_Rot = {x =1, y = 330, z = 2},
	transParam_Radius = 1,
	visionType = 33010003,
	target_x = -1239.8,
	target_y = 240.2991,
	target_z = 3310.0,
	camera_x = -1236.318,
	camera_y = 243.64,
	camera_z = 3300.213,
	duration = 2,
	point_camera = 19054,
	gadget_lookEntity = 19005,
	look_duration = 2
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[19001] = { config_id = 19001, monster_id = 26090201, pos = { x = -1180.020, y = 261.271, z = 3299.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
	[19036] = { config_id = 19036, monster_id = 26090201, pos = { x = -1186.836, y = 259.989, z = 3293.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[19005] = { config_id = 19005, gadget_id = 70310205, pos = { x = -1239.800, y = 240.299, z = 3310.000 }, rot = { x = 0.000, y = 324.039, z = 0.000 }, level = 30, area_id = 23 },
	[19006] = { config_id = 19006, gadget_id = 70220104, pos = { x = -1184.432, y = 260.208, z = 3298.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19007] = { config_id = 19007, gadget_id = 70220104, pos = { x = -1182.939, y = 261.990, z = 3289.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19008] = { config_id = 19008, gadget_id = 70220104, pos = { x = -1188.593, y = 262.846, z = 3281.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19009] = { config_id = 19009, gadget_id = 70220104, pos = { x = -1233.240, y = 239.126, z = 3329.896 }, rot = { x = 0.000, y = 129.744, z = 0.000 }, level = 30, area_id = 23 },
	[19010] = { config_id = 19010, gadget_id = 70220104, pos = { x = -1178.749, y = 262.911, z = 3313.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19011] = { config_id = 19011, gadget_id = 70220104, pos = { x = -1234.695, y = 236.857, z = 3295.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19012] = { config_id = 19012, gadget_id = 70220104, pos = { x = -1242.626, y = 234.749, z = 3289.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19013] = { config_id = 19013, gadget_id = 70220104, pos = { x = -1222.144, y = 238.226, z = 3283.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19014] = { config_id = 19014, gadget_id = 70220104, pos = { x = -1240.084, y = 236.201, z = 3284.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19015] = { config_id = 19015, gadget_id = 70220104, pos = { x = -1222.965, y = 238.175, z = 3289.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19016] = { config_id = 19016, gadget_id = 70220104, pos = { x = -1231.760, y = 240.230, z = 3332.659 }, rot = { x = 354.770, y = 289.809, z = 27.516 }, level = 30, area_id = 23 },
	[19017] = { config_id = 19017, gadget_id = 70220104, pos = { x = -1182.983, y = 260.316, z = 3309.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19018] = { config_id = 19018, gadget_id = 70220104, pos = { x = -1235.662, y = 238.372, z = 3331.460 }, rot = { x = 0.000, y = 110.789, z = 0.000 }, level = 30, area_id = 23 },
	[19019] = { config_id = 19019, gadget_id = 70220104, pos = { x = -1233.950, y = 239.500, z = 3333.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19020] = { config_id = 19020, gadget_id = 70220104, pos = { x = -1240.665, y = 239.487, z = 3327.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19023] = { config_id = 19023, gadget_id = 70220105, pos = { x = -1196.184, y = 256.297, z = 3302.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19024] = { config_id = 19024, gadget_id = 70211121, pos = { x = -1239.712, y = 240.875, z = 3310.221 }, rot = { x = 0.772, y = 147.952, z = 358.733 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[19025] = { config_id = 19025, gadget_id = 70220005, pos = { x = -1229.653, y = 236.734, z = 3281.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19026] = { config_id = 19026, gadget_id = 70220005, pos = { x = -1235.769, y = 236.115, z = 3285.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19027] = { config_id = 19027, gadget_id = 70220005, pos = { x = -1229.199, y = 236.649, z = 3281.004 }, rot = { x = 0.000, y = 0.000, z = 29.557 }, level = 30, area_id = 23 },
	[19032] = { config_id = 19032, gadget_id = 70220105, pos = { x = -1223.103, y = 249.283, z = 3337.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19033] = { config_id = 19033, gadget_id = 70220020, pos = { x = -1231.349, y = 239.701, z = 3328.610 }, rot = { x = 357.766, y = 155.089, z = 341.046 }, level = 30, area_id = 23 },
	[19034] = { config_id = 19034, gadget_id = 70220020, pos = { x = -1237.848, y = 237.542, z = 3331.387 }, rot = { x = 20.811, y = 254.105, z = 349.115 }, level = 30, area_id = 23 },
	[19035] = { config_id = 19035, gadget_id = 70220020, pos = { x = -1237.042, y = 238.646, z = 3335.301 }, rot = { x = 337.002, y = 304.362, z = 18.659 }, level = 30, area_id = 23 },
	[19037] = { config_id = 19037, gadget_id = 70290196, pos = { x = -1237.322, y = 240.029, z = 3306.499 }, rot = { x = 0.000, y = 320.774, z = 0.000 }, level = 1, area_id = 23 },
	[19040] = { config_id = 19040, gadget_id = 70690027, pos = { x = -1208.131, y = 252.119, z = 3328.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19041] = { config_id = 19041, gadget_id = 70330216, pos = { x = -1223.911, y = 237.860, z = 3288.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19042] = { config_id = 19042, gadget_id = 70330216, pos = { x = -1236.702, y = 236.696, z = 3295.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19043] = { config_id = 19043, gadget_id = 70330216, pos = { x = -1244.245, y = 234.374, z = 3289.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19044] = { config_id = 19044, gadget_id = 70690027, pos = { x = -1207.079, y = 260.030, z = 3275.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19045] = { config_id = 19045, gadget_id = 70220105, pos = { x = -1227.535, y = 238.302, z = 3276.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19046] = { config_id = 19046, gadget_id = 70690029, pos = { x = -1223.713, y = 239.420, z = 3276.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19047] = { config_id = 19047, gadget_id = 70330216, pos = { x = -1240.322, y = 236.057, z = 3283.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19048] = { config_id = 19048, gadget_id = 70330216, pos = { x = -1221.613, y = 238.194, z = 3282.012 }, rot = { x = 0.000, y = 107.370, z = 0.000 }, level = 30, area_id = 23 },
	-- 镜头占位
	[19050] = { config_id = 19050, gadget_id = 70290196, pos = { x = -1235.891, y = 243.573, z = 3302.742 }, rot = { x = 0.000, y = 3.661, z = 0.000 }, level = 30, area_id = 23 },
	-- 目标点占位
	[19052] = { config_id = 19052, gadget_id = 70290196, pos = { x = -1239.800, y = 242.907, z = 3310.000 }, rot = { x = 0.000, y = 3.661, z = 0.000 }, level = 30, area_id = 23 },
	[19055] = { config_id = 19055, gadget_id = 70950145, pos = { x = -1239.458, y = 240.875, z = 3309.671 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 23 },
	[19056] = { config_id = 19056, gadget_id = 70310148, pos = { x = -1238.426, y = 240.322, z = 3308.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	-- 挂按钮用的
	[19057] = { config_id = 19057, gadget_id = 70950145, pos = { x = -1238.491, y = 240.561, z = 3308.333 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 23 },
	[19058] = { config_id = 19058, gadget_id = 70220020, pos = { x = -1235.169, y = 238.355, z = 3328.469 }, rot = { x = 10.652, y = 200.941, z = 347.307 }, level = 30, area_id = 23 },
	[19059] = { config_id = 19059, gadget_id = 70220020, pos = { x = -1229.671, y = 240.655, z = 3331.807 }, rot = { x = 346.273, y = 86.181, z = 352.239 }, level = 30, area_id = 23 },
	[19060] = { config_id = 19060, gadget_id = 70330197, pos = { x = -1240.697, y = 237.104, z = 3327.535 }, rot = { x = 0.000, y = 257.392, z = 0.000 }, level = 30, area_id = 23 },
	[19061] = { config_id = 19061, gadget_id = 70220005, pos = { x = -1236.708, y = 238.988, z = 3336.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19062] = { config_id = 19062, gadget_id = 70220005, pos = { x = -1228.227, y = 240.655, z = 3331.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[19063] = { config_id = 19063, gadget_id = 70330197, pos = { x = -1237.081, y = 240.281, z = 3340.546 }, rot = { x = 0.000, y = 263.149, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	-- 比黄圈半径+20，铺设范围看not in any suite
	[19029] = { config_id = 19029, shape = RegionShape.SPHERE, radius = 90, pos = { x = -1219.945, y = 237.555, z = 3316.647 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1019028, name = "GADGET_STATE_CHANGE_19028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19028", action = "action_EVENT_GADGET_STATE_CHANGE_19028" }
}

-- 点位
points = {
	[19054] = { config_id = 19054, pos = { x = -1230.968, y = 244.654, z = 3305.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 19002, monster_id = 26090201, pos = { x = -1186.060, y = 259.220, z = 3305.597 }, rot = { x = 0.000, y = 226.071, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
		{ config_id = 19003, monster_id = 26090201, pos = { x = -1235.015, y = 238.800, z = 3283.247 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 }
	},
	gadgets = {
		{ config_id = 19004, gadget_id = 70220105, pos = { x = -1175.786, y = 263.996, z = 3325.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 19021, gadget_id = 70220105, pos = { x = -1177.147, y = 264.541, z = 3327.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 19022, gadget_id = 70220105, pos = { x = -1177.651, y = 270.102, z = 3344.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 19030, gadget_id = 70220003, pos = { x = -1181.128, y = 263.609, z = 3326.151 }, rot = { x = 6.454, y = 266.007, z = 15.233 }, level = 30, area_id = 23 },
		{ config_id = 19031, gadget_id = 70220105, pos = { x = -1173.482, y = 264.092, z = 3325.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 19038, gadget_id = 70220003, pos = { x = -1176.315, y = 265.251, z = 3330.663 }, rot = { x = 346.888, y = 358.329, z = 2.994 }, level = 30, area_id = 23 },
		{ config_id = 19039, gadget_id = 70220003, pos = { x = -1174.785, y = 263.662, z = 3323.785 }, rot = { x = 3.917, y = 144.821, z = 348.650 }, level = 30, area_id = 23 }
	},
	regions = {
		{ config_id = 19049, shape = RegionShape.SPHERE, radius = 70, pos = { x = -1219.945, y = 237.555, z = 3316.647 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1019051, name = "GADGET_STATE_CHANGE_19051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19051", action = "action_EVENT_GADGET_STATE_CHANGE_19051" },
		{ config_id = 1019053, name = "GADGET_STATE_CHANGE_19053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19053", action = "action_EVENT_GADGET_STATE_CHANGE_19053" }
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
		gadgets = { 19005, 19050, 19052 },
		regions = { 19029 },
		triggers = { "GADGET_STATE_CHANGE_19028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 19001, 19036 },
		gadgets = { 19006, 19007, 19008, 19009, 19010, 19011, 19012, 19013, 19014, 19015, 19016, 19017, 19018, 19019, 19020, 19023, 19025, 19026, 19027, 19032, 19033, 19034, 19035, 19040, 19041, 19042, 19043, 19044, 19045, 19046, 19047, 19048, 19058, 19059, 19060, 19061, 19062, 19063 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 19024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 19055, 19056, 19057 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19028(context, evt)
	if 19005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"