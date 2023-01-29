-- 基础信息
local base_info = {
	group_id = 199001039
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
	-- 已经激活的石板
	{ config_id = 39001, gadget_id = 70310204, pos = { x = 311.950, y = 119.727, z = 308.614 }, rot = { x = 358.462, y = 184.496, z = 353.419 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 39003, gadget_id = 70310203, pos = { x = 336.745, y = 119.653, z = 129.345 }, rot = { x = 0.000, y = 110.360, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39004, gadget_id = 70310249, pos = { x = 310.080, y = 119.370, z = 289.160 }, rot = { x = 0.000, y = 334.972, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 39005, gadget_id = 70310249, pos = { x = 324.040, y = 119.350, z = 281.710 }, rot = { x = 0.000, y = 334.972, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39006, gadget_id = 70310249, pos = { x = 321.613, y = 119.370, z = 266.491 }, rot = { x = 0.000, y = 331.460, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 39007, gadget_id = 70310249, pos = { x = 334.077, y = 119.350, z = 259.298 }, rot = { x = 0.000, y = 339.665, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39008, gadget_id = 70230042, pos = { x = 324.655, y = 223.792, z = 170.813 }, rot = { x = 0.000, y = 229.708, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 39009, gadget_id = 70310249, pos = { x = 328.440, y = 119.370, z = 246.623 }, rot = { x = 0.000, y = 357.352, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 39010, gadget_id = 70310249, pos = { x = 357.878, y = 119.350, z = 234.157 }, rot = { x = 0.000, y = 331.819, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39011, gadget_id = 70310249, pos = { x = 354.951, y = 119.370, z = 219.436 }, rot = { x = 0.000, y = 337.540, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 39012, gadget_id = 70310249, pos = { x = 367.290, y = 119.350, z = 210.287 }, rot = { x = 0.000, y = 348.939, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39013, gadget_id = 70310249, pos = { x = 360.007, y = 119.370, z = 195.983 }, rot = { x = 0.000, y = 348.479, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 39014, gadget_id = 70310249, pos = { x = 371.440, y = 119.350, z = 184.720 }, rot = { x = 0.000, y = 354.296, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39015, gadget_id = 70310187, pos = { x = 287.131, y = 120.243, z = 147.291 }, rot = { x = 0.000, y = 337.522, z = 0.000 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 39016, gadget_id = 70310249, pos = { x = 360.000, y = 119.350, z = 125.690 }, rot = { x = 0.000, y = 58.424, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39017, gadget_id = 70310249, pos = { x = 295.343, y = 119.350, z = 131.767 }, rot = { x = 0.000, y = 123.890, z = 2.118 }, level = 20, area_id = 402 },
	{ config_id = 39018, gadget_id = 70310249, pos = { x = 273.884, y = 119.500, z = 169.321 }, rot = { x = 3.075, y = 196.423, z = 357.459 }, level = 20, area_id = 402 },
	-- 移动平台用-水潭
	{ config_id = 39019, gadget_id = 70380028, pos = { x = 326.348, y = 221.452, z = 174.086 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, route_id = 900100015, start_route = false, area_id = 402 },
	{ config_id = 39020, gadget_id = 70310249, pos = { x = 323.286, y = 141.618, z = 159.771 }, rot = { x = 45.890, y = 281.122, z = 226.945 }, level = 20, area_id = 402 },
	{ config_id = 39021, gadget_id = 70310249, pos = { x = 324.526, y = 151.470, z = 165.633 }, rot = { x = 20.935, y = 139.319, z = 125.461 }, level = 20, area_id = 402 },
	{ config_id = 39023, gadget_id = 70310476, pos = { x = 337.980, y = 223.320, z = 175.865 }, rot = { x = 12.469, y = 10.438, z = 92.688 }, level = 20, area_id = 402 },
	{ config_id = 39025, gadget_id = 70310249, pos = { x = 311.458, y = 151.572, z = 170.826 }, rot = { x = 33.503, y = 120.357, z = 291.920 }, level = 20, area_id = 402 },
	{ config_id = 39026, gadget_id = 70310249, pos = { x = 304.717, y = 175.330, z = 192.362 }, rot = { x = 84.635, y = 107.056, z = 224.027 }, level = 20, state = GadgetState.GearStop, area_id = 402 },
	{ config_id = 39027, gadget_id = 70310249, pos = { x = 309.627, y = 183.280, z = 183.927 }, rot = { x = 347.073, y = 333.790, z = 86.045 }, level = 20, area_id = 402 },
	{ config_id = 39028, gadget_id = 70310249, pos = { x = 313.281, y = 173.720, z = 176.219 }, rot = { x = 347.073, y = 333.790, z = 267.018 }, level = 20, area_id = 402 },
	{ config_id = 39029, gadget_id = 70310249, pos = { x = 321.756, y = 198.672, z = 157.846 }, rot = { x = 34.002, y = 278.732, z = 126.293 }, level = 20, area_id = 402 },
	{ config_id = 39030, gadget_id = 70310249, pos = { x = 338.424, y = 212.110, z = 190.066 }, rot = { x = 62.344, y = 167.982, z = 264.074 }, level = 20, area_id = 402 },
	{ config_id = 39031, gadget_id = 70310249, pos = { x = 338.182, y = 220.710, z = 188.552 }, rot = { x = 35.179, y = 351.296, z = 86.639 }, level = 20, area_id = 402 },
	{ config_id = 39032, gadget_id = 70310476, pos = { x = 338.733, y = 205.370, z = 165.766 }, rot = { x = 31.836, y = 200.275, z = 100.770 }, level = 20, area_id = 402 },
	{ config_id = 39033, gadget_id = 70310476, pos = { x = 337.980, y = 223.320, z = 175.865 }, rot = { x = 12.469, y = 10.438, z = 92.688 }, level = 20, area_id = 402 },
	{ config_id = 39036, gadget_id = 70310476, pos = { x = 339.558, y = 206.914, z = 176.466 }, rot = { x = 8.483, y = 175.382, z = 272.366 }, level = 20, area_id = 402 },
	{ config_id = 39037, gadget_id = 70310476, pos = { x = 367.620, y = 119.480, z = 172.810 }, rot = { x = 0.000, y = 12.512, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39039, gadget_id = 70310204, pos = { x = 311.950, y = 119.727, z = 308.614 }, rot = { x = 358.462, y = 184.496, z = 353.419 }, level = 20, area_id = 402 },
	{ config_id = 39040, gadget_id = 70310476, pos = { x = 332.272, y = 201.882, z = 160.565 }, rot = { x = 17.422, y = 243.473, z = 84.941 }, level = 20, area_id = 402 },
	{ config_id = 39041, gadget_id = 70310204, pos = { x = 311.950, y = 119.727, z = 308.614 }, rot = { x = 358.462, y = 184.496, z = 353.419 }, level = 20, area_id = 402 },
	{ config_id = 39042, gadget_id = 70310476, pos = { x = 346.940, y = 119.500, z = 236.500 }, rot = { x = 0.000, y = 281.701, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 39043, gadget_id = 70310476, pos = { x = 337.690, y = 119.690, z = 240.590 }, rot = { x = 0.000, y = 289.734, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39044, gadget_id = 70310476, pos = { x = 313.510, y = 119.690, z = 302.520 }, rot = { x = 0.000, y = 357.669, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39045, gadget_id = 70310476, pos = { x = 365.230, y = 119.480, z = 163.060 }, rot = { x = 0.000, y = 12.512, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39046, gadget_id = 70310476, pos = { x = 362.700, y = 119.480, z = 153.210 }, rot = { x = 0.000, y = 12.512, z = 0.000 }, level = 20, area_id = 402 },
	-- Pew
	{ config_id = 39047, gadget_id = 70310476, pos = { x = 362.600, y = 119.480, z = 143.840 }, rot = { x = 0.000, y = 345.013, z = 0.000 }, level = 20, state = GadgetState.GearStop, isOneoff = true, area_id = 402 },
	{ config_id = 39051, gadget_id = 70310476, pos = { x = 346.890, y = 119.480, z = 125.510 }, rot = { x = 0.000, y = 93.463, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39052, gadget_id = 70230042, pos = { x = 324.655, y = 223.792, z = 170.813 }, rot = { x = 0.000, y = 229.708, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 39053, gadget_id = 70310476, pos = { x = 326.430, y = 119.480, z = 130.420 }, rot = { x = 0.000, y = 91.655, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39054, gadget_id = 70310476, pos = { x = 308.170, y = 119.480, z = 132.000 }, rot = { x = 0.000, y = 102.007, z = 180.000 }, level = 20, area_id = 402 },
	{ config_id = 39055, gadget_id = 70310476, pos = { x = 288.695, y = 119.480, z = 141.962 }, rot = { x = 0.000, y = 143.469, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39056, gadget_id = 70310476, pos = { x = 333.029, y = 224.597, z = 169.300 }, rot = { x = 14.898, y = 57.223, z = 94.346 }, level = 20, area_id = 402 },
	{ config_id = 39057, gadget_id = 70310476, pos = { x = 316.970, y = 119.480, z = 129.920 }, rot = { x = 0.000, y = 78.096, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39058, gadget_id = 70310328, pos = { x = 326.990, y = 224.962, z = 164.991 }, rot = { x = 1.365, y = 249.441, z = 359.632 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 39059, gadget_id = 70310476, pos = { x = 288.695, y = 119.480, z = 141.962 }, rot = { x = 0.000, y = 143.469, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39060, gadget_id = 70380028, pos = { x = 326.700, y = 223.792, z = 174.086 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39061, gadget_id = 70310476, pos = { x = 278.133, y = 119.480, z = 159.621 }, rot = { x = 0.000, y = 132.523, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 39062, gadget_id = 70310476, pos = { x = 285.625, y = 119.960, z = 174.544 }, rot = { x = 6.049, y = 260.371, z = 182.721 }, level = 20, area_id = 402 },
	{ config_id = 39063, gadget_id = 70310476, pos = { x = 293.024, y = 124.129, z = 176.465 }, rot = { x = 48.969, y = 285.440, z = 123.571 }, level = 20, area_id = 402 },
	{ config_id = 39064, gadget_id = 70310476, pos = { x = 307.733, y = 136.410, z = 171.036 }, rot = { x = 25.440, y = 306.966, z = 197.788 }, level = 20, area_id = 402 },
	{ config_id = 39065, gadget_id = 70310476, pos = { x = 307.733, y = 136.410, z = 171.036 }, rot = { x = 25.440, y = 306.966, z = 197.788 }, level = 20, area_id = 402 },
	{ config_id = 39066, gadget_id = 70310476, pos = { x = 314.198, y = 138.820, z = 165.699 }, rot = { x = 10.975, y = 321.723, z = 225.740 }, level = 20, area_id = 402 },
	{ config_id = 39067, gadget_id = 70310476, pos = { x = 308.716, y = 161.050, z = 178.315 }, rot = { x = 49.038, y = 166.286, z = 283.528 }, level = 20, area_id = 402 },
	{ config_id = 39068, gadget_id = 70310476, pos = { x = 306.962, y = 166.700, z = 185.310 }, rot = { x = 29.670, y = 162.547, z = 274.466 }, level = 20, area_id = 402 },
	{ config_id = 39069, gadget_id = 70310476, pos = { x = 316.965, y = 180.790, z = 168.967 }, rot = { x = 60.193, y = 340.441, z = 88.164 }, level = 20, area_id = 402 },
	{ config_id = 39070, gadget_id = 70310476, pos = { x = 318.334, y = 188.120, z = 165.137 }, rot = { x = 60.193, y = 340.441, z = 88.164 }, level = 20, area_id = 402 },
	{ config_id = 39071, gadget_id = 70310476, pos = { x = 300.360, y = 131.835, z = 176.504 }, rot = { x = 43.182, y = 285.053, z = 42.949 }, level = 20, area_id = 402 },
	-- P1
	{ config_id = 39078, gadget_id = 70310203, pos = { x = 287.623, y = 120.238, z = 146.002 }, rot = { x = 0.000, y = 141.893, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 },
	{ config_id = 39079, gadget_id = 70310476, pos = { x = 282.524, y = 119.480, z = 153.176 }, rot = { x = 0.000, y = 151.636, z = 0.000 }, level = 20, area_id = 402 },
	-- P2
	{ config_id = 39080, gadget_id = 70310203, pos = { x = 327.659, y = 224.707, z = 165.560 }, rot = { x = 0.000, y = 68.522, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 },
	{ config_id = 39081, gadget_id = 70310204, pos = { x = 311.950, y = 119.727, z = 308.614 }, rot = { x = 358.462, y = 184.496, z = 353.419 }, level = 20, area_id = 402 },
	{ config_id = 39082, gadget_id = 70230042, pos = { x = 330.363, y = 167.080, z = 170.785 }, rot = { x = 0.000, y = 229.708, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 39083, gadget_id = 70380028, pos = { x = 332.056, y = 167.080, z = 174.058 }, rot = { x = 0.000, y = 298.213, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	-- 透视生效范围region
	{ config_id = 39022, shape = RegionShape.SPHERE, radius = 150, pos = { x = 331.884, y = 121.135, z = 192.096 }, area_id = 402, team_ability_group_list = { "RegionAbility_Dreamland_XRay" } },
	-- 石板归位
	{ config_id = 39048, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 311.867, y = 120.288, z = 308.869 }, area_id = 402 },
	-- 石板归位
	{ config_id = 39049, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 311.867, y = 120.288, z = 308.869 }, area_id = 402 },
	-- 石板归位
	{ config_id = 39085, shape = RegionShape.SPHERE, radius = 1.4, pos = { x = 311.867, y = 120.288, z = 308.869 }, area_id = 402 }
}

-- 触发器
triggers = {
	-- 碎石堆清掉，移动水面出现
	{ config_id = 1039002, name = "ANY_GADGET_DIE_39002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_39002", action = "action_EVENT_ANY_GADGET_DIE_39002", trigger_count = 0 },
	-- 透视生效范围region
	{ config_id = 1039022, name = "ENTER_REGION_39022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- T
	{ config_id = 1039024, name = "ANY_GADGET_DIE_39024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_39024", action = "action_EVENT_ANY_GADGET_DIE_39024", trigger_count = 0 },
	-- 石板激活
	{ config_id = 1039038, name = "GADGET_STATE_CHANGE_39038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39038", action = "action_EVENT_GADGET_STATE_CHANGE_39038", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1039048, name = "LEAVE_REGION_39048", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_39048", action = "action_EVENT_LEAVE_REGION_39048", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1039049, name = "LEAVE_REGION_39049", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_39049", action = "action_EVENT_LEAVE_REGION_39049", trigger_count = 0 },
	-- 任务通知/发光/发声
	{ config_id = 1039050, name = "PLATFORM_REACH_POINT_39050", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_39050", action = "action_EVENT_PLATFORM_REACH_POINT_39050", trigger_count = 0 },
	{ config_id = 1039072, name = "GROUP_LOAD_39072", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_39072", action = "action_EVENT_GROUP_LOAD_39072", trigger_count = 0 },
	{ config_id = 1039073, name = "GROUP_LOAD_39073", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_39073", action = "action_EVENT_GROUP_LOAD_39073", trigger_count = 0 },
	{ config_id = 1039074, name = "GROUP_LOAD_39074", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_39074", action = "action_EVENT_GROUP_LOAD_39074", trigger_count = 0 },
	{ config_id = 1039075, name = "GROUP_LOAD_39075", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_39075", action = "action_EVENT_GROUP_LOAD_39075", trigger_count = 0 },
	{ config_id = 1039076, name = "QUEST_START_39076", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_39076", action = "action_EVENT_QUEST_START_39076", trigger_count = 0 },
	{ config_id = 1039077, name = "GROUP_LOAD_39077", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_39077", action = "action_EVENT_GROUP_LOAD_39077", trigger_count = 0 },
	-- 石板激活
	{ config_id = 1039084, name = "GADGET_STATE_CHANGE_39084", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39084", action = "action_EVENT_GADGET_STATE_CHANGE_39084", trigger_count = 0 },
	-- 石板归位
	{ config_id = 1039085, name = "LEAVE_REGION_39085", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_39085", action = "action_EVENT_LEAVE_REGION_39085", trigger_count = 0 },
	{ config_id = 1039086, name = "LEVEL_TAG_CHANGE_39086", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_39086", trigger_count = 0 },
	{ config_id = 1039087, name = "GROUP_LOAD_39087", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_39087", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "mark", value = 0, no_refresh = true },
	{ config_id = 3, name = "mark2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 39034, gadget_id = 70310476, pos = { x = 339.968, y = 208.360, z = 173.593 }, rot = { x = 350.768, y = 359.508, z = 78.109 }, level = 20, area_id = 402 },
		{ config_id = 39035, gadget_id = 70310476, pos = { x = 339.968, y = 208.360, z = 173.593 }, rot = { x = 350.768, y = 359.508, z = 78.109 }, level = 20, area_id = 402 }
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
		-- description = 假石板-发错误音,
		monsters = { },
		gadgets = { 39008, 39039 },
		regions = { 39049 },
		triggers = { "LEAVE_REGION_39049", "LEVEL_TAG_CHANGE_39086", "GROUP_LOAD_39087" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 发音石板+tag1水片,
		monsters = { },
		gadgets = { 39041, 39052, 39060 },
		regions = { 39048 },
		triggers = { "GADGET_STATE_CHANGE_39038", "LEAVE_REGION_39048", "LEVEL_TAG_CHANGE_39086", "GROUP_LOAD_39087" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一段,
		monsters = { },
		gadgets = { 39001, 39003, 39004, 39005, 39006, 39007, 39008, 39009, 39010, 39011, 39012, 39013, 39014, 39015, 39016, 39017, 39037, 39042, 39043, 39044, 39045, 39046, 39047, 39051, 39053, 39054, 39055, 39057, 39059, 39078 },
		regions = { 39022 },
		triggers = { "ENTER_REGION_39022", "ANY_GADGET_DIE_39024", "GROUP_LOAD_39072", "GROUP_LOAD_39073", "GROUP_LOAD_39074", "GROUP_LOAD_39075", "QUEST_START_39076", "GROUP_LOAD_39077", "LEVEL_TAG_CHANGE_39086", "GROUP_LOAD_39087" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二段,
		monsters = { },
		gadgets = { 39008, 39018, 39019, 39020, 39021, 39023, 39025, 39026, 39027, 39028, 39029, 39030, 39031, 39032, 39033, 39036, 39040, 39056, 39058, 39061, 39062, 39063, 39064, 39065, 39066, 39067, 39068, 39069, 39070, 39071, 39079, 39080 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_39002", "PLATFORM_REACH_POINT_39050", "LEVEL_TAG_CHANGE_39086", "GROUP_LOAD_39087" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 发音石板+tag2水片,
		monsters = { },
		gadgets = { 39081, 39082, 39083 },
		regions = { 39085 },
		triggers = { "GADGET_STATE_CHANGE_39084", "LEAVE_REGION_39085", "LEVEL_TAG_CHANGE_39086", "GROUP_LOAD_39087" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_39002(context, evt)
	if 39058 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_39002(context, evt)
	-- 将本组内变量名为 "mark2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 39019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39080 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_39024(context, evt)
	if 39015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_39024(context, evt)
	-- 将本组内变量名为 "mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001039, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39078 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39038(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001039, 39041) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39038(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
	        local pos = {x=326, y=223, z=174}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
	                                return -1
	        end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_39048(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001039, 39041) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_39048(context, evt)
	-- 将configid为 39041 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39041, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_39049(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001039, 39039) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_39049(context, evt)
	-- 将configid为 39039 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39039, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_39050(context, evt)
	-- 判断是gadgetid 为 39019的移动平台，是否到达了900100015 的路线中的 0 点
	
	if 39019 ~= evt.param1 then
	  return false
	end
	
	if 900100015 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_39050(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 39008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
	        local pos = {x=326, y=223, z=174}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
	                                return -1
	        end 
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_39072(context, evt)
	-- 判断变量"mark"为1
	if ScriptLib.GetGroupVariableValue(context, "mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39072(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001039, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39078 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_39073(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39073(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 39019, 900100112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 39019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39080 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_39074(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39074(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 39019, 900100112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 39019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39080 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_39075(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39075(context, evt)
	-- 将configid为 39008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_39076(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_39076(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_39077(context, evt)
	-- 判断变量"mark2"为1
	if ScriptLib.GetGroupVariableValue(context, "mark2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39077(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39084(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001039, 39081) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39084(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
	        local pos = {x=326, y=223, z=174}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
	                                return -1
	        end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_39085(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001039, 39081) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_39085(context, evt)
	-- 将configid为 39081 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39081, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_39086(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetHostQuestState(context,4007001) == 3 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
	else
		if ScriptLib.CheckSceneTag(context, 9,1016 ) and ScriptLib.GetHostQuestState(context,4007001) == 3 then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=5})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39087(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1015 ) and ScriptLib.GetHostQuestState(context,4007001) == 3 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
	else
		if ScriptLib.CheckSceneTag(context, 9,1016 ) and ScriptLib.GetHostQuestState(context,4007001) == 3 then
			ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=5})
		end
	end
	
	return 0
end