-- 基础信息
local base_info = {
	group_id = 133303021
}

-- Trigger变量
local defs = {
	door = 21005,
	galleryId = 19112,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 21029,
	weatherId = 4064,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -1480.7915, y = 276.365265, z = 3639.26514},
	transParam_Rot = {x =1, y = 254, z = 2},
	transParam_Radius = 1,
	visionType = 0,
	point_camera = 21055,
	gadget_lookEntity = 21005,
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
	[21001] = { config_id = 21001, monster_id = 26090201, pos = { x = -1524.846, y = 272.260, z = 3638.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
	[21002] = { config_id = 21002, monster_id = 26090801, pos = { x = -1511.953, y = 243.199, z = 3691.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
	[21003] = { config_id = 21003, monster_id = 26090201, pos = { x = -1530.905, y = 236.224, z = 3605.068 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[21004] = { config_id = 21004, gadget_id = 70220105, pos = { x = -1516.992, y = 270.955, z = 3647.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21005] = { config_id = 21005, gadget_id = 70310205, pos = { x = -1486.844, y = 274.228, z = 3636.782 }, rot = { x = 9.602, y = 262.659, z = 359.626 }, level = 30, area_id = 23 },
	[21006] = { config_id = 21006, gadget_id = 70220104, pos = { x = -1515.984, y = 271.522, z = 3634.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21007] = { config_id = 21007, gadget_id = 70220104, pos = { x = -1540.444, y = 261.389, z = 3665.274 }, rot = { x = 0.000, y = 293.988, z = 0.000 }, level = 30, area_id = 23 },
	[21008] = { config_id = 21008, gadget_id = 70220104, pos = { x = -1525.307, y = 247.858, z = 3681.564 }, rot = { x = 0.000, y = 65.241, z = 0.000 }, level = 30, area_id = 23 },
	[21009] = { config_id = 21009, gadget_id = 70220104, pos = { x = -1518.901, y = 271.960, z = 3635.562 }, rot = { x = 0.000, y = 281.222, z = 0.000 }, level = 30, area_id = 23 },
	[21010] = { config_id = 21010, gadget_id = 70220104, pos = { x = -1516.839, y = 249.860, z = 3667.157 }, rot = { x = 0.000, y = 266.034, z = 0.000 }, level = 30, area_id = 23 },
	[21011] = { config_id = 21011, gadget_id = 70220104, pos = { x = -1539.565, y = 259.933, z = 3669.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21012] = { config_id = 21012, gadget_id = 70220104, pos = { x = -1516.723, y = 258.319, z = 3667.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21013] = { config_id = 21013, gadget_id = 70220104, pos = { x = -1529.911, y = 250.851, z = 3675.458 }, rot = { x = 0.000, y = 259.130, z = 0.000 }, level = 30, area_id = 23 },
	[21014] = { config_id = 21014, gadget_id = 70220104, pos = { x = -1529.982, y = 249.247, z = 3668.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21015] = { config_id = 21015, gadget_id = 70220104, pos = { x = -1516.602, y = 242.553, z = 3667.578 }, rot = { x = 0.000, y = 74.816, z = 0.000 }, level = 30, area_id = 23 },
	[21016] = { config_id = 21016, gadget_id = 70220104, pos = { x = -1514.599, y = 267.893, z = 3659.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21017] = { config_id = 21017, gadget_id = 70220104, pos = { x = -1516.472, y = 264.043, z = 3667.531 }, rot = { x = 0.000, y = 77.011, z = 0.000 }, level = 30, area_id = 23 },
	[21018] = { config_id = 21018, gadget_id = 70220104, pos = { x = -1516.369, y = 271.689, z = 3631.321 }, rot = { x = 0.000, y = 298.895, z = 0.000 }, level = 30, area_id = 23 },
	[21019] = { config_id = 21019, gadget_id = 70220104, pos = { x = -1521.149, y = 272.366, z = 3633.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21020] = { config_id = 21020, gadget_id = 70220104, pos = { x = -1519.121, y = 272.219, z = 3630.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21024] = { config_id = 21024, gadget_id = 70211121, pos = { x = -1487.214, y = 274.847, z = 3636.883 }, rot = { x = 14.973, y = 262.450, z = 359.783 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[21025] = { config_id = 21025, gadget_id = 70220005, pos = { x = -1518.129, y = 271.971, z = 3627.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21026] = { config_id = 21026, gadget_id = 70220005, pos = { x = -1518.189, y = 271.326, z = 3639.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21027] = { config_id = 21027, gadget_id = 70220005, pos = { x = -1522.398, y = 271.687, z = 3639.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21030] = { config_id = 21030, gadget_id = 70690029, pos = { x = -1517.357, y = 242.668, z = 3667.234 }, rot = { x = 0.000, y = 150.586, z = 0.000 }, level = 30, area_id = 23 },
	[21031] = { config_id = 21031, gadget_id = 70330197, pos = { x = -1532.507, y = 247.381, z = 3672.198 }, rot = { x = 0.000, y = 287.949, z = 0.000 }, level = 30, area_id = 23 },
	[21032] = { config_id = 21032, gadget_id = 70330197, pos = { x = -1541.516, y = 257.459, z = 3664.720 }, rot = { x = 0.000, y = 132.179, z = 0.000 }, level = 30, area_id = 23 },
	[21033] = { config_id = 21033, gadget_id = 70330197, pos = { x = -1529.859, y = 244.738, z = 3668.151 }, rot = { x = 0.000, y = 318.842, z = 0.000 }, level = 30, area_id = 23 },
	[21034] = { config_id = 21034, gadget_id = 70330197, pos = { x = -1539.642, y = 256.011, z = 3669.548 }, rot = { x = 0.000, y = 245.235, z = 0.000 }, level = 30, area_id = 23 },
	[21035] = { config_id = 21035, gadget_id = 70330197, pos = { x = -1525.449, y = 243.404, z = 3681.648 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 30, area_id = 23 },
	[21040] = { config_id = 21040, gadget_id = 70690001, pos = { x = -1516.832, y = 256.434, z = 3667.387 }, rot = { x = 270.476, y = 111.747, z = 179.996 }, level = 30, area_id = 23 },
	[21041] = { config_id = 21041, gadget_id = 70690001, pos = { x = -1516.786, y = 262.413, z = 3667.368 }, rot = { x = 270.476, y = 111.747, z = 179.996 }, level = 30, area_id = 23 },
	[21042] = { config_id = 21042, gadget_id = 70220020, pos = { x = -1517.701, y = 271.486, z = 3638.415 }, rot = { x = 7.856, y = 13.290, z = 352.000 }, level = 30, area_id = 23 },
	[21043] = { config_id = 21043, gadget_id = 70220020, pos = { x = -1515.120, y = 271.530, z = 3630.063 }, rot = { x = 5.721, y = 136.002, z = 8.601 }, level = 30, area_id = 23 },
	[21044] = { config_id = 21044, gadget_id = 70220020, pos = { x = -1523.795, y = 272.653, z = 3632.451 }, rot = { x = 359.809, y = 259.813, z = 1.269 }, level = 30, area_id = 23 },
	[21045] = { config_id = 21045, gadget_id = 70220105, pos = { x = -1528.495, y = 237.825, z = 3614.566 }, rot = { x = 0.000, y = 112.818, z = 0.000 }, level = 30, area_id = 23 },
	[21046] = { config_id = 21046, gadget_id = 70220105, pos = { x = -1518.946, y = 241.991, z = 3684.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[21054] = { config_id = 21054, gadget_id = 70290196, pos = { x = -1490.651, y = 273.933, z = 3636.847 }, rot = { x = 0.000, y = 86.277, z = 0.000 }, level = 30, area_id = 23 },
	[21056] = { config_id = 21056, gadget_id = 70950145, pos = { x = -1486.553, y = 275.971, z = 3636.985 }, rot = { x = 0.000, y = 78.128, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 23 },
	[21057] = { config_id = 21057, gadget_id = 70310148, pos = { x = -1484.969, y = 275.709, z = 3636.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	[21058] = { config_id = 21058, gadget_id = 70220020, pos = { x = -1522.464, y = 272.116, z = 3636.992 }, rot = { x = 4.074, y = 313.191, z = 347.394 }, level = 30, area_id = 23 },
	[21059] = { config_id = 21059, gadget_id = 70220020, pos = { x = -1513.833, y = 271.137, z = 3634.852 }, rot = { x = 9.950, y = 70.684, z = 359.127 }, level = 30, area_id = 23 },
	[21060] = { config_id = 21060, gadget_id = 70220020, pos = { x = -1520.234, y = 272.471, z = 3628.764 }, rot = { x = 2.411, y = 199.298, z = 10.774 }, level = 30, area_id = 23 },
	-- 挂按钮用的
	[21061] = { config_id = 21061, gadget_id = 70950145, pos = { x = -1484.871, y = 275.420, z = 3636.963 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 23 }
}

-- 区域
regions = {
	-- 比黄圈半径+20，铺设范围看not in any suite
	[21029] = { config_id = 21029, shape = RegionShape.SPHERE, radius = 90, pos = { x = -1522.008, y = 251.856, z = 3652.062 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1021028, name = "GADGET_STATE_CHANGE_21028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_21028", action = "action_EVENT_GADGET_STATE_CHANGE_21028" }
}

-- 点位
points = {
	[21055] = { config_id = 21055, pos = { x = -1472.628, y = 286.117, z = 3645.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 21021, gadget_id = 70220105, pos = { x = -1463.364, y = 292.448, z = 3647.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21022, gadget_id = 70220105, pos = { x = -1536.468, y = 272.747, z = 3651.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21023, gadget_id = 70220105, pos = { x = -1536.734, y = 270.948, z = 3697.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21036, gadget_id = 70690029, pos = { x = -1510.309, y = 234.715, z = 3558.050 }, rot = { x = 0.000, y = 257.366, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21037, gadget_id = 70690001, pos = { x = -1510.667, y = 252.530, z = 3558.742 }, rot = { x = 270.481, y = 111.746, z = 179.996 }, level = 30, area_id = 23 },
		{ config_id = 21038, gadget_id = 70690001, pos = { x = -1510.619, y = 258.592, z = 3558.723 }, rot = { x = 270.478, y = 111.743, z = 179.999 }, level = 30, area_id = 23 },
		{ config_id = 21039, gadget_id = 70690001, pos = { x = -1510.574, y = 264.357, z = 3558.705 }, rot = { x = 270.476, y = 111.743, z = 180.000 }, level = 30, area_id = 23 },
		{ config_id = 21047, gadget_id = 70220105, pos = { x = -1463.438, y = 292.114, z = 3651.400 }, rot = { x = 0.000, y = 77.841, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21048, gadget_id = 70220105, pos = { x = -1464.914, y = 291.771, z = 3644.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21049, gadget_id = 70220105, pos = { x = -1460.055, y = 293.747, z = 3643.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21050, gadget_id = 70220105, pos = { x = -1465.624, y = 291.300, z = 3647.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21051, gadget_id = 70220105, pos = { x = -1462.792, y = 292.959, z = 3643.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21052, gadget_id = 70220105, pos = { x = -1460.163, y = 293.443, z = 3647.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	},
	regions = {
		{ config_id = 21053, shape = RegionShape.SPHERE, radius = 70, pos = { x = -1522.008, y = 251.856, z = 3652.062 }, area_id = 23 }
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
		gadgets = { 21005 },
		regions = { 21029 },
		triggers = { "GADGET_STATE_CHANGE_21028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 21001, 21002, 21003 },
		gadgets = { 21004, 21006, 21007, 21008, 21009, 21010, 21011, 21012, 21013, 21014, 21015, 21016, 21017, 21018, 21019, 21020, 21025, 21026, 21027, 21030, 21031, 21032, 21033, 21034, 21035, 21040, 21041, 21042, 21043, 21044, 21045, 21046, 21058, 21059, 21060 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 21024 },
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
		gadgets = { 21056, 21057, 21061 },
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
function condition_EVENT_GADGET_STATE_CHANGE_21028(context, evt)
	if 21005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"