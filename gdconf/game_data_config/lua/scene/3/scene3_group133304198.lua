-- 基础信息
local base_info = {
	group_id = 133304198
}

-- Trigger变量
local defs = {
	door = 198005,
	galleryId = 19105,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 198029,
	weatherId = 4065,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -1211, y = 145, z = 2329},
	transParam_Rot = {x =0, y = 330, z = 0},
	transParam_Radius = 1,
	visionType = 33040013,
	point_camera = 198030,
	gadget_lookEntity = 198005,
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
	[198035] = { config_id = 198035, monster_id = 26090201, pos = { x = -1286.316, y = 111.971, z = 2368.111 }, rot = { x = 0.000, y = 209.176, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 21 },
	[198036] = { config_id = 198036, monster_id = 26090201, pos = { x = -1296.467, y = 114.442, z = 2371.875 }, rot = { x = 0.000, y = 194.734, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 21 },
	[198037] = { config_id = 198037, monster_id = 26090901, pos = { x = -1285.230, y = 104.884, z = 2353.029 }, rot = { x = 0.000, y = 332.983, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 21 },
	[198038] = { config_id = 198038, monster_id = 26090901, pos = { x = -1308.819, y = 104.422, z = 2362.668 }, rot = { x = 0.000, y = 121.676, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[198004] = { config_id = 198004, gadget_id = 70220105, pos = { x = -1301.301, y = 104.100, z = 2343.293 }, rot = { x = 0.000, y = 169.069, z = 0.000 }, level = 33, area_id = 21 },
	[198005] = { config_id = 198005, gadget_id = 70310205, pos = { x = -1214.192, y = 144.700, z = 2333.633 }, rot = { x = 0.000, y = 308.426, z = 0.000 }, level = 27, area_id = 21 },
	[198006] = { config_id = 198006, gadget_id = 70220104, pos = { x = -1265.720, y = 108.948, z = 2306.388 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 21 },
	[198007] = { config_id = 198007, gadget_id = 70220104, pos = { x = -1266.252, y = 108.708, z = 2301.078 }, rot = { x = 358.212, y = 359.958, z = 2.684 }, level = 27, area_id = 21 },
	[198008] = { config_id = 198008, gadget_id = 70220104, pos = { x = -1275.301, y = 109.479, z = 2305.110 }, rot = { x = 355.559, y = 359.758, z = 6.242 }, level = 27, area_id = 21 },
	[198009] = { config_id = 198009, gadget_id = 70220104, pos = { x = -1261.606, y = 112.049, z = 2304.299 }, rot = { x = 358.246, y = 359.824, z = 11.483 }, level = 27, area_id = 21 },
	[198010] = { config_id = 198010, gadget_id = 70220104, pos = { x = -1299.972, y = 104.000, z = 2357.665 }, rot = { x = 2.679, y = 359.916, z = 356.424 }, level = 27, area_id = 21 },
	[198011] = { config_id = 198011, gadget_id = 70220104, pos = { x = -1323.312, y = 106.292, z = 2302.109 }, rot = { x = 32.854, y = 348.853, z = 323.372 }, level = 27, area_id = 21 },
	[198012] = { config_id = 198012, gadget_id = 70220104, pos = { x = -1344.096, y = 104.347, z = 2291.458 }, rot = { x = 354.654, y = 359.833, z = 3.577 }, level = 27, area_id = 21 },
	[198013] = { config_id = 198013, gadget_id = 70220104, pos = { x = -1289.511, y = 105.351, z = 2356.944 }, rot = { x = 352.882, y = 0.167, z = 357.316 }, level = 27, area_id = 21 },
	[198014] = { config_id = 198014, gadget_id = 70220104, pos = { x = -1307.677, y = 105.562, z = 2357.620 }, rot = { x = 352.003, y = 0.188, z = 357.316 }, level = 27, area_id = 21 },
	[198015] = { config_id = 198015, gadget_id = 70220104, pos = { x = -1293.990, y = 105.696, z = 2361.874 }, rot = { x = 358.212, y = 0.042, z = 357.316 }, level = 27, area_id = 21 },
	[198016] = { config_id = 198016, gadget_id = 70220104, pos = { x = -1227.138, y = 143.465, z = 2340.161 }, rot = { x = 4.465, y = 0.070, z = 1.790 }, level = 27, area_id = 21 },
	[198017] = { config_id = 198017, gadget_id = 70220104, pos = { x = -1321.946, y = 105.156, z = 2270.149 }, rot = { x = 3.573, y = 359.916, z = 357.316 }, level = 27, area_id = 21 },
	[198018] = { config_id = 198018, gadget_id = 70220104, pos = { x = -1317.341, y = 105.043, z = 2364.561 }, rot = { x = 1.797, y = 359.906, z = 4.462 }, level = 27, area_id = 21 },
	[198019] = { config_id = 198019, gadget_id = 70220104, pos = { x = -1340.048, y = 111.540, z = 2322.940 }, rot = { x = 2.683, y = 359.958, z = 358.210 }, level = 27, area_id = 21 },
	[198020] = { config_id = 198020, gadget_id = 70220104, pos = { x = -1271.507, y = 107.459, z = 2296.061 }, rot = { x = 1.779, y = 359.903, z = 353.758 }, level = 27, area_id = 21 },
	[198021] = { config_id = 198021, gadget_id = 70220105, pos = { x = -1260.451, y = 108.690, z = 2318.543 }, rot = { x = 0.000, y = 36.960, z = 0.000 }, level = 27, area_id = 21 },
	[198023] = { config_id = 198023, gadget_id = 70220105, pos = { x = -1314.930, y = 105.529, z = 2304.444 }, rot = { x = 0.000, y = 169.069, z = 0.000 }, level = 27, area_id = 21 },
	[198024] = { config_id = 198024, gadget_id = 70211121, pos = { x = -1213.908, y = 145.337, z = 2333.236 }, rot = { x = 0.000, y = 126.162, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[198025] = { config_id = 198025, gadget_id = 70220005, pos = { x = -1260.047, y = 108.685, z = 2316.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
	[198026] = { config_id = 198026, gadget_id = 70220005, pos = { x = -1261.886, y = 108.655, z = 2317.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
	[198031] = { config_id = 198031, gadget_id = 70310148, pos = { x = -1212.517, y = 144.999, z = 2332.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[198033] = { config_id = 198033, gadget_id = 70220103, pos = { x = -1255.788, y = 127.232, z = 2360.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[198034] = { config_id = 198034, gadget_id = 70220103, pos = { x = -1230.411, y = 145.049, z = 2344.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[198039] = { config_id = 198039, gadget_id = 70220103, pos = { x = -1340.702, y = 114.186, z = 2322.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[198040] = { config_id = 198040, gadget_id = 70330216, pos = { x = -1269.597, y = 108.167, z = 2305.087 }, rot = { x = 0.000, y = 185.661, z = 0.000 }, level = 30, area_id = 21 },
	[198041] = { config_id = 198041, gadget_id = 70330216, pos = { x = -1274.928, y = 106.873, z = 2298.659 }, rot = { x = 0.000, y = 24.291, z = 0.000 }, level = 30, area_id = 21 },
	[198042] = { config_id = 198042, gadget_id = 70330216, pos = { x = -1260.592, y = 107.493, z = 2309.268 }, rot = { x = 0.000, y = 209.107, z = 0.000 }, level = 30, area_id = 21 },
	[198043] = { config_id = 198043, gadget_id = 70220103, pos = { x = -1290.302, y = 109.707, z = 2305.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[198044] = { config_id = 198044, gadget_id = 70220103, pos = { x = -1346.824, y = 108.316, z = 2293.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[198045] = { config_id = 198045, gadget_id = 70220103, pos = { x = -1323.365, y = 110.094, z = 2302.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[198046] = { config_id = 198046, gadget_id = 70220103, pos = { x = -1250.258, y = 126.238, z = 2328.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[198047] = { config_id = 198047, gadget_id = 70220103, pos = { x = -1321.932, y = 107.660, z = 2270.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	-- 挂icon用的
	[198048] = { config_id = 198048, gadget_id = 70950145, pos = { x = -1213.847, y = 146.021, z = 2333.139 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	-- 挂按钮用的
	[198049] = { config_id = 198049, gadget_id = 70950145, pos = { x = -1212.517, y = 144.999, z = 2332.386 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 21 }
}

-- 区域
regions = {
	[198029] = { config_id = 198029, shape = RegionShape.SPHERE, radius = 150, pos = { x = -1289.349, y = 104.000, z = 2323.187 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 激活绝对注目
	{ config_id = 1198028, name = "GADGET_STATE_CHANGE_198028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_198028", action = "action_EVENT_GADGET_STATE_CHANGE_198028" }
}

-- 点位
points = {
	[198030] = { config_id = 198030, pos = { x = -1209.036, y = 148.026, z = 2327.316 }, rot = { x = 0.000, y = 330.374, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 198001, monster_id = 26090401, pos = { x = -1255.721, y = 107.873, z = 2293.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
		{ config_id = 198002, monster_id = 26090401, pos = { x = -1252.788, y = 108.917, z = 2292.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
		{ config_id = 198003, monster_id = 26090201, pos = { x = -1255.048, y = 108.611, z = 2291.632 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 }
	},
	gadgets = {
		{ config_id = 198022, gadget_id = 70220105, pos = { x = -1331.747, y = 104.639, z = 2300.500 }, rot = { x = 0.000, y = 139.807, z = 0.000 }, level = 27, area_id = 21 },
		{ config_id = 198027, gadget_id = 70220005, pos = { x = -1337.958, y = 107.658, z = 2347.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
		{ config_id = 198032, gadget_id = 70360001, pos = { x = -1213.908, y = 145.337, z = 2333.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
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
		gadgets = { 198005 },
		regions = { 198029 },
		triggers = { "GADGET_STATE_CHANGE_198028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 198035, 198036, 198037, 198038 },
		gadgets = { 198004, 198006, 198007, 198008, 198009, 198010, 198011, 198012, 198013, 198014, 198015, 198016, 198017, 198018, 198019, 198020, 198021, 198023, 198025, 198026, 198033, 198034, 198039, 198040, 198041, 198042, 198043, 198044, 198045, 198046, 198047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 198024 },
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
		gadgets = { 198031, 198048, 198049 },
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
function condition_EVENT_GADGET_STATE_CHANGE_198028(context, evt)
	if 198005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_198028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"