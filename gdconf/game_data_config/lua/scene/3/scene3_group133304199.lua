-- 基础信息
local base_info = {
	group_id = 133304199
}

-- Trigger变量
local defs = {
	door = 199005,
	galleryId = 19106,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 199029,
	weatherId = 4066,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -1742, y = 93, z = 2238},
	transParam_Rot = {x = 0, y = 341, z = 0},
	transParam_Radius = 1,
	visionType = 0,
	point_camera = 199030,
	gadget_lookEntity = 199005,
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
	[199001] = { config_id = 199001, monster_id = 26090401, pos = { x = -1743.715, y = 95.343, z = 2289.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 21 },
	[199002] = { config_id = 199002, monster_id = 26090401, pos = { x = -1726.094, y = 99.496, z = 2292.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 21 },
	[199003] = { config_id = 199003, monster_id = 26090401, pos = { x = -1729.777, y = 103.185, z = 2301.248 }, rot = { x = 0.000, y = 340.692, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 21 },
	[199038] = { config_id = 199038, monster_id = 26090101, pos = { x = -1738.824, y = 98.060, z = 2294.846 }, rot = { x = 0.000, y = 139.868, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[199005] = { config_id = 199005, gadget_id = 70310205, pos = { x = -1745.759, y = 93.073, z = 2243.988 }, rot = { x = 0.869, y = 334.762, z = 1.323 }, level = 27, area_id = 21 },
	[199006] = { config_id = 199006, gadget_id = 70220104, pos = { x = -1628.137, y = 122.005, z = 2304.130 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 21 },
	[199007] = { config_id = 199007, gadget_id = 70220104, pos = { x = -1731.212, y = 102.545, z = 2298.123 }, rot = { x = 358.212, y = 359.958, z = 2.684 }, level = 27, area_id = 21 },
	[199008] = { config_id = 199008, gadget_id = 70220104, pos = { x = -1721.367, y = 101.135, z = 2294.423 }, rot = { x = 355.559, y = 359.758, z = 6.242 }, level = 27, area_id = 21 },
	[199009] = { config_id = 199009, gadget_id = 70220104, pos = { x = -1725.070, y = 99.048, z = 2290.024 }, rot = { x = 358.246, y = 359.824, z = 11.483 }, level = 27, area_id = 21 },
	[199010] = { config_id = 199010, gadget_id = 70220104, pos = { x = -1733.839, y = 96.711, z = 2284.802 }, rot = { x = 2.679, y = 359.916, z = 356.424 }, level = 27, area_id = 21 },
	[199011] = { config_id = 199011, gadget_id = 70220104, pos = { x = -1665.959, y = 118.761, z = 2292.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
	[199012] = { config_id = 199012, gadget_id = 70220104, pos = { x = -1744.840, y = 95.830, z = 2287.587 }, rot = { x = 354.654, y = 359.833, z = 3.577 }, level = 27, area_id = 21 },
	[199013] = { config_id = 199013, gadget_id = 70220104, pos = { x = -1637.543, y = 120.862, z = 2302.660 }, rot = { x = 352.882, y = 0.167, z = 357.316 }, level = 27, area_id = 21 },
	[199014] = { config_id = 199014, gadget_id = 70220104, pos = { x = -1624.416, y = 124.716, z = 2283.845 }, rot = { x = 352.003, y = 0.188, z = 357.316 }, level = 27, area_id = 21 },
	[199015] = { config_id = 199015, gadget_id = 70220104, pos = { x = -1660.474, y = 128.154, z = 2277.731 }, rot = { x = 358.212, y = 0.042, z = 357.316 }, level = 27, area_id = 21 },
	[199016] = { config_id = 199016, gadget_id = 70220104, pos = { x = -1668.945, y = 120.868, z = 2286.689 }, rot = { x = 4.465, y = 0.070, z = 1.790 }, level = 27, area_id = 21 },
	[199017] = { config_id = 199017, gadget_id = 70220104, pos = { x = -1660.295, y = 127.795, z = 2284.599 }, rot = { x = 3.573, y = 359.916, z = 357.316 }, level = 27, area_id = 21 },
	[199018] = { config_id = 199018, gadget_id = 70220104, pos = { x = -1628.510, y = 121.557, z = 2276.958 }, rot = { x = 1.797, y = 359.906, z = 4.462 }, level = 27, area_id = 21 },
	[199019] = { config_id = 199019, gadget_id = 70220104, pos = { x = -1624.507, y = 125.085, z = 2294.023 }, rot = { x = 2.683, y = 359.958, z = 358.210 }, level = 27, area_id = 21 },
	[199020] = { config_id = 199020, gadget_id = 70220104, pos = { x = -1666.970, y = 127.247, z = 2277.814 }, rot = { x = 1.779, y = 359.903, z = 353.758 }, level = 27, area_id = 21 },
	[199021] = { config_id = 199021, gadget_id = 70220105, pos = { x = -1725.726, y = 103.190, z = 2299.351 }, rot = { x = 350.251, y = 351.155, z = 13.534 }, level = 27, area_id = 21 },
	[199022] = { config_id = 199022, gadget_id = 70220105, pos = { x = -1636.382, y = 119.351, z = 2300.940 }, rot = { x = 344.179, y = 94.172, z = 358.208 }, level = 27, area_id = 21 },
	[199024] = { config_id = 199024, gadget_id = 70211121, pos = { x = -1745.722, y = 93.544, z = 2244.034 }, rot = { x = 5.542, y = 152.566, z = 356.988 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[199032] = { config_id = 199032, gadget_id = 70310148, pos = { x = -1744.628, y = 93.224, z = 2242.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	-- 挂icon用的
	[199033] = { config_id = 199033, gadget_id = 70950145, pos = { x = -1745.759, y = 94.191, z = 2243.988 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	-- 挂按钮用的
	[199034] = { config_id = 199034, gadget_id = 70950145, pos = { x = -1744.628, y = 93.224, z = 2242.197 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 21 },
	[199035] = { config_id = 199035, gadget_id = 70220103, pos = { x = -1666.932, y = 129.705, z = 2277.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[199036] = { config_id = 199036, gadget_id = 70220103, pos = { x = -1630.787, y = 125.367, z = 2275.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[199037] = { config_id = 199037, gadget_id = 70220103, pos = { x = -1666.217, y = 121.070, z = 2292.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[199039] = { config_id = 199039, gadget_id = 70220103, pos = { x = -1733.495, y = 99.045, z = 2283.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[199040] = { config_id = 199040, gadget_id = 70220103, pos = { x = -1690.146, y = 114.398, z = 2259.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[199041] = { config_id = 199041, gadget_id = 70220103, pos = { x = -1718.810, y = 95.959, z = 2249.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[199042] = { config_id = 199042, gadget_id = 70220103, pos = { x = -1694.717, y = 111.350, z = 2305.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	[199029] = { config_id = 199029, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1693.373, y = 101.415, z = 2285.906 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 激活绝对注目
	{ config_id = 1199028, name = "GADGET_STATE_CHANGE_199028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_199028", action = "action_EVENT_GADGET_STATE_CHANGE_199028" }
}

-- 点位
points = {
	[199030] = { config_id = 199030, pos = { x = -1746.085, y = 101.052, z = 2232.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 199004, gadget_id = 70220105, pos = { x = -1714.291, y = 95.461, z = 2257.409 }, rot = { x = 0.000, y = 169.069, z = 0.000 }, level = 33, area_id = 21 },
		{ config_id = 199023, gadget_id = 70220105, pos = { x = -1681.893, y = 104.950, z = 2284.527 }, rot = { x = 0.000, y = 169.069, z = 0.000 }, level = 27, area_id = 21 },
		{ config_id = 199025, gadget_id = 70220005, pos = { x = -1712.047, y = 93.715, z = 2254.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
		{ config_id = 199026, gadget_id = 70220005, pos = { x = -1681.340, y = 104.687, z = 2283.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
		{ config_id = 199027, gadget_id = 70220005, pos = { x = -1672.057, y = 110.022, z = 2303.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
		{ config_id = 199031, gadget_id = 70360001, pos = { x = -1745.029, y = 93.111, z = 2241.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
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
		gadgets = { 199005 },
		regions = { 199029 },
		triggers = { "GADGET_STATE_CHANGE_199028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 199001, 199002, 199003, 199038 },
		gadgets = { 199006, 199007, 199008, 199009, 199010, 199011, 199012, 199013, 199014, 199015, 199016, 199017, 199018, 199019, 199020, 199021, 199022, 199035, 199036, 199037, 199039, 199040, 199041, 199042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 199024 },
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
		gadgets = { 199032, 199033, 199034 },
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
function condition_EVENT_GADGET_STATE_CHANGE_199028(context, evt)
	if 199005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_199028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"