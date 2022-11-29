-- 基础信息
local base_info = {
	group_id = 144001130
}

-- DEFS_MISCS
local defs = {
	group_id = 144001130, --对应的GroupID
	need_kill_hint = false,
	gadget_init = {130006, 130007},	--defs.gadget_init里按顺序填入 开启挑战机关ConfigID、 限时终点ConfigID
	challenge_time = 181, --挑战持续的时间
	gadget_suites = { 
		[4] = {130008,130016},	--suites每波需要销毁的指示路点和光柱,结构为[suite_id] = {gadget1,gadget2},id从4开始
		[5] = {130010,130017},
		[6] = {130012,130018},
	},
	suites_heraldry_loot = { --怪物死亡时刷新对应的Suites里的纹章,结构为[configid] = suiteid,
		
		
	},
	gadget_heraldry_count = 13, --收集的激流纹章数量
	gadget_heraldry_id = 70350256, --激流纹章ID
	suites_chain = {4,5,6,2}, --suite的刷新顺序
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
	[130001] = { config_id = 130001, gadget_id = 70350277, pos = { x = -62.291, y = 120.000, z = -592.200 }, rot = { x = 0.000, y = 157.675, z = 0.000 }, level = 1, area_id = 101 },
	[130002] = { config_id = 130002, gadget_id = 70350249, pos = { x = -129.276, y = 120.032, z = -560.740 }, rot = { x = 0.030, y = 133.556, z = 0.000 }, level = 1, area_id = 101 },
	[130003] = { config_id = 130003, gadget_id = 70690027, pos = { x = -109.821, y = 120.000, z = -560.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130004] = { config_id = 130004, gadget_id = 70350249, pos = { x = -24.077, y = 120.000, z = -678.681 }, rot = { x = 0.000, y = 157.772, z = 0.000 }, level = 1, area_id = 101 },
	[130006] = { config_id = 130006, gadget_id = 70350250, pos = { x = -231.491, y = 119.986, z = -629.964 }, rot = { x = 0.000, y = 43.250, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	[130007] = { config_id = 130007, gadget_id = 70360025, pos = { x = 127.397, y = 120.782, z = -789.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130008] = { config_id = 130008, gadget_id = 70350085, pos = { x = -142.593, y = 120.000, z = -564.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130009] = { config_id = 130009, gadget_id = 70690001, pos = { x = -115.519, y = 125.583, z = -569.126 }, rot = { x = 354.843, y = 223.264, z = 0.575 }, level = 1, area_id = 101 },
	[130010] = { config_id = 130010, gadget_id = 70350085, pos = { x = -60.897, y = 120.000, z = -593.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130011] = { config_id = 130011, gadget_id = 70690001, pos = { x = -121.662, y = 126.391, z = -575.653 }, rot = { x = 354.398, y = 216.012, z = 0.566 }, level = 1, area_id = 101 },
	[130012] = { config_id = 130012, gadget_id = 70350085, pos = { x = -21.257, y = 120.000, z = -686.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130013] = { config_id = 130013, gadget_id = 70690001, pos = { x = -126.903, y = 127.266, z = -582.863 }, rot = { x = 354.467, y = 202.703, z = 0.527 }, level = 1, area_id = 101 },
	[130014] = { config_id = 130014, gadget_id = 70350085, pos = { x = 127.397, y = 120.782, z = -789.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130016] = { config_id = 130016, gadget_id = 70710126, pos = { x = -142.593, y = 120.000, z = -564.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130017] = { config_id = 130017, gadget_id = 70710126, pos = { x = -60.897, y = 120.000, z = -593.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130018] = { config_id = 130018, gadget_id = 70710126, pos = { x = -21.257, y = 120.000, z = -686.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[130022] = { config_id = 130022, gadget_id = 70350249, pos = { x = -216.187, y = 120.000, z = -615.358 }, rot = { x = 0.000, y = 48.556, z = 0.000 }, level = 1, area_id = 100 },
	[130023] = { config_id = 130023, gadget_id = 70350249, pos = { x = -208.691, y = 120.000, z = -608.739 }, rot = { x = 0.000, y = 48.556, z = 0.000 }, level = 1, area_id = 100 },
	[130024] = { config_id = 130024, gadget_id = 70350249, pos = { x = -119.730, y = 120.029, z = -558.370 }, rot = { x = 0.030, y = 133.556, z = 0.000 }, level = 1, area_id = 101 },
	[130025] = { config_id = 130025, gadget_id = 70690001, pos = { x = -130.359, y = 128.133, z = -591.124 }, rot = { x = 353.924, y = 199.420, z = 0.514 }, level = 1, area_id = 101 },
	[130028] = { config_id = 130028, gadget_id = 70350249, pos = { x = -190.642, y = 120.000, z = -592.803 }, rot = { x = 0.000, y = 48.556, z = 0.000 }, level = 1, area_id = 100 },
	[130029] = { config_id = 130029, gadget_id = 70690001, pos = { x = -133.335, y = 129.086, z = -599.564 }, rot = { x = 351.537, y = 194.081, z = 0.490 }, level = 1, area_id = 101 },
	[130030] = { config_id = 130030, gadget_id = 70690001, pos = { x = -135.496, y = 130.407, z = -608.180 }, rot = { x = 344.625, y = 170.683, z = 0.335 }, level = 1, area_id = 101 },
	[130031] = { config_id = 130031, gadget_id = 70690001, pos = { x = -134.095, y = 132.786, z = -616.714 }, rot = { x = 344.675, y = 163.751, z = 0.273 }, level = 1, area_id = 100 },
	[130032] = { config_id = 130032, gadget_id = 70690001, pos = { x = -131.667, y = 135.164, z = -625.046 }, rot = { x = 345.611, y = 159.780, z = 0.235 }, level = 1, area_id = 100 },
	[130033] = { config_id = 130033, gadget_id = 70350256, pos = { x = -125.763, y = 138.499, z = -641.082 }, rot = { x = 345.611, y = 159.780, z = 0.235 }, level = 1, area_id = 100 },
	[130034] = { config_id = 130034, gadget_id = 70350256, pos = { x = -126.956, y = 138.090, z = -637.838 }, rot = { x = 345.611, y = 159.780, z = 0.235 }, level = 1, area_id = 100 },
	[130035] = { config_id = 130035, gadget_id = 70350256, pos = { x = -124.605, y = 138.765, z = -644.232 }, rot = { x = 345.611, y = 159.780, z = 0.235 }, level = 1, area_id = 100 },
	[130036] = { config_id = 130036, gadget_id = 70350249, pos = { x = -71.811, y = 120.000, z = -581.038 }, rot = { x = 0.000, y = 157.675, z = 0.000 }, level = 1, area_id = 101 },
	[130037] = { config_id = 130037, gadget_id = 70690001, pos = { x = -105.706, y = 135.772, z = -651.461 }, rot = { x = 2.919, y = 51.552, z = 0.551 }, level = 1, area_id = 100 },
	[130038] = { config_id = 130038, gadget_id = 70350249, pos = { x = -168.255, y = 120.000, z = -573.035 }, rot = { x = 0.000, y = 48.556, z = 0.000 }, level = 1, area_id = 101 },
	[130039] = { config_id = 130039, gadget_id = 70690001, pos = { x = -98.962, y = 135.428, z = -647.003 }, rot = { x = 2.992, y = 30.001, z = 355.538 }, level = 1, area_id = 100 },
	[130040] = { config_id = 130040, gadget_id = 70690001, pos = { x = -15.139, y = 125.963, z = -703.889 }, rot = { x = 356.669, y = 163.194, z = 0.000 }, level = 1, area_id = 101 },
	[130041] = { config_id = 130041, gadget_id = 70690001, pos = { x = -91.963, y = 134.698, z = -636.595 }, rot = { x = 3.105, y = 29.756, z = 359.450 }, level = 1, area_id = 101 },
	[130042] = { config_id = 130042, gadget_id = 70350249, pos = { x = -48.554, y = 120.000, z = -624.259 }, rot = { x = 0.000, y = 154.906, z = 0.000 }, level = 1, area_id = 101 },
	[130043] = { config_id = 130043, gadget_id = 70350249, pos = { x = -79.266, y = 120.008, z = -573.394 }, rot = { x = 0.030, y = 133.556, z = 0.000 }, level = 1, area_id = 101 },
	[130044] = { config_id = 130044, gadget_id = 70350249, pos = { x = -41.769, y = 120.000, z = -638.749 }, rot = { x = 0.000, y = 155.225, z = 0.000 }, level = 1, area_id = 101 },
	[130045] = { config_id = 130045, gadget_id = 70350249, pos = { x = -35.064, y = 120.000, z = -653.276 }, rot = { x = 0.000, y = 155.768, z = 0.000 }, level = 1, area_id = 101 },
	[130046] = { config_id = 130046, gadget_id = 70350249, pos = { x = -28.497, y = 120.000, z = -667.865 }, rot = { x = 0.000, y = 157.772, z = 0.000 }, level = 1, area_id = 101 },
	[130047] = { config_id = 130047, gadget_id = 70690001, pos = { x = -12.541, y = 126.486, z = -712.490 }, rot = { x = 356.690, y = 162.462, z = 0.000 }, level = 1, area_id = 101 },
	[130048] = { config_id = 130048, gadget_id = 70350249, pos = { x = -66.296, y = 120.000, z = -586.704 }, rot = { x = 0.000, y = 157.675, z = 0.000 }, level = 1, area_id = 101 },
	[130049] = { config_id = 130049, gadget_id = 70690001, pos = { x = -86.298, y = 134.184, z = -627.624 }, rot = { x = 4.602, y = 21.455, z = 359.479 }, level = 1, area_id = 101 },
	[130050] = { config_id = 130050, gadget_id = 70350256, pos = { x = 67.187, y = 145.254, z = -747.601 }, rot = { x = 0.000, y = 276.992, z = 0.000 }, level = 1, area_id = 101 },
	[130051] = { config_id = 130051, gadget_id = 70690001, pos = { x = -81.606, y = 133.152, z = -615.685 }, rot = { x = 4.368, y = 14.530, z = 359.512 }, level = 1, area_id = 101 },
	[130052] = { config_id = 130052, gadget_id = 70350256, pos = { x = -182.865, y = 122.981, z = -585.180 }, rot = { x = 327.956, y = 28.783, z = 0.000 }, level = 1, area_id = 100 },
	[130053] = { config_id = 130053, gadget_id = 70350256, pos = { x = -179.657, y = 125.140, z = -582.931 }, rot = { x = 327.956, y = 28.783, z = 0.000 }, level = 1, area_id = 100 },
	[130054] = { config_id = 130054, gadget_id = 70350256, pos = { x = -176.194, y = 127.041, z = -580.833 }, rot = { x = 327.956, y = 28.783, z = 0.000 }, level = 1, area_id = 101 },
	[130055] = { config_id = 130055, gadget_id = 70350277, pos = { x = -232.999, y = 119.932, z = -631.114 }, rot = { x = 0.000, y = 43.250, z = 347.044 }, level = 1, area_id = 100 },
	[130056] = { config_id = 130056, gadget_id = 70350249, pos = { x = -54.359, y = 120.000, z = -611.206 }, rot = { x = 0.000, y = 157.675, z = 0.000 }, level = 1, area_id = 101 },
	[130057] = { config_id = 130057, gadget_id = 70690001, pos = { x = -82.432, y = 131.439, z = -601.346 }, rot = { x = 12.075, y = 335.699, z = 2.361 }, level = 1, area_id = 101 },
	[130058] = { config_id = 130058, gadget_id = 70950092, pos = { x = -42.062, y = 120.000, z = -654.437 }, rot = { x = 0.000, y = 65.623, z = 0.000 }, level = 1, area_id = 101 },
	[130059] = { config_id = 130059, gadget_id = 70290060, pos = { x = -35.623, y = 124.366, z = -650.912 }, rot = { x = 0.000, y = 331.666, z = 0.000 }, level = 1, area_id = 101 },
	[130060] = { config_id = 130060, gadget_id = 70350249, pos = { x = -156.081, y = 120.000, z = -568.607 }, rot = { x = 0.310, y = 70.951, z = 0.000 }, level = 1, area_id = 101 },
	[130061] = { config_id = 130061, gadget_id = 70690001, pos = { x = -85.526, y = 129.353, z = -591.810 }, rot = { x = 12.300, y = 324.182, z = 359.921 }, level = 1, area_id = 101 },
	[130063] = { config_id = 130063, gadget_id = 70290059, pos = { x = -27.213, y = 120.000, z = -646.755 }, rot = { x = 0.000, y = 13.400, z = 0.000 }, level = 1, area_id = 101 },
	[130064] = { config_id = 130064, gadget_id = 70350256, pos = { x = -39.847, y = 121.899, z = -642.257 }, rot = { x = 0.000, y = 154.122, z = 0.000 }, level = 1, area_id = 101 },
	[130065] = { config_id = 130065, gadget_id = 70350249, pos = { x = -89.643, y = 120.015, z = -566.216 }, rot = { x = 0.030, y = 133.556, z = 0.000 }, level = 1, area_id = 101 },
	[130066] = { config_id = 130066, gadget_id = 70690027, pos = { x = -16.445, y = 120.000, z = -698.981 }, rot = { x = 0.000, y = 157.988, z = 0.000 }, level = 1, area_id = 101 },
	[130067] = { config_id = 130067, gadget_id = 70690001, pos = { x = -9.833, y = 127.005, z = -721.057 }, rot = { x = 356.729, y = 161.089, z = 0.000 }, level = 1, area_id = 101 },
	[130068] = { config_id = 130068, gadget_id = 70350256, pos = { x = -40.444, y = 123.476, z = -646.493 }, rot = { x = 339.047, y = 187.219, z = 0.000 }, level = 1, area_id = 101 },
	[130069] = { config_id = 130069, gadget_id = 70350256, pos = { x = -40.991, y = 125.009, z = -650.815 }, rot = { x = 339.047, y = 187.219, z = 0.000 }, level = 1, area_id = 101 },
	[130071] = { config_id = 130071, gadget_id = 70350256, pos = { x = -39.252, y = 124.989, z = -652.588 }, rot = { x = 342.776, y = 75.216, z = 0.000 }, level = 1, area_id = 101 },
	[130072] = { config_id = 130072, gadget_id = 70350249, pos = { x = -100.187, y = 120.021, z = -561.464 }, rot = { x = 0.030, y = 133.556, z = 0.000 }, level = 1, area_id = 101 },
	[130073] = { config_id = 130073, gadget_id = 70350256, pos = { x = -36.001, y = 125.748, z = -651.020 }, rot = { x = 348.295, y = 64.760, z = 0.000 }, level = 1, area_id = 101 },
	[130074] = { config_id = 130074, gadget_id = 70690001, pos = { x = -6.922, y = 127.519, z = -729.557 }, rot = { x = 357.518, y = 151.744, z = 0.000 }, level = 1, area_id = 101 },
	[130075] = { config_id = 130075, gadget_id = 70350256, pos = { x = -32.329, y = 127.088, z = -649.116 }, rot = { x = 348.295, y = 64.760, z = 0.000 }, level = 1, area_id = 101 },
	[130076] = { config_id = 130076, gadget_id = 70690001, pos = { x = -2.698, y = 127.906, z = -737.416 }, rot = { x = 359.621, y = 136.340, z = 0.000 }, level = 1, area_id = 101 },
	[130077] = { config_id = 130077, gadget_id = 70690001, pos = { x = 3.512, y = 127.965, z = -743.923 }, rot = { x = 358.315, y = 129.410, z = 0.000 }, level = 1, area_id = 101 },
	[130078] = { config_id = 130078, gadget_id = 70690001, pos = { x = 10.454, y = 128.230, z = -749.627 }, rot = { x = 348.493, y = 102.657, z = 0.000 }, level = 1, area_id = 101 },
	[130079] = { config_id = 130079, gadget_id = 70690001, pos = { x = 18.793, y = 129.970, z = -751.500 }, rot = { x = 343.436, y = 84.478, z = 0.000 }, level = 1, area_id = 101 },
	[130080] = { config_id = 130080, gadget_id = 70690001, pos = { x = 27.379, y = 132.535, z = -750.670 }, rot = { x = 343.076, y = 82.730, z = 0.000 }, level = 1, area_id = 101 },
	[130081] = { config_id = 130081, gadget_id = 70690001, pos = { x = 35.920, y = 135.155, z = -749.580 }, rot = { x = 342.917, y = 81.928, z = 0.000 }, level = 1, area_id = 101 },
	[130082] = { config_id = 130082, gadget_id = 70690001, pos = { x = 44.437, y = 137.799, z = -748.372 }, rot = { x = 342.804, y = 81.352, z = 0.000 }, level = 1, area_id = 101 },
	[130083] = { config_id = 130083, gadget_id = 70690001, pos = { x = 52.937, y = 140.460, z = -747.080 }, rot = { x = 355.720, y = 93.803, z = 0.000 }, level = 1, area_id = 101 },
	[130084] = { config_id = 130084, gadget_id = 70350249, pos = { x = -201.224, y = 120.000, z = -602.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	[130087] = { config_id = 130087, gadget_id = 70690001, pos = { x = 85.176, y = 139.079, z = -757.469 }, rot = { x = 12.319, y = 131.606, z = 0.000 }, level = 1, area_id = 101 },
	[130088] = { config_id = 130088, gadget_id = 70690001, pos = { x = 94.895, y = 136.240, z = -766.099 }, rot = { x = 12.319, y = 131.606, z = 0.000 }, level = 1, area_id = 101 },
	[130090] = { config_id = 130090, gadget_id = 70690001, pos = { x = 104.900, y = 133.318, z = -774.984 }, rot = { x = 12.319, y = 131.606, z = 0.000 }, level = 1, area_id = 101 },
	[130092] = { config_id = 130092, gadget_id = 70350277, pos = { x = -142.931, y = 120.000, z = -563.618 }, rot = { x = 3.907, y = 83.939, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	[130118] = { config_id = 130118, shape = RegionShape.SPHERE, radius = 2, pos = { x = 127.397, y = 120.782, z = -789.428 }, area_id = 101 },
	[130119] = { config_id = 130119, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -142.593, y = 120.000, z = -564.724 }, area_id = 101 },
	[130121] = { config_id = 130121, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -60.897, y = 120.000, z = -593.673 }, area_id = 101 },
	[130123] = { config_id = 130123, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -21.257, y = 120.000, z = -686.004 }, area_id = 101 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 人
	{ config_id = 130026, pos = { x = -245.694, y = 120.000, z = -628.951 }, rot = { x = 0.000, y = 43.250, z = 0.000 }, area_id = 100 },
	-- 船
	{ config_id = 130099, pos = { x = -237.653, y = 120.000, z = -636.515 }, rot = { x = 0.000, y = 43.250, z = 0.000 }, area_id = 100 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 130005, gadget_id = 70220013, pos = { x = -231.491, y = 119.986, z = -629.964 }, rot = { x = 6.230, y = 359.805, z = 356.424 }, level = 1, area_id = 100 },
		{ config_id = 130015, gadget_id = 70350085, pos = { x = -236.737, y = 119.986, z = -635.541 }, rot = { x = 0.000, y = 43.250, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 130019, gadget_id = 70350085, pos = { x = -483.508, y = 126.278, z = -700.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 130020, gadget_id = 70300114, pos = { x = -483.508, y = 126.278, z = -700.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 130021, gadget_id = 70710126, pos = { x = -483.508, y = 126.278, z = -700.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
	},
	regions = {
		{ config_id = 130125, shape = RegionShape.SPHERE, radius = 7, pos = { x = -483.508, y = 126.278, z = -700.195 }, area_id = 100 }
	},
	triggers = {
		{ config_id = 1130115, name = "GADGET_STATE_CHANGE_130115", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130115", action = "action_EVENT_GADGET_STATE_CHANGE_130115", trigger_count = 0 },
		{ config_id = 1130116, name = "CHALLENGE_SUCCESS_130116", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_130116", trigger_count = 0 },
		{ config_id = 1130117, name = "CHALLENGE_FAIL_130117", event = EventType.EVENT_CHALLENGE_FAIL, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_FAIL_130117", trigger_count = 0 },
		{ config_id = 1130120, name = "ANY_MONSTER_DIE_130120", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130120", action = "action_EVENT_ANY_MONSTER_DIE_130120", trigger_count = 0 },
		{ config_id = 1130122, name = "ANY_MONSTER_DIE_130122", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130122", action = "action_EVENT_ANY_MONSTER_DIE_130122", trigger_count = 0 },
		{ config_id = 1130124, name = "ANY_MONSTER_DIE_130124", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130124", action = "action_EVENT_ANY_MONSTER_DIE_130124" },
		{ config_id = 1130125, name = "ENTER_REGION_130125", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_130125", action = "action_EVENT_ENTER_REGION_130125" },
		{ config_id = 1130126, name = "ANY_MONSTER_DIE_130126", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130126", action = "action_EVENT_ANY_MONSTER_DIE_130126" },
		{ config_id = 1130127, name = "GADGET_CREATE_130127", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_130127", action = "action_EVENT_GADGET_CREATE_130127", trigger_count = 0 },
		{ config_id = 1130128, name = "ANY_GADGET_DIE_130128", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130128", action = "", trigger_count = 0, tag = "888" },
		{ config_id = 1130129, name = "SELECT_OPTION_130129", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_130129", action = "action_EVENT_SELECT_OPTION_130129", trigger_count = 0 },
		{ config_id = 1130130, name = "SELECT_OPTION_130130", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_130130", action = "action_EVENT_SELECT_OPTION_130130", trigger_count = 0 },
		{ config_id = 1130062, name = "ANY_GADGET_DIE_130062", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130062", action = "action_EVENT_ANY_GADGET_DIE_130062", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = 起点,
		monsters = { },
		gadgets = { 130006, 130055 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 130007, 130014, 130040, 130047, 130050, 130066, 130067, 130074, 130076, 130077, 130078, 130079, 130080, 130081, 130082, 130083, 130087, 130088, 130090 },
		regions = { 130118 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 节点1,
		monsters = { },
		gadgets = { 130008, 130016, 130022, 130023, 130028, 130038, 130052, 130053, 130054, 130060, 130084, 130092 },
		regions = { 130119 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { },
		gadgets = { 130001, 130002, 130003, 130009, 130010, 130011, 130013, 130017, 130024, 130025, 130029, 130030, 130031, 130032, 130033, 130034, 130035, 130036, 130037, 130039, 130041, 130043, 130048, 130049, 130051, 130056, 130057, 130061, 130065, 130072 },
		regions = { 130121 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 130004, 130012, 130018, 130042, 130044, 130045, 130046, 130058, 130059, 130063, 130064, 130068, 130069, 130071, 130073, 130075 },
		regions = { 130123 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
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

require "V1_6/BoatRace"