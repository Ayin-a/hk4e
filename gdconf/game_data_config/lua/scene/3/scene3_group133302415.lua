-- 基础信息
local base_info = {
	group_id = 133302415
}

-- Trigger变量
local defs = {
	door = 415005,
	galleryId = 19108,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 415029,
	weatherId = 4059,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = 219, y = 297, z = 2468},
	transParam_Rot = {x =1, y = 175, z = 1},
	transParam_Radius = 1,
	point_camera = 415059,
	gadget_lookEntity = 415005,
	look_duration = 3
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
	[415001] = { config_id = 415001, monster_id = 26090401, pos = { x = 198.253, y = 294.978, z = 2381.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415002] = { config_id = 415002, monster_id = 26090401, pos = { x = 202.833, y = 295.125, z = 2385.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415003] = { config_id = 415003, monster_id = 26090401, pos = { x = 198.573, y = 294.779, z = 2385.949 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415037] = { config_id = 415037, monster_id = 26090801, pos = { x = 212.206, y = 273.839, z = 2285.083 }, rot = { x = 0.000, y = 191.381, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415038] = { config_id = 415038, monster_id = 26090801, pos = { x = 208.488, y = 273.184, z = 2285.564 }, rot = { x = 0.000, y = 161.392, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415039] = { config_id = 415039, monster_id = 26090801, pos = { x = 209.786, y = 273.336, z = 2282.692 }, rot = { x = 0.000, y = 338.844, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415042] = { config_id = 415042, monster_id = 26090801, pos = { x = 265.815, y = 275.456, z = 2291.996 }, rot = { x = 0.000, y = 96.526, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415043] = { config_id = 415043, monster_id = 26090801, pos = { x = 260.843, y = 275.186, z = 2289.024 }, rot = { x = 0.000, y = 96.526, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415044] = { config_id = 415044, monster_id = 26090801, pos = { x = 261.356, y = 275.426, z = 2294.856 }, rot = { x = 0.000, y = 96.526, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415048] = { config_id = 415048, monster_id = 26090801, pos = { x = 173.321, y = 275.644, z = 2311.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415049] = { config_id = 415049, monster_id = 26090801, pos = { x = 167.291, y = 275.426, z = 2314.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415050] = { config_id = 415050, monster_id = 26090801, pos = { x = 167.799, y = 276.913, z = 2309.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415064] = { config_id = 415064, monster_id = 26090401, pos = { x = 283.344, y = 274.131, z = 2316.306 }, rot = { x = 0.000, y = 290.805, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415065] = { config_id = 415065, monster_id = 26090401, pos = { x = 285.573, y = 275.059, z = 2310.188 }, rot = { x = 0.000, y = 94.141, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	[415066] = { config_id = 415066, monster_id = 26090401, pos = { x = 290.016, y = 274.398, z = 2315.566 }, rot = { x = 0.000, y = 216.207, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[415004] = { config_id = 415004, gadget_id = 70220105, pos = { x = 202.691, y = 295.668, z = 2381.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415005] = { config_id = 415005, gadget_id = 70310205, pos = { x = 220.371, y = 295.988, z = 2461.835 }, rot = { x = 359.753, y = 173.798, z = 357.740 }, level = 27, area_id = 20 },
	[415006] = { config_id = 415006, gadget_id = 70220104, pos = { x = 221.342, y = 297.831, z = 2426.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415007] = { config_id = 415007, gadget_id = 70220104, pos = { x = 200.334, y = 295.309, z = 2383.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415008] = { config_id = 415008, gadget_id = 70220104, pos = { x = 169.460, y = 276.596, z = 2312.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415009] = { config_id = 415009, gadget_id = 70220104, pos = { x = 185.988, y = 273.582, z = 2307.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415010] = { config_id = 415010, gadget_id = 70220104, pos = { x = 188.460, y = 272.454, z = 2289.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415011] = { config_id = 415011, gadget_id = 70220104, pos = { x = 236.499, y = 274.130, z = 2288.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415012] = { config_id = 415012, gadget_id = 70220104, pos = { x = 262.557, y = 275.445, z = 2291.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415013] = { config_id = 415013, gadget_id = 70220104, pos = { x = 266.479, y = 275.136, z = 2272.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415014] = { config_id = 415014, gadget_id = 70220104, pos = { x = 291.061, y = 276.147, z = 2268.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415015] = { config_id = 415015, gadget_id = 70220104, pos = { x = 304.343, y = 276.202, z = 2296.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415016] = { config_id = 415016, gadget_id = 70220104, pos = { x = 210.480, y = 273.596, z = 2283.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415017] = { config_id = 415017, gadget_id = 70220104, pos = { x = 324.327, y = 289.511, z = 2363.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415018] = { config_id = 415018, gadget_id = 70220104, pos = { x = 293.630, y = 289.276, z = 2379.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415019] = { config_id = 415019, gadget_id = 70220104, pos = { x = 299.409, y = 288.201, z = 2362.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415020] = { config_id = 415020, gadget_id = 70220104, pos = { x = 308.349, y = 287.690, z = 2385.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415021] = { config_id = 415021, gadget_id = 70220105, pos = { x = 286.743, y = 274.842, z = 2313.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[415024] = { config_id = 415024, gadget_id = 70211121, pos = { x = 220.234, y = 296.273, z = 2461.315 }, rot = { x = 0.000, y = 354.553, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	[415061] = { config_id = 415061, gadget_id = 70360001, pos = { x = 220.238, y = 296.820, z = 2461.148 }, rot = { x = 0.000, y = 151.087, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 20 },
	[415062] = { config_id = 415062, gadget_id = 70310148, pos = { x = 220.161, y = 297.393, z = 2458.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 20 },
	[415067] = { config_id = 415067, gadget_id = 70690010, pos = { x = 306.258, y = 289.708, z = 2373.178 }, rot = { x = 0.000, y = 236.078, z = 0.000 }, level = 27, area_id = 20 },
	[415068] = { config_id = 415068, gadget_id = 70220103, pos = { x = 195.863, y = 276.202, z = 2318.225 }, rot = { x = 0.000, y = 312.834, z = 0.000 }, level = 27, area_id = 20 },
	[415069] = { config_id = 415069, gadget_id = 70220103, pos = { x = 196.900, y = 284.812, z = 2346.774 }, rot = { x = 0.000, y = 344.545, z = 0.000 }, level = 27, area_id = 20 },
	[415070] = { config_id = 415070, gadget_id = 70220103, pos = { x = 298.888, y = 290.683, z = 2362.604 }, rot = { x = 0.000, y = 358.892, z = 0.000 }, level = 27, area_id = 20 },
	[415071] = { config_id = 415071, gadget_id = 70220103, pos = { x = 293.973, y = 288.295, z = 2339.691 }, rot = { x = 0.000, y = 64.083, z = 0.000 }, level = 27, area_id = 20 },
	[415072] = { config_id = 415072, gadget_id = 70220103, pos = { x = 280.352, y = 339.000, z = 2389.938 }, rot = { x = 0.000, y = 10.762, z = 0.000 }, level = 27, area_id = 20 },
	[415073] = { config_id = 415073, gadget_id = 70220103, pos = { x = 251.687, y = 329.211, z = 2413.174 }, rot = { x = 0.000, y = 10.762, z = 0.000 }, level = 27, area_id = 20 },
	[415074] = { config_id = 415074, gadget_id = 70220103, pos = { x = 225.975, y = 299.814, z = 2441.954 }, rot = { x = 0.000, y = 133.346, z = 0.000 }, level = 27, area_id = 20 },
	-- 挂按钮用的
	[415075] = { config_id = 415075, gadget_id = 70950145, pos = { x = 220.238, y = 296.820, z = 2461.148 }, rot = { x = 0.000, y = 151.087, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 20 }
}

-- 区域
regions = {
	[415029] = { config_id = 415029, shape = RegionShape.SPHERE, radius = 140, pos = { x = 241.009, y = 252.922, z = 2367.098 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1415028, name = "GADGET_STATE_CHANGE_415028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_415028", action = "action_EVENT_GADGET_STATE_CHANGE_415028" },
	{ config_id = 1415060, name = "GADGET_STATE_CHANGE_415060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_415060", action = "action_EVENT_GADGET_STATE_CHANGE_415060" }
}

-- 点位
points = {
	[415059] = { config_id = 415059, pos = { x = 223.660, y = 302.552, z = 2473.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 },
	[415063] = { config_id = 415063, pos = { x = 220.712, y = 304.326, z = 2466.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 415032, monster_id = 26090201, pos = { x = 406.184, y = 217.761, z = 2305.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
		{ config_id = 415053, monster_id = 26090201, pos = { x = 410.656, y = 219.665, z = 2307.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 }
	},
	gadgets = {
		{ config_id = 415022, gadget_id = 70220105, pos = { x = 178.360, y = 272.300, z = 2295.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415023, gadget_id = 70220105, pos = { x = 307.325, y = 241.641, z = 2350.162 }, rot = { x = 0.000, y = 169.069, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415025, gadget_id = 70220105, pos = { x = 206.917, y = 293.177, z = 2407.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415026, gadget_id = 70220005, pos = { x = 407.607, y = 220.242, z = 2310.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415027, gadget_id = 70330197, pos = { x = 215.802, y = 279.443, z = 2383.409 }, rot = { x = 0.000, y = 116.803, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415030, gadget_id = 70220103, pos = { x = 344.383, y = 234.307, z = 2231.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415031, gadget_id = 70220103, pos = { x = 387.742, y = 207.230, z = 2286.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415033, gadget_id = 70220103, pos = { x = 383.391, y = 214.384, z = 2265.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415034, gadget_id = 70330197, pos = { x = 219.388, y = 274.615, z = 2374.679 }, rot = { x = 0.000, y = 131.296, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415035, gadget_id = 70220103, pos = { x = 299.527, y = 252.273, z = 2365.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415036, gadget_id = 70220103, pos = { x = 213.242, y = 272.654, z = 2249.369 }, rot = { x = 0.000, y = 194.995, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415040, gadget_id = 70220103, pos = { x = 270.400, y = 255.945, z = 2217.257 }, rot = { x = 0.000, y = 71.521, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415041, gadget_id = 70220105, pos = { x = 320.539, y = 241.887, z = 2235.085 }, rot = { x = 0.000, y = 344.451, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415045, gadget_id = 70220105, pos = { x = 180.428, y = 275.926, z = 2344.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415046, gadget_id = 70220103, pos = { x = 312.776, y = 244.776, z = 2234.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415047, gadget_id = 70220103, pos = { x = 370.597, y = 219.184, z = 2230.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415051, gadget_id = 70220105, pos = { x = 413.385, y = 229.692, z = 2339.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415052, gadget_id = 70220105, pos = { x = 338.206, y = 229.978, z = 2349.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415054, gadget_id = 70220103, pos = { x = 275.424, y = 255.899, z = 2377.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415055, gadget_id = 70220103, pos = { x = 263.833, y = 286.976, z = 2378.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415056, gadget_id = 70220105, pos = { x = 215.167, y = 280.153, z = 2381.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415057, gadget_id = 70220103, pos = { x = 251.268, y = 261.152, z = 2214.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 415058, gadget_id = 70220103, pos = { x = 295.136, y = 254.319, z = 2230.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
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
		gadgets = { 415005 },
		regions = { 415029 },
		triggers = { "GADGET_STATE_CHANGE_415060" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 415004, 415006, 415007, 415008, 415009, 415010, 415011, 415012, 415013, 415014, 415015, 415016, 415017, 415018, 415019, 415020, 415021, 415068, 415069, 415070, 415071 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_415028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 415024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 415001, 415002, 415003, 415037, 415038, 415039, 415042, 415043, 415044, 415048, 415049, 415050, 415064, 415065, 415066 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 415061, 415062, 415067, 415072, 415073, 415074, 415075 },
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
function condition_EVENT_GADGET_STATE_CHANGE_415028(context, evt)
	if 415005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_415028(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-494.9589, y=157, z=3601.006}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-494.9589, y=157, z=3601.006}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_415060(context, evt)
	if 415005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_415060(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"