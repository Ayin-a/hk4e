-- 基础信息
local base_info = {
	group_id = 133304197
}

-- Trigger变量
local defs = {
	door = 197005,
	galleryId = 19104,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 197029,
	weatherId = 4067,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -1631, y = 501, z = 2158},
	transParam_Rot = {x =1, y = 318, z = 2},
	transParam_Radius = 1,
	visionType = 33040012,
	point_camera = 197030,
	gadget_lookEntity = 197005,
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
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[197004] = { config_id = 197004, gadget_id = 70220105, pos = { x = -1644.869, y = 497.847, z = 2170.908 }, rot = { x = 22.314, y = 331.462, z = 19.287 }, level = 33, area_id = 21 },
	[197005] = { config_id = 197005, gadget_id = 70310205, pos = { x = -1636.396, y = 499.929, z = 2163.241 }, rot = { x = 5.923, y = 327.056, z = 7.572 }, level = 33, area_id = 21 },
	[197006] = { config_id = 197006, gadget_id = 70220104, pos = { x = -1650.971, y = 492.409, z = 2181.593 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 33, area_id = 21 },
	[197007] = { config_id = 197007, gadget_id = 70220104, pos = { x = -1655.360, y = 486.116, z = 2196.132 }, rot = { x = 358.212, y = 359.958, z = 2.684 }, level = 33, area_id = 21 },
	[197008] = { config_id = 197008, gadget_id = 70220104, pos = { x = -1661.613, y = 480.249, z = 2208.240 }, rot = { x = 355.559, y = 359.758, z = 6.242 }, level = 33, area_id = 21 },
	[197009] = { config_id = 197009, gadget_id = 70220104, pos = { x = -1668.996, y = 475.196, z = 2219.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 21 },
	[197010] = { config_id = 197010, gadget_id = 70220104, pos = { x = -1675.473, y = 471.924, z = 2224.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 21 },
	[197011] = { config_id = 197011, gadget_id = 70220104, pos = { x = -1683.528, y = 468.036, z = 2225.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 21 },
	[197012] = { config_id = 197012, gadget_id = 70220104, pos = { x = -1692.927, y = 462.833, z = 2222.395 }, rot = { x = 354.654, y = 359.833, z = 3.577 }, level = 33, area_id = 21 },
	[197013] = { config_id = 197013, gadget_id = 70220104, pos = { x = -1704.476, y = 458.765, z = 2218.914 }, rot = { x = 352.882, y = 0.167, z = 357.316 }, level = 33, area_id = 21 },
	[197014] = { config_id = 197014, gadget_id = 70220104, pos = { x = -1713.857, y = 454.154, z = 2214.534 }, rot = { x = 352.003, y = 0.188, z = 357.316 }, level = 33, area_id = 21 },
	[197015] = { config_id = 197015, gadget_id = 70220104, pos = { x = -1719.832, y = 449.120, z = 2208.978 }, rot = { x = 358.212, y = 0.042, z = 357.316 }, level = 33, area_id = 21 },
	[197016] = { config_id = 197016, gadget_id = 70220104, pos = { x = -1726.035, y = 444.496, z = 2199.762 }, rot = { x = 4.465, y = 0.070, z = 1.790 }, level = 33, area_id = 21 },
	[197017] = { config_id = 197017, gadget_id = 70220104, pos = { x = -1729.821, y = 440.246, z = 2191.613 }, rot = { x = 3.573, y = 359.916, z = 357.316 }, level = 33, area_id = 21 },
	[197018] = { config_id = 197018, gadget_id = 70220104, pos = { x = -1732.977, y = 436.580, z = 2184.390 }, rot = { x = 1.797, y = 359.906, z = 4.462 }, level = 33, area_id = 21 },
	[197019] = { config_id = 197019, gadget_id = 70220104, pos = { x = -1734.914, y = 433.065, z = 2177.247 }, rot = { x = 2.683, y = 359.958, z = 358.210 }, level = 33, area_id = 21 },
	[197020] = { config_id = 197020, gadget_id = 70220104, pos = { x = -1645.221, y = 499.024, z = 2170.759 }, rot = { x = 1.779, y = 359.903, z = 353.758 }, level = 33, area_id = 21 },
	[197024] = { config_id = 197024, gadget_id = 70211121, pos = { x = -1636.393, y = 500.305, z = 2163.271 }, rot = { x = 354.040, y = 146.870, z = 348.653 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[197033] = { config_id = 197033, gadget_id = 70950145, pos = { x = -1636.348, y = 500.309, z = 2163.158 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	[197034] = { config_id = 197034, gadget_id = 70310148, pos = { x = -1635.199, y = 500.598, z = 2161.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 21 },
	[197035] = { config_id = 197035, gadget_id = 70690010, pos = { x = -1730.474, y = 406.228, z = 2157.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[197036] = { config_id = 197036, gadget_id = 70690001, pos = { x = -1730.474, y = 460.000, z = 2157.091 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[197037] = { config_id = 197037, gadget_id = 70690001, pos = { x = -1730.474, y = 470.000, z = 2157.091 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[197038] = { config_id = 197038, gadget_id = 70690001, pos = { x = -1730.474, y = 480.000, z = 2157.091 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[197039] = { config_id = 197039, gadget_id = 70690001, pos = { x = -1730.474, y = 490.000, z = 2157.091 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[197040] = { config_id = 197040, gadget_id = 70690001, pos = { x = -1730.474, y = 500.000, z = 2157.091 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[197042] = { config_id = 197042, gadget_id = 70690001, pos = { x = -1721.584, y = 513.598, z = 2158.048 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 30, area_id = 21 },
	[197043] = { config_id = 197043, gadget_id = 70690001, pos = { x = -1711.104, y = 513.598, z = 2158.416 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 30, area_id = 21 },
	[197044] = { config_id = 197044, gadget_id = 70690001, pos = { x = -1701.770, y = 513.598, z = 2158.416 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 30, area_id = 21 },
	[197045] = { config_id = 197045, gadget_id = 70690001, pos = { x = -1692.182, y = 513.598, z = 2158.416 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 30, area_id = 21 },
	-- 挂按钮用的
	[197046] = { config_id = 197046, gadget_id = 70950145, pos = { x = -1635.199, y = 500.598, z = 2161.675 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 21 }
}

-- 区域
regions = {
	[197029] = { config_id = 197029, shape = RegionShape.SPHERE, radius = 110, pos = { x = -1658.658, y = 455.376, z = 2201.806 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1197028, name = "GADGET_STATE_CHANGE_197028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197028", action = "action_EVENT_GADGET_STATE_CHANGE_197028" }
}

-- 点位
points = {
	[197030] = { config_id = 197030, pos = { x = -1627.130, y = 506.583, z = 2156.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 197001, monster_id = 26090401, pos = { x = -1664.729, y = 451.498, z = 2228.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
		{ config_id = 197002, monster_id = 26090401, pos = { x = -1672.264, y = 451.897, z = 2212.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
		{ config_id = 197003, monster_id = 26090201, pos = { x = -1650.171, y = 459.735, z = 2212.782 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 33, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 }
	},
	gadgets = {
		{ config_id = 197021, gadget_id = 70220105, pos = { x = -1651.400, y = 460.290, z = 2210.011 }, rot = { x = 325.789, y = 144.954, z = 352.790 }, level = 33, area_id = 21 },
		{ config_id = 197022, gadget_id = 70220105, pos = { x = -1666.562, y = 451.083, z = 2231.029 }, rot = { x = 0.000, y = 283.934, z = 0.000 }, level = 33, area_id = 21 },
		{ config_id = 197023, gadget_id = 70220105, pos = { x = -1653.848, y = 493.109, z = 2170.621 }, rot = { x = 354.494, y = 358.075, z = 38.524 }, level = 33, area_id = 21 },
		{ config_id = 197025, gadget_id = 70220005, pos = { x = -1698.529, y = 449.368, z = 2227.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 21 },
		{ config_id = 197026, gadget_id = 70220005, pos = { x = -1698.484, y = 448.558, z = 2227.736 }, rot = { x = 358.325, y = 357.314, z = 4.137 }, level = 33, area_id = 21 },
		{ config_id = 197027, gadget_id = 70220005, pos = { x = -1666.051, y = 450.936, z = 2232.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 21 },
		{ config_id = 197031, gadget_id = 70330197, pos = { x = -1663.220, y = 467.360, z = 2166.776 }, rot = { x = -0.003, y = 90.201, z = 1.569 }, level = 30, area_id = 21 },
		{ config_id = 197032, gadget_id = 70330197, pos = { x = -1695.990, y = 431.616, z = 2195.995 }, rot = { x = 340.711, y = 87.411, z = 355.287 }, level = 30, area_id = 21 },
		{ config_id = 197041, gadget_id = 70690001, pos = { x = -1730.474, y = 510.000, z = 2157.091 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
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
		gadgets = { 197005 },
		regions = { 197029 },
		triggers = { "GADGET_STATE_CHANGE_197028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 197004, 197006, 197007, 197008, 197009, 197010, 197011, 197012, 197013, 197014, 197015, 197016, 197017, 197018, 197019, 197020, 197035, 197036, 197037, 197038, 197039, 197040, 197042, 197043, 197044, 197045 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 197024 },
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
		gadgets = { 197033, 197034, 197046 },
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
function condition_EVENT_GADGET_STATE_CHANGE_197028(context, evt)
	if 197005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_197028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"