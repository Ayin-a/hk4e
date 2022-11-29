-- 基础信息
local base_info = {
	group_id = 133302352
}

-- Trigger变量
local defs = {
	door = 352005,
	galleryId = 19107,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 352029,
	weatherId = 4061,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -841, y = 201, z = 3011},
	transParam_Rot = {x =1, y = 32, z = 1},
	transParam_Radius = 1,
	point_camera = 352001,
	gadget_lookEntity = 352005,
	look_duration = 3,
	visionType = 0
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
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[352004] = { config_id = 352004, gadget_id = 70220105, pos = { x = -823.088, y = 201.974, z = 3045.504 }, rot = { x = 0.000, y = 335.748, z = 0.000 }, level = 27, area_id = 23 },
	[352005] = { config_id = 352005, gadget_id = 70310205, pos = { x = -835.037, y = 202.996, z = 3023.435 }, rot = { x = 357.183, y = 30.366, z = 357.998 }, level = 27, area_id = 23 },
	[352006] = { config_id = 352006, gadget_id = 70220104, pos = { x = -826.307, y = 200.054, z = 3041.678 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 23 },
	[352007] = { config_id = 352007, gadget_id = 70220104, pos = { x = -822.932, y = 200.064, z = 3039.482 }, rot = { x = 358.212, y = 359.958, z = 2.684 }, level = 27, area_id = 23 },
	[352008] = { config_id = 352008, gadget_id = 70220104, pos = { x = -838.433, y = 200.054, z = 3041.537 }, rot = { x = 355.559, y = 359.758, z = 6.242 }, level = 27, area_id = 23 },
	[352009] = { config_id = 352009, gadget_id = 70220104, pos = { x = -814.016, y = 200.091, z = 3061.216 }, rot = { x = 358.246, y = 359.824, z = 11.483 }, level = 27, area_id = 23 },
	[352010] = { config_id = 352010, gadget_id = 70220104, pos = { x = -838.996, y = 200.119, z = 3070.936 }, rot = { x = 2.679, y = 359.916, z = 356.424 }, level = 27, area_id = 23 },
	[352011] = { config_id = 352011, gadget_id = 70220104, pos = { x = -814.927, y = 200.044, z = 3058.405 }, rot = { x = 0.584, y = 6.914, z = 2.739 }, level = 27, area_id = 23 },
	[352012] = { config_id = 352012, gadget_id = 70220104, pos = { x = -835.757, y = 200.050, z = 3007.815 }, rot = { x = 354.654, y = 359.833, z = 3.577 }, level = 27, area_id = 23 },
	[352013] = { config_id = 352013, gadget_id = 70220104, pos = { x = -836.920, y = 200.050, z = 2988.881 }, rot = { x = 352.882, y = 0.167, z = 357.316 }, level = 27, area_id = 23 },
	[352014] = { config_id = 352014, gadget_id = 70220104, pos = { x = -832.221, y = 200.087, z = 3009.661 }, rot = { x = 352.003, y = 0.188, z = 357.316 }, level = 27, area_id = 23 },
	[352015] = { config_id = 352015, gadget_id = 70220104, pos = { x = -859.433, y = 200.050, z = 3031.566 }, rot = { x = 358.212, y = 0.042, z = 357.316 }, level = 27, area_id = 23 },
	[352016] = { config_id = 352016, gadget_id = 70220104, pos = { x = -834.691, y = 200.054, z = 3069.127 }, rot = { x = 4.465, y = 0.070, z = 1.790 }, level = 27, area_id = 23 },
	[352017] = { config_id = 352017, gadget_id = 70220104, pos = { x = -837.675, y = 200.036, z = 3067.282 }, rot = { x = 3.573, y = 359.916, z = 357.316 }, level = 27, area_id = 23 },
	[352018] = { config_id = 352018, gadget_id = 70220104, pos = { x = -837.348, y = 200.074, z = 3045.627 }, rot = { x = 1.769, y = 359.908, z = 346.812 }, level = 27, area_id = 23 },
	[352019] = { config_id = 352019, gadget_id = 70220104, pos = { x = -865.313, y = 200.797, z = 3000.928 }, rot = { x = 2.683, y = 359.958, z = 358.210 }, level = 27, area_id = 23 },
	[352020] = { config_id = 352020, gadget_id = 70220104, pos = { x = -848.178, y = 200.576, z = 2995.000 }, rot = { x = 1.779, y = 359.903, z = 353.758 }, level = 27, area_id = 23 },
	[352023] = { config_id = 352023, gadget_id = 70220105, pos = { x = -847.981, y = 200.369, z = 3010.825 }, rot = { x = 0.000, y = 34.668, z = 0.000 }, level = 27, area_id = 23 },
	[352024] = { config_id = 352024, gadget_id = 70211121, pos = { x = -835.164, y = 203.550, z = 3023.273 }, rot = { x = 4.798, y = 213.107, z = 356.810 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[352025] = { config_id = 352025, gadget_id = 70220005, pos = { x = -820.242, y = 239.749, z = 2969.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	[352026] = { config_id = 352026, gadget_id = 70220005, pos = { x = -820.974, y = 239.992, z = 2968.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	[352037] = { config_id = 352037, gadget_id = 70310148, pos = { x = -835.887, y = 203.302, z = 3021.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	-- 挂icon用的
	[352038] = { config_id = 352038, gadget_id = 70950145, pos = { x = -835.509, y = 204.358, z = 3023.134 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 23 },
	-- 挂按钮用的
	[352039] = { config_id = 352039, gadget_id = 70950145, pos = { x = -835.940, y = 204.182, z = 3021.349 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 23 }
}

-- 区域
regions = {
	[352029] = { config_id = 352029, shape = RegionShape.SPHERE, radius = 100, pos = { x = -877.000, y = 203.000, z = 3002.000 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1352028, name = "GADGET_STATE_CHANGE_352028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352028", action = "action_EVENT_GADGET_STATE_CHANGE_352028" }
}

-- 点位
points = {
	[352001] = { config_id = 352001, pos = { x = -843.094, y = 206.069, z = 3010.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 352002, monster_id = 26090401, pos = { x = -776.437, y = 222.215, z = 3038.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
		{ config_id = 352003, monster_id = 26090201, pos = { x = -818.907, y = 239.526, z = 2971.366 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 23 },
		{ config_id = 352031, monster_id = 26090401, pos = { x = -777.583, y = 223.260, z = 3045.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
		{ config_id = 352032, monster_id = 26090201, pos = { x = -817.484, y = 240.435, z = 2963.874 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 23 },
		{ config_id = 352033, monster_id = 26120101, pos = { x = -891.372, y = 232.871, z = 2910.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 24 }
	},
	gadgets = {
		{ config_id = 352021, gadget_id = 70220105, pos = { x = -785.541, y = 224.340, z = 3026.120 }, rot = { x = 0.000, y = 36.960, z = 0.000 }, level = 27, area_id = 23 },
		{ config_id = 352022, gadget_id = 70220105, pos = { x = -983.120, y = 256.229, z = 3029.057 }, rot = { x = 0.000, y = 283.934, z = 0.000 }, level = 27, area_id = 23 },
		{ config_id = 352027, gadget_id = 70360001, pos = { x = -835.316, y = 204.909, z = 3023.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
		{ config_id = 352030, gadget_id = 70220105, pos = { x = -880.109, y = 234.953, z = 2922.901 }, rot = { x = 0.000, y = 169.069, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 352034, gadget_id = 70220105, pos = { x = -928.297, y = 242.423, z = 3054.893 }, rot = { x = 0.000, y = 283.934, z = 0.000 }, level = 27, area_id = 23 },
		{ config_id = 352035, gadget_id = 70220105, pos = { x = -867.362, y = 225.670, z = 3035.834 }, rot = { x = 0.000, y = 283.934, z = 0.000 }, level = 27, area_id = 23 },
		{ config_id = 352036, gadget_id = 70330197, pos = { x = -793.803, y = 205.518, z = 3043.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 }
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
		gadgets = { 352005 },
		regions = { 352029 },
		triggers = { "GADGET_STATE_CHANGE_352028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 352004, 352006, 352007, 352008, 352009, 352010, 352011, 352012, 352013, 352014, 352015, 352016, 352017, 352018, 352019, 352020, 352023, 352025, 352026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 352024 },
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
		gadgets = { 352037, 352038, 352039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352028(context, evt)
	if 352005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"