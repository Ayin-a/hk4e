-- 基础信息
local base_info = {
	group_id = 133303020
}

-- Trigger变量
local defs = {
	door = 20005,
	galleryId = 19111,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 20029,
	weatherId = 4063,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -1227.407, y = 243.6306, z = 3585.265},
	transParam_Rot = {x =1, y = 180, z = 2},
	transParam_Radius = 1,
	visionType = 0,
	point_camera = 20025,
	gadget_lookEntity = 20005,
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
	[20001] = { config_id = 20001, monster_id = 26090201, pos = { x = -1198.297, y = 239.010, z = 3575.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[20005] = { config_id = 20005, gadget_id = 70310205, pos = { x = -1227.021, y = 243.761, z = 3580.678 }, rot = { x = 0.000, y = 178.037, z = 0.000 }, level = 30, area_id = 23 },
	[20006] = { config_id = 20006, gadget_id = 70220104, pos = { x = -1184.619, y = 198.040, z = 3583.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20007] = { config_id = 20007, gadget_id = 70220104, pos = { x = -1166.152, y = 206.808, z = 3569.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20008] = { config_id = 20008, gadget_id = 70220104, pos = { x = -1165.829, y = 211.998, z = 3564.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20009] = { config_id = 20009, gadget_id = 70220104, pos = { x = -1178.132, y = 197.808, z = 3570.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20010] = { config_id = 20010, gadget_id = 70220104, pos = { x = -1187.819, y = 196.400, z = 3596.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20011] = { config_id = 20011, gadget_id = 70220104, pos = { x = -1201.665, y = 234.430, z = 3559.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20012] = { config_id = 20012, gadget_id = 70220104, pos = { x = -1203.512, y = 236.452, z = 3556.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20013] = { config_id = 20013, gadget_id = 70220104, pos = { x = -1177.042, y = 223.902, z = 3559.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20014] = { config_id = 20014, gadget_id = 70220104, pos = { x = -1165.389, y = 215.938, z = 3558.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20015] = { config_id = 20015, gadget_id = 70220104, pos = { x = -1172.345, y = 221.264, z = 3559.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20016] = { config_id = 20016, gadget_id = 70220104, pos = { x = -1207.617, y = 238.125, z = 3557.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20017] = { config_id = 20017, gadget_id = 70220104, pos = { x = -1209.805, y = 238.715, z = 3560.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20018] = { config_id = 20018, gadget_id = 70220104, pos = { x = -1176.905, y = 195.810, z = 3594.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20019] = { config_id = 20019, gadget_id = 70220104, pos = { x = -1202.341, y = 234.290, z = 3562.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20020] = { config_id = 20020, gadget_id = 70220104, pos = { x = -1167.678, y = 196.435, z = 3580.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20024] = { config_id = 20024, gadget_id = 70211121, pos = { x = -1227.176, y = 243.750, z = 3580.581 }, rot = { x = 0.000, y = 357.157, z = 356.167 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[20026] = { config_id = 20026, gadget_id = 70950145, pos = { x = -1227.186, y = 243.750, z = 3581.294 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 23 },
	[20027] = { config_id = 20027, gadget_id = 70310148, pos = { x = -1227.508, y = 243.636, z = 3582.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	[20030] = { config_id = 20030, gadget_id = 70690029, pos = { x = -1193.408, y = 199.700, z = 3596.282 }, rot = { x = 0.000, y = 248.064, z = 0.000 }, level = 30, area_id = 23 },
	[20031] = { config_id = 20031, gadget_id = 70690029, pos = { x = -1187.072, y = 202.209, z = 3545.977 }, rot = { x = 0.000, y = 195.557, z = 0.000 }, level = 30, area_id = 23 },
	[20032] = { config_id = 20032, gadget_id = 70220020, pos = { x = -1208.137, y = 237.366, z = 3562.448 }, rot = { x = 335.671, y = 287.651, z = 350.856 }, level = 30, area_id = 23 },
	[20033] = { config_id = 20033, gadget_id = 70220020, pos = { x = -1205.823, y = 236.029, z = 3565.678 }, rot = { x = 349.512, y = 344.008, z = 332.501 }, level = 30, area_id = 23 },
	[20034] = { config_id = 20034, gadget_id = 70220020, pos = { x = -1201.934, y = 234.543, z = 3565.633 }, rot = { x = 2.832, y = 26.428, z = 335.497 }, level = 30, area_id = 23 },
	[20036] = { config_id = 20036, gadget_id = 70220105, pos = { x = -1199.265, y = 228.279, z = 3598.538 }, rot = { x = 0.000, y = 356.031, z = 0.000 }, level = 30, area_id = 23 },
	[20037] = { config_id = 20037, gadget_id = 70220105, pos = { x = -1183.661, y = 226.031, z = 3560.022 }, rot = { x = 0.000, y = 37.758, z = 0.000 }, level = 30, area_id = 23 },
	[20040] = { config_id = 20040, gadget_id = 70220105, pos = { x = -1174.958, y = 196.436, z = 3577.236 }, rot = { x = 0.000, y = 51.805, z = 0.000 }, level = 30, area_id = 23 },
	[20041] = { config_id = 20041, gadget_id = 70690001, pos = { x = -1192.172, y = 212.609, z = 3596.046 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20043] = { config_id = 20043, gadget_id = 70290196, pos = { x = -1227.407, y = 243.631, z = 3585.265 }, rot = { x = 0.000, y = 180.704, z = 0.000 }, level = 30, area_id = 23 },
	[20044] = { config_id = 20044, gadget_id = 70330216, pos = { x = -1180.372, y = 197.870, z = 3571.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20045] = { config_id = 20045, gadget_id = 70330216, pos = { x = -1166.194, y = 195.951, z = 3577.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20046] = { config_id = 20046, gadget_id = 70330216, pos = { x = -1187.060, y = 196.058, z = 3595.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20047] = { config_id = 20047, gadget_id = 70690001, pos = { x = -1192.172, y = 219.971, z = 3596.046 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20051] = { config_id = 20051, gadget_id = 70220103, pos = { x = -1183.644, y = 229.512, z = 3560.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20052] = { config_id = 20052, gadget_id = 70220103, pos = { x = -1165.369, y = 216.298, z = 3558.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20053] = { config_id = 20053, gadget_id = 70220103, pos = { x = -1166.146, y = 199.217, z = 3577.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20054] = { config_id = 20054, gadget_id = 70330216, pos = { x = -1186.397, y = 197.586, z = 3585.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[20055] = { config_id = 20055, gadget_id = 70330216, pos = { x = -1175.287, y = 195.927, z = 3592.307 }, rot = { x = 0.000, y = 206.010, z = 0.000 }, level = 30, area_id = 23 },
	[20057] = { config_id = 20057, gadget_id = 70220020, pos = { x = -1212.374, y = 239.462, z = 3560.888 }, rot = { x = 335.088, y = 261.362, z = 357.918 }, level = 30, area_id = 23 },
	[20058] = { config_id = 20058, gadget_id = 70220020, pos = { x = -1206.766, y = 237.149, z = 3558.867 }, rot = { x = 329.860, y = 212.550, z = 8.347 }, level = 30, area_id = 23 },
	[20059] = { config_id = 20059, gadget_id = 70220020, pos = { x = -1199.151, y = 233.522, z = 3558.460 }, rot = { x = 16.401, y = 115.599, z = 29.573 }, level = 30, area_id = 23 },
	[20060] = { config_id = 20060, gadget_id = 70220020, pos = { x = -1199.839, y = 232.787, z = 3562.666 }, rot = { x = 29.250, y = 69.789, z = 344.055 }, level = 30, area_id = 23 },
	[20061] = { config_id = 20061, gadget_id = 70220020, pos = { x = -1201.032, y = 235.758, z = 3555.370 }, rot = { x = 2.541, y = 138.202, z = 33.368 }, level = 30, area_id = 23 },
	[20062] = { config_id = 20062, gadget_id = 70220020, pos = { x = -1204.144, y = 237.760, z = 3554.062 }, rot = { x = 348.619, y = 167.956, z = 28.203 }, level = 30, area_id = 23 },
	[20063] = { config_id = 20063, gadget_id = 70220020, pos = { x = -1207.851, y = 239.209, z = 3554.858 }, rot = { x = 330.770, y = 201.914, z = 12.673 }, level = 30, area_id = 23 },
	[20064] = { config_id = 20064, gadget_id = 70220020, pos = { x = -1210.911, y = 239.463, z = 3557.076 }, rot = { x = 330.742, y = 223.898, z = 8.756 }, level = 30, area_id = 23 },
	[20065] = { config_id = 20065, gadget_id = 70330197, pos = { x = -1205.341, y = 235.496, z = 3561.589 }, rot = { x = 0.000, y = 0.000, z = 342.390 }, level = 30, area_id = 23 },
	-- 挂按钮用的
	[20066] = { config_id = 20066, gadget_id = 70950145, pos = { x = -1227.467, y = 243.664, z = 3582.960 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 23 }
}

-- 区域
regions = {
	-- 比黄圈半径+20，铺设范围看not in any suite
	[20029] = { config_id = 20029, shape = RegionShape.SPHERE, radius = 70, pos = { x = -1200.485, y = 210.049, z = 3565.615 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1020028, name = "GADGET_STATE_CHANGE_20028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_20028", action = "action_EVENT_GADGET_STATE_CHANGE_20028" }
}

-- 点位
points = {
	[20025] = { config_id = 20025, pos = { x = -1222.512, y = 248.551, z = 3592.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 20002, monster_id = 26090201, pos = { x = -1181.819, y = 197.629, z = 3576.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
		{ config_id = 20003, monster_id = 26090201, pos = { x = -1206.924, y = 231.678, z = 3600.231 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 }
	},
	gadgets = {
		{ config_id = 20004, gadget_id = 70220105, pos = { x = -1234.177, y = 255.047, z = 3561.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20021, gadget_id = 70220105, pos = { x = -1235.809, y = 255.983, z = 3563.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20022, gadget_id = 70220105, pos = { x = -1223.855, y = 243.334, z = 3589.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20023, gadget_id = 70220105, pos = { x = -1241.355, y = 256.632, z = 3558.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20035, gadget_id = 70220105, pos = { x = -1183.307, y = 234.651, z = 3528.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20038, gadget_id = 70220105, pos = { x = -1235.442, y = 256.009, z = 3566.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20039, gadget_id = 70220105, pos = { x = -1233.551, y = 255.767, z = 3565.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20048, gadget_id = 70330197, pos = { x = -1231.780, y = 255.906, z = 3566.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20049, gadget_id = 70330197, pos = { x = -1237.915, y = 256.775, z = 3563.720 }, rot = { x = 0.000, y = 125.583, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20050, gadget_id = 70330197, pos = { x = -1237.076, y = 255.950, z = 3560.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 20056, gadget_id = 70330216, pos = { x = -1190.693, y = 197.741, z = 3579.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	},
	regions = {
		{ config_id = 20042, shape = RegionShape.SPHERE, radius = 70, pos = { x = -1200.485, y = 222.789, z = 3565.615 }, area_id = 23 }
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
		gadgets = { 20005 },
		regions = { 20029 },
		triggers = { "GADGET_STATE_CHANGE_20028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 20001 },
		gadgets = { 20006, 20007, 20008, 20009, 20010, 20011, 20012, 20013, 20014, 20015, 20016, 20017, 20018, 20019, 20020, 20030, 20031, 20032, 20033, 20034, 20036, 20037, 20040, 20041, 20044, 20045, 20046, 20047, 20051, 20052, 20053, 20054, 20055, 20057, 20058, 20059, 20060, 20061, 20062, 20063, 20064, 20065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 20024 },
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
		gadgets = { 20026, 20027, 20066 },
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
function condition_EVENT_GADGET_STATE_CHANGE_20028(context, evt)
	if 20005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_20028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"