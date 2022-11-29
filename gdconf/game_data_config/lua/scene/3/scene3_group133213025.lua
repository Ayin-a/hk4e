-- 基础信息
local base_info = {
	group_id = 133213025
}

-- DEFS_MISCS
--================================================================
-- 
-- 新增加vision id按blockid+01的方法按序添加
-- mutex中填只能填两两互斥，如果同时在两个中，优先算前一个范围的值
--================================================================

local vision_def = {
	{ vision_id = 321301, enter = 25002, leave = 25002 },
	{ vision_id = 321302, enter = 25003, leave = 25003 },
	{ vision_id = 321303, enter = 25001, leave = 25001 },
	{ vision_id = 321303, enter = 25005, leave = 25005 },
	{ vision_id = 321304, enter = 25006, leave = 25006 },	
	{ vision_id = 322001, enter = 25004, leave = 25004 },
	{ vision_id = 322002, enter = 25016, leave = 25016 },
	{ vision_id = 322003, enter = 25017, leave = 25017 },
	{ vision_id = 321201, enter = 25007, leave = 25007 },
	{ vision_id = 321202, enter = 25008, leave = 25008 },
	{ vision_id = 321203, enter = 25009, leave = 25009 },
	{ vision_id = 321204, enter = 25010, leave = 25010 },
	{ vision_id = 321205, enter = 25011, leave = 25011 },
	{ vision_id = 321206, enter = 25012, leave = 25012 },
	{ vision_id = 321207, enter = 25013, leave = 25013 },
	{ vision_id = 321208, enter = 25014, leave = 25014 },
	{ vision_id = 321209, enter = 25015, leave = 25015 },
	{ vision_id = 321210, enter = 25018, leave = 25018 },
	{ vision_id = 321211, enter = 25019, leave = 25019 },
	{ vision_id = 321212, enter = 25020, leave = 25020 },
	{ vision_id = 321213, enter = 25021, leave = 25021 },
	{ vision_id = 321214, enter = 25022, leave = 25022 },
	{ vision_id = 321215, enter = 25023, leave = 25023 },
	{ vision_id = 321216, enter = 25024, leave = 25024 },
	{ vision_id = 321217, enter = 25025, leave = 25025 },
	{ vision_id = 321218, enter = 25026, leave = 25026 },
	{ vision_id = 321219, enter = 25027, leave = 25027 },
	{ vision_id = 321220, enter = 25028, leave = 25028 },
	{ vision_id = 321221, enter = 25029, leave = 25029 },
	{ vision_id = 321222, enter = 25030, leave = 25030 },
	{ vision_id = 321305, enter = 25031, leave = 25031 },
	{ vision_id = 322004, enter = 25033, leave = 25033 },
	{ vision_id = 322005, enter = 25034, leave = 25034 },
	{ vision_id = 322006, enter = 25035, leave = 25035 },
	{ vision_id = 322007, enter = 25036, leave = 25036 },
	{ vision_id = 322008, enter = 25037, leave = 25037 },
	{ vision_id = 322009, enter = 25038, leave = 25038 },
	{ vision_id = 322010, enter = 25039, leave = 25039 },
	{ vision_id = 321223, enter = 25040, leave = 25040 },
	{ vision_id = 321224, enter = 25041, leave = 25041 },
	{ vision_id = 321225, enter = 25042, leave = 25042 },
	{ vision_id = 321226, enter = 25043, leave = 25043 },
	{ vision_id = 322011, enter = 25044, leave = 25044 },
	{ vision_id = 322012, enter = 25045, leave = 25045 },
	{ vision_id = 322013, enter = 25046, leave = 25046 },
	{ vision_id = 322013, enter = 25047, leave = 25047 },
	{ vision_id = 322014, enter = 25048, leave = 25048 },
	{ vision_id = 321001, enter = 25061, leave = 25061 },
	{ vision_id = 321002, enter = 25062, leave = 25062 },
	{ vision_id = 321003, enter = 25063, leave = 25063 },
	{ vision_id = 321004, enter = 25064, leave = 25064 },
	{ vision_id = 321005, enter = 25065, leave = 25065 },
	{ vision_id = 321006, enter = 25066, leave = 25066 },
	{ vision_id = 321007, enter = 25067, leave = 25067 },
	{ vision_id = 321008, enter = 25059, leave = 25059 },
	{ vision_id = 321701, enter = 25050, leave = 25050 },
	{ vision_id = 321702, enter = 25051, leave = 25051 },
	{ vision_id = 321703, enter = 25052, leave = 25052 },
	{ vision_id = 321704, enter = 25053, leave = 25053 },
	{ vision_id = 321705, enter = 25054, leave = 25054 },
	{ vision_id = 321706, enter = 25055, leave = 25055 },
	{ vision_id = 321707, enter = 25056, leave = 25056 },
	{ vision_id = 321708, enter = 25057, leave = 25057 },
	{ vision_id = 321709, enter = 25058, leave = 25058 },
}
local vision_mutex = {
        {321302,321301},
		{321217,321218},
		{321219,321220},
		{321305,321304},
		{321003,321004},
		{321006,321007},
		{321708,321709},
		{321701,321708},
		{321701,321709}
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
}

