-- 基础信息
local base_info = {
	group_id = 133301698
}

-- Trigger变量
local defs = {
	door = 698005,
	galleryId = 19113,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 698031,
	weatherId = 4058,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -907, y = 46, z = 3132},
	transParam_Rot = {x =1, y = 273, z = 2},
	transParam_Radius = 1,
	visionType = 33010003,
	point_camera = 698032,
	gadget_lookEntity = 698005,
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
	[698001] = { config_id = 698001, monster_id = 26090401, pos = { x = -923.772, y = 45.903, z = 3132.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698002] = { config_id = 698002, monster_id = 26090401, pos = { x = -859.026, y = 44.692, z = 3133.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698003] = { config_id = 698003, monster_id = 26090401, pos = { x = -928.494, y = 42.950, z = 3161.271 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698026] = { config_id = 698026, monster_id = 26090401, pos = { x = -930.635, y = 43.368, z = 3153.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698027] = { config_id = 698027, monster_id = 26090401, pos = { x = -925.584, y = 42.950, z = 3176.861 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698033] = { config_id = 698033, monster_id = 26090401, pos = { x = -923.915, y = 42.950, z = 3167.600 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698035] = { config_id = 698035, monster_id = 26090401, pos = { x = -924.995, y = 55.904, z = 3236.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698036] = { config_id = 698036, monster_id = 26090401, pos = { x = -926.205, y = 50.936, z = 3221.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698037] = { config_id = 698037, monster_id = 26090401, pos = { x = -930.212, y = 48.547, z = 3210.282 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698038] = { config_id = 698038, monster_id = 26090401, pos = { x = -924.451, y = 53.054, z = 3227.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698039] = { config_id = 698039, monster_id = 26090401, pos = { x = -837.994, y = 56.991, z = 3152.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698040] = { config_id = 698040, monster_id = 26090401, pos = { x = -841.612, y = 53.682, z = 3147.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698041] = { config_id = 698041, monster_id = 26090401, pos = { x = -846.625, y = 51.223, z = 3141.844 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[698042] = { config_id = 698042, monster_id = 26090401, pos = { x = -855.781, y = 45.971, z = 3135.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[698005] = { config_id = 698005, gadget_id = 70310205, pos = { x = -910.461, y = 46.329, z = 3131.655 }, rot = { x = 0.000, y = 260.829, z = 0.000 }, level = 30, area_id = 23 },
	[698006] = { config_id = 698006, gadget_id = 70220104, pos = { x = -927.689, y = 45.632, z = 3133.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698007] = { config_id = 698007, gadget_id = 70220104, pos = { x = -859.835, y = 44.426, z = 3134.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698008] = { config_id = 698008, gadget_id = 70220104, pos = { x = -930.611, y = 43.248, z = 3156.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698009] = { config_id = 698009, gadget_id = 70220104, pos = { x = -925.395, y = 42.950, z = 3161.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698010] = { config_id = 698010, gadget_id = 70220104, pos = { x = -922.981, y = 44.222, z = 3174.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698011] = { config_id = 698011, gadget_id = 70220104, pos = { x = -930.770, y = 47.980, z = 3207.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698012] = { config_id = 698012, gadget_id = 70220104, pos = { x = -923.516, y = 54.923, z = 3226.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698013] = { config_id = 698013, gadget_id = 70220104, pos = { x = -921.204, y = 58.561, z = 3241.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698014] = { config_id = 698014, gadget_id = 70220104, pos = { x = -873.346, y = 44.603, z = 3125.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698015] = { config_id = 698015, gadget_id = 70220104, pos = { x = -886.879, y = 47.837, z = 3116.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698016] = { config_id = 698016, gadget_id = 70220104, pos = { x = -892.939, y = 70.834, z = 3246.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698017] = { config_id = 698017, gadget_id = 70220104, pos = { x = -864.723, y = 78.021, z = 3245.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698018] = { config_id = 698018, gadget_id = 70220104, pos = { x = -846.081, y = 77.272, z = 3224.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698019] = { config_id = 698019, gadget_id = 70220104, pos = { x = -835.407, y = 65.400, z = 3178.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698020] = { config_id = 698020, gadget_id = 70220104, pos = { x = -838.311, y = 56.578, z = 3151.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698023] = { config_id = 698023, gadget_id = 70220105, pos = { x = -834.319, y = 60.863, z = 3164.245 }, rot = { x = 335.549, y = 3.992, z = 7.066 }, level = 30, area_id = 23 },
	[698024] = { config_id = 698024, gadget_id = 70211121, pos = { x = -910.524, y = 46.403, z = 3131.543 }, rot = { x = 357.517, y = 84.242, z = 4.481 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[698025] = { config_id = 698025, gadget_id = 70220105, pos = { x = -929.118, y = 43.128, z = 3189.966 }, rot = { x = 350.493, y = 358.547, z = 9.858 }, level = 30, area_id = 23 },
	[698028] = { config_id = 698028, gadget_id = 70950145, pos = { x = -910.066, y = 48.287, z = 3131.482 }, rot = { x = 354.595, y = 141.561, z = 351.823 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 23 },
	[698029] = { config_id = 698029, gadget_id = 70310148, pos = { x = -906.970, y = 46.620, z = 3131.879 }, rot = { x = 1.424, y = 313.807, z = 7.523 }, level = 30, area_id = 23 },
	[698034] = { config_id = 698034, gadget_id = 70220105, pos = { x = -915.905, y = 60.293, z = 3243.259 }, rot = { x = 319.139, y = 33.746, z = 356.346 }, level = 30, area_id = 23 },
	[698043] = { config_id = 698043, gadget_id = 70220103, pos = { x = -893.620, y = 72.407, z = 3245.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698044] = { config_id = 698044, gadget_id = 70220103, pos = { x = -846.754, y = 79.043, z = 3225.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698045] = { config_id = 698045, gadget_id = 70220103, pos = { x = -865.580, y = 79.836, z = 3245.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[698046] = { config_id = 698046, gadget_id = 70220103, pos = { x = -836.425, y = 67.940, z = 3179.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	-- 挂按钮用的
	[698047] = { config_id = 698047, gadget_id = 70950145, pos = { x = -906.981, y = 47.990, z = 3131.881 }, rot = { x = 1.697, y = 82.577, z = 6.073 }, level = 33, worktop_config = { init_options = { 758 } }, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 23 }
}

-- 区域
regions = {
	[698031] = { config_id = 698031, shape = RegionShape.POLYGON, pos = { x = -889.485, y = -2.825, z = 3189.165 }, height = 194.350, point_array = { { x = -934.342, y = 3251.255 }, { x = -974.418, y = 3135.935 }, { x = -932.942, y = 3098.855 }, { x = -865.360, y = 3091.325 }, { x = -804.552, y = 3109.961 }, { x = -807.085, y = 3220.770 }, { x = -831.642, y = 3261.934 }, { x = -893.408, y = 3287.006 }, { x = -921.212, y = 3269.285 } }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 激活绝对注目
	{ config_id = 1698030, name = "GADGET_STATE_CHANGE_698030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_698030", action = "action_EVENT_GADGET_STATE_CHANGE_698030" }
}

-- 点位
points = {
	[698032] = { config_id = 698032, pos = { x = -901.696, y = 54.449, z = 3126.803 }, rot = { x = 0.000, y = 314.350, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 698004, gadget_id = 70220105, pos = { x = -955.651, y = 103.656, z = 3164.040 }, rot = { x = 0.000, y = 291.157, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 698021, gadget_id = 70220105, pos = { x = -898.592, y = 66.501, z = 3134.886 }, rot = { x = 0.000, y = 244.162, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 698022, gadget_id = 70220105, pos = { x = -941.302, y = 79.365, z = 3196.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
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
		gadgets = { 698005 },
		regions = { 698031 },
		triggers = { "GADGET_STATE_CHANGE_698030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 698001, 698002, 698003, 698026, 698027, 698033, 698035, 698036, 698037, 698038, 698039, 698040, 698041, 698042 },
		gadgets = { 698006, 698007, 698008, 698009, 698010, 698011, 698012, 698013, 698014, 698015, 698016, 698017, 698018, 698019, 698020, 698023, 698025, 698034, 698043, 698044, 698045, 698046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 698024 },
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
		gadgets = { 698028, 698029, 698047 },
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
function condition_EVENT_GADGET_STATE_CHANGE_698030(context, evt)
	if 698005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_698030(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"