-- 区域
regions = {
	-- 雷炮雷樱树用大圈
	[25001] = { config_id = 25001, shape = RegionShape.CUBIC, size = { x = 600.000, y = 800.000, z = 700.000 }, pos = { x = -3719.888, y = 200.000, z = -3175.373 }, area_id = 12, vision_type_list = { 321303 } },
	-- 高炉互斥外圈
	[25002] = { config_id = 25002, shape = RegionShape.SPHERE, radius = 280, pos = { x = -3759.573, y = 224.013, z = -3159.431 }, area_id = 12, vision_type_list = { 321301 } },
	-- 高炉互斥内圈
	[25003] = { config_id = 25003, shape = RegionShape.SPHERE, radius = 118, pos = { x = -3721.327, y = 224.013, z = -3162.530 }, area_id = 12, vision_type_list = { 321302 } },
	-- 鸣神岛-绀田村井下
	[25004] = { config_id = 25004, shape = RegionShape.CUBIC, size = { x = 111.458, y = 44.700, z = 145.578 }, pos = { x = -2825.170, y = 175.801, z = -4083.400 }, area_id = 11, vision_type_list = { 322001 } },
	-- 雷炮雷樱树用小圈
	[25005] = { config_id = 25005, shape = RegionShape.CUBIC, size = { x = 800.000, y = 800.000, z = 800.000 }, pos = { x = -3375.978, y = 237.246, z = -3473.953 }, area_id = 12, vision_type_list = { 321303 } },
	-- 九条阵屋外围
	[25006] = { config_id = 25006, shape = RegionShape.CUBIC, size = { x = 400.000, y = 300.000, z = 400.000 }, pos = { x = -3261.399, y = 200.313, z = -3473.691 }, area_id = 12, vision_type_list = { 321304 } },
	-- 八酝岛战场圈
	[25007] = { config_id = 25007, shape = RegionShape.SPHERE, radius = 250, pos = { x = -3478.683, y = 224.013, z = -2645.306 }, area_id = 13, vision_type_list = { 321201 } },
	-- 八酝岛战军营半岛圈1
	[25008] = { config_id = 25008, shape = RegionShape.SPHERE, radius = 200, pos = { x = -3424.406, y = 224.013, z = -2226.458 }, area_id = 13, vision_type_list = { 321202 } },
	-- 八酝岛战军营半岛圈2
	[25009] = { config_id = 25009, shape = RegionShape.SPHERE, radius = 200, pos = { x = -3537.442, y = 224.013, z = -1957.328 }, area_id = 13, vision_type_list = { 321203 } },
	-- 八酝岛遗迹圈
	[25010] = { config_id = 25010, shape = RegionShape.SPHERE, radius = 200, pos = { x = -3654.629, y = 224.013, z = -1713.158 }, area_id = 13, vision_type_list = { 321204 } },
	-- 八酝岛绯木村
	[25011] = { config_id = 25011, shape = RegionShape.SPHERE, radius = 100, pos = { x = -3747.706, y = 224.013, z = -2189.795 }, area_id = 13, vision_type_list = { 321205 } },
	-- 八酝岛龙头位置
	[25012] = { config_id = 25012, shape = RegionShape.SPHERE, radius = 140, pos = { x = -3911.644, y = 224.013, z = -2303.395 }, area_id = 13, vision_type_list = { 321206 } },
	-- 八酝岛龙头下方大斜坡
	[25013] = { config_id = 25013, shape = RegionShape.SPHERE, radius = 120, pos = { x = -3905.399, y = 224.013, z = -2107.299 }, area_id = 13, vision_type_list = { 321207 } },
	-- 八酝岛蛇骨矿坑
	[25014] = { config_id = 25014, shape = RegionShape.SPHERE, radius = 120, pos = { x = -4025.816, y = 224.013, z = -2363.546 }, area_id = 13, vision_type_list = { 321208 } },
	-- 八酝岛战场大斜坡
	[25015] = { config_id = 25015, shape = RegionShape.SPHERE, radius = 150, pos = { x = -3797.408, y = 224.013, z = -2503.690 }, area_id = 13, vision_type_list = { 321209 } },
	-- 鸣神岛-雷樱瘤
	[25016] = { config_id = 25016, shape = RegionShape.SPHERE, radius = 70, pos = { x = -2526.164, y = 187.331, z = -4406.954 }, area_id = 11, vision_type_list = { 0 } },
	-- 鸣神岛-地下遗迹
	[25017] = { config_id = 25017, shape = RegionShape.CUBIC, size = { x = 500.000, y = 100.000, z = 500.000 }, pos = { x = -2308.542, y = 170.277, z = -4267.800 }, area_id = 11, vision_type_list = { 322003 } },
	-- 无想刃狭间优化1
	[25018] = { config_id = 25018, shape = RegionShape.CUBIC, size = { x = 50.000, y = 150.000, z = 50.000 }, pos = { x = -3705.544, y = 198.680, z = -2100.522 }, area_id = 13, vision_type_list = { 321210 } },
	-- 无想刃狭间优化2
	[25019] = { config_id = 25019, shape = RegionShape.CUBIC, size = { x = 50.000, y = 150.000, z = 50.000 }, pos = { x = -3693.394, y = 198.680, z = -2145.294 }, area_id = 13, vision_type_list = { 321211 } },
	-- 无想刃狭间优化3
	[25020] = { config_id = 25020, shape = RegionShape.CUBIC, size = { x = 50.000, y = 150.000, z = 50.000 }, pos = { x = -3678.393, y = 198.680, z = -2183.829 }, area_id = 13, vision_type_list = { 321212 } },
	-- 无想刃狭间优化4
	[25021] = { config_id = 25021, shape = RegionShape.CUBIC, size = { x = 80.000, y = 150.000, z = 80.000 }, pos = { x = -3658.741, y = 196.913, z = -2223.870 }, area_id = 13, vision_type_list = { 321213 } },
	-- 无想刃狭间优化5
	[25022] = { config_id = 25022, shape = RegionShape.CUBIC, size = { x = 50.000, y = 150.000, z = 50.000 }, pos = { x = -3637.834, y = 198.680, z = -2264.792 }, area_id = 13, vision_type_list = { 321214 } },
	-- 无想刃狭间优化6
	[25023] = { config_id = 25023, shape = RegionShape.CUBIC, size = { x = 50.000, y = 150.000, z = 50.000 }, pos = { x = -3614.251, y = 198.680, z = -2307.738 }, area_id = 13, vision_type_list = { 321215 } },
	-- 无想刃狭间优化7
	[25024] = { config_id = 25024, shape = RegionShape.CUBIC, size = { x = 50.000, y = 150.000, z = 50.000 }, pos = { x = -3590.903, y = 198.680, z = -2355.048 }, area_id = 13, vision_type_list = { 321216 } },
	-- 八酝岛山顶
	[25025] = { config_id = 25025, shape = RegionShape.SPHERE, radius = 70, pos = { x = -3919.598, y = 332.842, z = -2417.874 }, area_id = 13, vision_type_list = { 321217 } },
	-- 八酝岛山腰
	[25026] = { config_id = 25026, shape = RegionShape.SPHERE, radius = 130, pos = { x = -3920.663, y = 284.518, z = -2388.784 }, area_id = 13, vision_type_list = { 321218 } },
	-- 鸣神岛-绀田村小圈
	[25027] = { config_id = 25027, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2753.405, y = 205.390, z = -4110.570 }, area_id = 11, vision_type_list = { 321219 } },
	-- 鸣神岛-绀田村大圈
	[25028] = { config_id = 25028, shape = RegionShape.SPHERE, radius = 140, pos = { x = -2744.720, y = 204.980, z = -4120.989 }, area_id = 11, vision_type_list = { 321220 } },
	-- 鸣神岛-影向山下层
	[25029] = { config_id = 25029, shape = RegionShape.CUBIC, size = { x = 320.000, y = 100.000, z = 320.000 }, pos = { x = -2530.712, y = 265.730, z = -4433.375 }, area_id = 11, vision_type_list = { 321221 } },
	-- 鸣神岛-影向山上层
	[25030] = { config_id = 25030, shape = RegionShape.CUBIC, size = { x = 320.000, y = 200.000, z = 320.000 }, pos = { x = -2530.712, y = 415.433, z = -4433.375 }, area_id = 11, vision_type_list = { 321222 } },
	-- 九条阵屋内围
	[25031] = { config_id = 25031, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3272.230, y = 220.580, z = -3471.622 }, area_id = 12, vision_type_list = { 321305 } },
	-- 重要勿删，定海神针
	[25032] = { config_id = 25032, shape = RegionShape.CUBIC, size = { x = 2000.000, y = 10.000, z = 2000.000 }, pos = { x = -3074.258, y = 142.274, z = -3073.708 }, area_id = 12 },
	-- 鸣神岛-地下遗迹上层
	[25033] = { config_id = 25033, shape = RegionShape.CUBIC, size = { x = 500.000, y = 100.000, z = 500.000 }, pos = { x = -2308.542, y = 271.509, z = -4267.800 }, area_id = 11, vision_type_list = { 322004 } },
	-- 鸣神岛-荒海地下雷导立方房间
	[25034] = { config_id = 25034, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 35.000 }, pos = { x = -2315.235, y = 200.000, z = -4287.205 }, area_id = 11, vision_type_list = { 322005 } },
	-- 鸣神岛-荒海西部怪物营地
	[25035] = { config_id = 25035, shape = RegionShape.CUBIC, size = { x = 180.000, y = 60.000, z = 80.000 }, pos = { x = -2373.989, y = 216.222, z = -4156.358 }, area_id = 11, vision_type_list = { 322006 } },
	-- 鸣神岛-影向山中心电水
	[25036] = { config_id = 25036, shape = RegionShape.CUBIC, size = { x = 300.000, y = 400.000, z = 300.000 }, pos = { x = -2580.070, y = 357.898, z = -4393.259 }, area_id = 11, vision_type_list = { 322007 } },
	-- 鸣神岛-荒海北部丘丘人营地
	[25037] = { config_id = 25037, shape = RegionShape.CUBIC, size = { x = 120.000, y = 60.000, z = 120.000 }, pos = { x = -2274.353, y = 220.094, z = -4183.935 }, area_id = 11, vision_type_list = { 322008 } },
	-- 鸣神岛-影向山西部区域
	[25038] = { config_id = 25038, shape = RegionShape.CUBIC, size = { x = 350.000, y = 150.000, z = 500.000 }, pos = { x = -2812.478, y = 250.489, z = -4321.365 }, area_id = 11, vision_type_list = { 322009 } },
	-- 鸣神岛-主城南部海岸线
	[25039] = { config_id = 25039, shape = RegionShape.CUBIC, size = { x = 200.000, y = 200.000, z = 200.000 }, pos = { x = -2944.140, y = 227.618, z = -4163.038 }, area_id = 11, vision_type_list = { 322010 } },
	-- 八酝岛地下洞穴
	[25040] = { config_id = 25040, shape = RegionShape.CUBIC, size = { x = 100.000, y = 100.000, z = 150.000 }, pos = { x = -3809.070, y = 234.019, z = -2361.752 }, area_id = 13, vision_type_list = { 321223 } },
	-- 八酝岛矿坑
	[25041] = { config_id = 25041, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3878.407, y = 200.064, z = -2505.740 }, area_id = 13, vision_type_list = { 321224 } },
	-- 八酝岛中间层
	[25042] = { config_id = 25042, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3893.896, y = 255.819, z = -2486.662 }, area_id = 13, vision_type_list = { 321225 } },
	-- 八酝岛矿坑西部
	[25043] = { config_id = 25043, shape = RegionShape.SPHERE, radius = 55, pos = { x = -3992.294, y = 200.000, z = -2277.466 }, area_id = 13, vision_type_list = { 321226 } },
	-- 鸣神岛-南部下层洞穴
	[25044] = { config_id = 25044, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = -2690.078, y = 215.300, z = -4352.884 }, area_id = 11, vision_type_list = { 322011 } },
	-- 鸣神岛-南部小断崖
	[25045] = { config_id = 25045, shape = RegionShape.SPHERE, radius = 45, pos = { x = -2724.362, y = 258.260, z = -4395.659 }, area_id = 11, vision_type_list = { 322012 } },
	-- 鸣神岛-荒海上层小圈
	[25046] = { config_id = 25046, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = -2325.680, y = 240.878, z = -4306.749 }, area_id = 11, vision_type_list = { 322013 } },
	-- 鸣神岛-影向山西侧营地
	[25047] = { config_id = 25047, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 60.000 }, pos = { x = -2498.391, y = 286.791, z = -4282.343 }, area_id = 11, vision_type_list = { 322013 } },
	-- 鸣神岛-雷樱瘤
	[25048] = { config_id = 25048, shape = RegionShape.CUBIC, size = { x = 110.000, y = 800.000, z = 110.000 }, pos = { x = -2544.053, y = 141.705, z = -4396.582 }, area_id = 11, vision_type_list = { 322014 } },
	[25049] = { config_id = 25049, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4759.314, y = 200.102, z = -3654.260 }, area_id = 14 },
	-- 清籁岛-海底遗迹
	[25050] = { config_id = 25050, shape = RegionShape.CUBIC, size = { x = 100.000, y = 90.000, z = 100.000 }, pos = { x = -4661.238, y = 138.125, z = -4255.226 }, area_id = 14, vision_type_list = { 321701 } },
	-- 清籁岛-清籁丸大船
	[25051] = { config_id = 25051, shape = RegionShape.CUBIC, size = { x = 30.000, y = 27.000, z = 80.000 }, pos = { x = -4430.903, y = 194.036, z = -3753.559 }, area_id = 14, vision_type_list = { 321702 } },
	-- 清籁岛-越石村地下室
	[25052] = { config_id = 25052, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 22.000 }, pos = { x = -4431.317, y = 209.489, z = -3973.006 }, area_id = 14, vision_type_list = { 321703 } },
	-- 清籁岛-浅濑神社
	[25053] = { config_id = 25053, shape = RegionShape.SPHERE, radius = 120, pos = { x = -4727.200, y = 197.752, z = -3685.648 }, area_id = 14, vision_type_list = { 321704 } },
	-- 清籁岛-船洞
	[25054] = { config_id = 25054, shape = RegionShape.SPHERE, radius = 80, pos = { x = -4391.354, y = 142.012, z = -3850.856 }, area_id = 14, vision_type_list = { 321705 } },
	-- 清籁岛-地城洞
	[25055] = { config_id = 25055, shape = RegionShape.CUBIC, size = { x = 78.000, y = 20.000, z = 48.000 }, pos = { x = -4333.441, y = 210.211, z = -4200.685 }, area_id = 14, vision_type_list = { 321706 } },
	-- 清籁岛-丘丘人王国内
	[25056] = { config_id = 25056, shape = RegionShape.CUBIC, size = { x = 300.000, y = 80.000, z = 300.000 }, pos = { x = -4853.517, y = 226.733, z = -4727.225 }, area_id = 14, vision_type_list = { 321707 } },
	-- 清籁岛-雷暴中心
	[25057] = { config_id = 25057, shape = RegionShape.CUBIC, size = { x = 250.000, y = 220.000, z = 220.000 }, pos = { x = -4696.736, y = 181.211, z = -4265.093 }, area_id = 14, vision_type_list = { 321708 } },
	-- 清籁岛-雷暴中心外
	[25058] = { config_id = 25058, shape = RegionShape.SPHERE, radius = 280, pos = { x = -4709.331, y = 200.000, z = -4281.662 }, area_id = 14, vision_type_list = { 321709 } },
	-- 无相水
	[25059] = { config_id = 25059, shape = RegionShape.SPHERE, radius = 80, pos = { x = -3554.133, y = 116.854, z = -959.233 }, area_id = 17, vision_type_list = { 321008 } },
	-- 海祗岛海神之心
	[25061] = { config_id = 25061, shape = RegionShape.SPHERE, radius = 80, pos = { x = -3796.654, y = 135.953, z = -1123.316 }, area_id = 17, vision_type_list = { 321001 } },
	-- 海祗岛海上遗迹
	[25062] = { config_id = 25062, shape = RegionShape.CUBIC, size = { x = 100.000, y = 50.000, z = 100.000 }, pos = { x = -3546.554, y = 171.600, z = -1153.739 }, area_id = 17, vision_type_list = { 321002 } },
	-- 海祗岛海祗神社
	[25063] = { config_id = 25063, shape = RegionShape.CUBIC, size = { x = 120.000, y = 80.000, z = 140.000 }, pos = { x = -3836.599, y = 270.339, z = -528.152 }, area_id = 17, vision_type_list = { 321003 } },
	-- 海祗岛海滩
	[25064] = { config_id = 25064, shape = RegionShape.CUBIC, size = { x = 150.000, y = 60.000, z = 100.000 }, pos = { x = -3858.477, y = 225.336, z = -442.558 }, area_id = 17, vision_type_list = { 321004 } },
	-- 海祗岛珊瑚宫
	[25065] = { config_id = 25065, shape = RegionShape.SPHERE, radius = 120, pos = { x = -3780.676, y = 123.347, z = -762.327 }, area_id = 17, vision_type_list = { 321005 } },
	-- 海祗岛中圈
	[25066] = { config_id = 25066, shape = RegionShape.SPHERE, radius = 250, pos = { x = -3813.082, y = 49.878, z = -798.685 }, area_id = 17, vision_type_list = { 321006 } },
	-- 海祗岛外圈
	[25067] = { config_id = 25067, shape = RegionShape.SPHERE, radius = 310, pos = { x = -3807.519, y = 201.792, z = -812.085 }, area_id = 17, vision_type_list = { 321007 } }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		gadgets = { },
		regions = { 25001, 25002, 25003, 25004, 25005, 25006, 25007, 25008, 25009, 25010, 25011, 25012, 25013, 25014, 25015, 25016, 25017, 25018, 25019, 25020, 25021, 25022, 25023, 25024, 25025, 25026, 25027, 25028, 25029, 25030, 25031, 25032, 25033, 25034, 25035, 25036, 25037, 25038, 25039, 25040, 25041, 25042, 25043, 25044, 25045, 25046, 25047, 25048, 25049, 25050, 25051, 25052, 25053, 25054, 25055, 25056, 25057, 25058, 25059, 25061, 25062, 25063, 25064, 25065, 25066, 25067 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================