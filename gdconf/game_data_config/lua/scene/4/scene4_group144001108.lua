-- 基础信息
local base_info = {
	group_id = 144001108
}

-- DEFS_MISCS
local defs = {
	group_id = 144001108, --对应的GroupID
	need_kill_hint = true,
	gadget_init = {108013, 108014},	--defs.gadget_init里按顺序填入 开启挑战机关ConfigID、 限时终点ConfigID
	challenge_time = 181, --挑战持续的时间
	gadget_suites = { 
		[4] = {108015,108023},	--suites每波需要销毁的指示路点和光柱,结构为[suite_id] = {gadget1,gadget2},id从4开始
		[5] = {108017,108024},
		[6] = {108019,108025},
	},
	suites_heraldry_loot = { --怪物死亡时刷新对应的Suites里的纹章,结构为[configid] = suiteid,
		[108075] = 7,
	},
	gadget_heraldry_count = 13,
	gadget_heraldry_id = 70350256,
	suites_chain = {4,5,6,2},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[108075] = { config_id = 108075, monster_id = 21010401, pos = { x = 452.809, y = 123.679, z = 387.807 }, rot = { x = 0.000, y = 102.286, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[108001] = { config_id = 108001, gadget_id = 70350249, pos = { x = 575.387, y = 120.000, z = 370.712 }, rot = { x = 0.000, y = 325.152, z = 0.000 }, level = 1, area_id = 102 },
	[108002] = { config_id = 108002, gadget_id = 70350249, pos = { x = 566.918, y = 120.000, z = 382.876 }, rot = { x = 0.000, y = 310.908, z = 0.000 }, level = 1, area_id = 102 },
	[108003] = { config_id = 108003, gadget_id = 70350277, pos = { x = 458.864, y = 120.000, z = 367.193 }, rot = { x = 0.000, y = 180.265, z = 0.000 }, level = 1, area_id = 102 },
	[108004] = { config_id = 108004, gadget_id = 70950087, pos = { x = 456.297, y = 120.000, z = 390.214 }, rot = { x = 0.000, y = 25.624, z = 0.000 }, level = 1, area_id = 102 },
	[108005] = { config_id = 108005, gadget_id = 70350277, pos = { x = 603.695, y = 120.000, z = 233.531 }, rot = { x = 0.000, y = 354.330, z = 0.000 }, level = 1, area_id = 102 },
	[108006] = { config_id = 108006, gadget_id = 70290061, pos = { x = 480.840, y = 120.000, z = 382.419 }, rot = { x = 0.000, y = 252.320, z = 0.000 }, level = 1, area_id = 102 },
	[108007] = { config_id = 108007, gadget_id = 70950087, pos = { x = 455.192, y = 120.000, z = 384.049 }, rot = { x = 0.000, y = 25.624, z = 0.000 }, level = 1, area_id = 102 },
	[108008] = { config_id = 108008, gadget_id = 70950092, pos = { x = 451.586, y = 120.000, z = 387.655 }, rot = { x = 0.000, y = 278.515, z = 0.000 }, level = 1, area_id = 102 },
	[108009] = { config_id = 108009, gadget_id = 70350249, pos = { x = 601.790, y = 120.000, z = 262.756 }, rot = { x = 0.000, y = 354.299, z = 0.000 }, level = 1, area_id = 102 },
	[108010] = { config_id = 108010, gadget_id = 70350249, pos = { x = 555.352, y = 120.000, z = 392.898 }, rot = { x = 0.000, y = 310.908, z = 0.000 }, level = 1, area_id = 102 },
	[108011] = { config_id = 108011, gadget_id = 70290061, pos = { x = 525.529, y = 120.000, z = 404.262 }, rot = { x = 0.000, y = 296.041, z = 0.000 }, level = 1, area_id = 102 },
	[108012] = { config_id = 108012, gadget_id = 70350256, pos = { x = 541.776, y = 120.000, z = 404.035 }, rot = { x = 0.000, y = 299.000, z = 0.000 }, level = 1, area_id = 102 },
	[108013] = { config_id = 108013, gadget_id = 70350250, pos = { x = 603.695, y = 120.000, z = 233.531 }, rot = { x = 0.000, y = 354.330, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	[108014] = { config_id = 108014, gadget_id = 70360025, pos = { x = 227.262, y = 134.965, z = 148.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[108015] = { config_id = 108015, gadget_id = 70350085, pos = { x = 571.533, y = 120.000, z = 375.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[108016] = { config_id = 108016, gadget_id = 70290061, pos = { x = 528.764, y = 120.000, z = 417.566 }, rot = { x = 0.000, y = 296.041, z = 0.000 }, level = 1, area_id = 102 },
	[108017] = { config_id = 108017, gadget_id = 70350085, pos = { x = 459.323, y = 120.000, z = 365.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[108019] = { config_id = 108019, gadget_id = 70350085, pos = { x = 423.013, y = 120.000, z = 157.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[108020] = { config_id = 108020, gadget_id = 70350277, pos = { x = 424.242, y = 120.000, z = 159.407 }, rot = { x = 0.000, y = 221.588, z = 0.000 }, level = 1, area_id = 102 },
	[108021] = { config_id = 108021, gadget_id = 70350085, pos = { x = 227.262, y = 134.965, z = 148.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[108023] = { config_id = 108023, gadget_id = 70710126, pos = { x = 571.533, y = 120.000, z = 375.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[108024] = { config_id = 108024, gadget_id = 70710126, pos = { x = 459.323, y = 120.000, z = 365.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[108025] = { config_id = 108025, gadget_id = 70710126, pos = { x = 423.013, y = 120.000, z = 157.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[108026] = { config_id = 108026, gadget_id = 70690001, pos = { x = 403.594, y = 144.953, z = 154.225 }, rot = { x = 4.226, y = 340.820, z = 0.000 }, level = 1, area_id = 102 },
	[108027] = { config_id = 108027, gadget_id = 70690001, pos = { x = 401.285, y = 144.434, z = 160.862 }, rot = { x = 3.713, y = 339.909, z = 0.000 }, level = 1, area_id = 102 },
	[108028] = { config_id = 108028, gadget_id = 70350249, pos = { x = 590.307, y = 120.000, z = 325.395 }, rot = { x = 0.000, y = 343.075, z = 0.000 }, level = 1, area_id = 102 },
	[108029] = { config_id = 108029, gadget_id = 70350249, pos = { x = 585.650, y = 120.000, z = 340.699 }, rot = { x = 0.000, y = 340.985, z = 0.000 }, level = 1, area_id = 102 },
	[108030] = { config_id = 108030, gadget_id = 70350249, pos = { x = 580.437, y = 120.000, z = 355.825 }, rot = { x = 0.000, y = 333.834, z = 0.000 }, level = 1, area_id = 102 },
	[108031] = { config_id = 108031, gadget_id = 70350256, pos = { x = 527.795, y = 120.000, z = 411.784 }, rot = { x = 0.000, y = 290.483, z = 0.000 }, level = 1, area_id = 102 },
	[108032] = { config_id = 108032, gadget_id = 70690001, pos = { x = 398.200, y = 143.851, z = 169.297 }, rot = { x = 2.784, y = 338.268, z = 0.000 }, level = 1, area_id = 102 },
	[108033] = { config_id = 108033, gadget_id = 70690001, pos = { x = 394.872, y = 143.414, z = 177.646 }, rot = { x = 355.986, y = 326.764, z = 0.000 }, level = 1, area_id = 102 },
	[108044] = { config_id = 108044, gadget_id = 70350249, pos = { x = 466.693, y = 120.000, z = 314.156 }, rot = { x = 0.000, y = 165.676, z = 0.000 }, level = 1, area_id = 102 },
	[108045] = { config_id = 108045, gadget_id = 70350249, pos = { x = 464.113, y = 120.000, z = 330.083 }, rot = { x = 0.000, y = 163.391, z = 0.000 }, level = 1, area_id = 102 },
	[108046] = { config_id = 108046, gadget_id = 70690001, pos = { x = 390.045, y = 144.032, z = 185.013 }, rot = { x = 341.954, y = 301.341, z = 0.000 }, level = 1, area_id = 102 },
	[108047] = { config_id = 108047, gadget_id = 70350249, pos = { x = 600.202, y = 120.000, z = 278.670 }, rot = { x = 0.000, y = 351.106, z = 0.000 }, level = 1, area_id = 102 },
	[108048] = { config_id = 108048, gadget_id = 70350249, pos = { x = 512.813, y = 120.000, z = 417.380 }, rot = { x = 0.000, y = 278.774, z = 0.000 }, level = 1, area_id = 102 },
	[108049] = { config_id = 108049, gadget_id = 70350249, pos = { x = 497.101, y = 120.000, z = 419.806 }, rot = { x = 0.000, y = 254.948, z = 0.000 }, level = 1, area_id = 102 },
	[108050] = { config_id = 108050, gadget_id = 70350249, pos = { x = 481.740, y = 120.000, z = 415.675 }, rot = { x = 0.000, y = 238.242, z = 0.000 }, level = 1, area_id = 102 },
	[108051] = { config_id = 108051, gadget_id = 70350249, pos = { x = 468.320, y = 120.000, z = 407.367 }, rot = { x = 0.000, y = 205.066, z = 0.000 }, level = 1, area_id = 102 },
	[108052] = { config_id = 108052, gadget_id = 70350249, pos = { x = 597.728, y = 120.000, z = 294.477 }, rot = { x = 0.000, y = 350.809, z = 0.000 }, level = 1, area_id = 102 },
	[108053] = { config_id = 108053, gadget_id = 70350256, pos = { x = 408.279, y = 145.524, z = 140.231 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, area_id = 102 },
	[108054] = { config_id = 108054, gadget_id = 70350256, pos = { x = 406.798, y = 145.524, z = 146.963 }, rot = { x = 0.000, y = 117.900, z = 0.000 }, level = 1, area_id = 102 },
	[108055] = { config_id = 108055, gadget_id = 70690001, pos = { x = 382.748, y = 146.816, z = 189.457 }, rot = { x = 339.591, y = 292.917, z = 0.000 }, level = 1, area_id = 102 },
	[108056] = { config_id = 108056, gadget_id = 70690011, pos = { x = 406.945, y = 120.000, z = 140.042 }, rot = { x = 0.000, y = 218.400, z = 0.000 }, level = 1, area_id = 102 },
	[108057] = { config_id = 108057, gadget_id = 70690001, pos = { x = 374.986, y = 149.951, z = 192.738 }, rot = { x = 340.086, y = 267.574, z = 0.000 }, level = 1, area_id = 102 },
	[108058] = { config_id = 108058, gadget_id = 70690001, pos = { x = 366.787, y = 152.924, z = 192.391 }, rot = { x = 345.302, y = 235.447, z = 0.000 }, level = 1, area_id = 102 },
	[108059] = { config_id = 108059, gadget_id = 70350249, pos = { x = 471.768, y = 120.000, z = 282.743 }, rot = { x = 0.000, y = 183.460, z = 0.000 }, level = 1, area_id = 102 },
	[108060] = { config_id = 108060, gadget_id = 70350249, pos = { x = 470.803, y = 120.000, z = 266.777 }, rot = { x = 0.000, y = 186.146, z = 0.000 }, level = 1, area_id = 102 },
	[108061] = { config_id = 108061, gadget_id = 70350249, pos = { x = 469.201, y = 120.000, z = 250.864 }, rot = { x = 0.000, y = 182.020, z = 0.000 }, level = 1, area_id = 102 },
	[108066] = { config_id = 108066, gadget_id = 70690001, pos = { x = 359.628, y = 155.204, z = 187.461 }, rot = { x = 347.456, y = 232.014, z = 0.000 }, level = 1, area_id = 102 },
	[108067] = { config_id = 108067, gadget_id = 70690001, pos = { x = 352.707, y = 157.158, z = 182.056 }, rot = { x = 347.456, y = 232.014, z = 0.000 }, level = 1, area_id = 102 },
	[108068] = { config_id = 108068, gadget_id = 70690001, pos = { x = 330.234, y = 149.494, z = 157.863 }, rot = { x = 20.330, y = 220.305, z = 0.000 }, level = 1, area_id = 102 },
	[108069] = { config_id = 108069, gadget_id = 70350249, pos = { x = 451.195, y = 120.000, z = 192.083 }, rot = { x = 0.000, y = 218.555, z = 0.000 }, level = 1, area_id = 102 },
	[108070] = { config_id = 108070, gadget_id = 70350249, pos = { x = 441.223, y = 120.000, z = 179.571 }, rot = { x = 0.000, y = 220.475, z = 0.000 }, level = 1, area_id = 102 },
	[108071] = { config_id = 108071, gadget_id = 70350249, pos = { x = 430.839, y = 120.000, z = 167.403 }, rot = { x = 0.000, y = 221.588, z = 0.000 }, level = 1, area_id = 102 },
	[108072] = { config_id = 108072, gadget_id = 70690001, pos = { x = 325.980, y = 147.057, z = 152.848 }, rot = { x = 20.330, y = 220.305, z = 0.000 }, level = 1, area_id = 102 },
	[108073] = { config_id = 108073, gadget_id = 70350277, pos = { x = 572.930, y = 120.000, z = 374.293 }, rot = { x = 0.000, y = 324.459, z = 0.000 }, level = 1, area_id = 102 },
	[108074] = { config_id = 108074, gadget_id = 70690001, pos = { x = 317.126, y = 141.986, z = 142.410 }, rot = { x = 5.572, y = 242.093, z = 0.000 }, level = 1, area_id = 102 },
	[108076] = { config_id = 108076, gadget_id = 70690001, pos = { x = 303.935, y = 140.530, z = 135.423 }, rot = { x = 5.038, y = 245.079, z = 0.000 }, level = 1, area_id = 102 },
	[108077] = { config_id = 108077, gadget_id = 70690001, pos = { x = 290.389, y = 139.213, z = 129.129 }, rot = { x = 5.794, y = 273.108, z = 0.000 }, level = 1, area_id = 102 },
	[108078] = { config_id = 108078, gadget_id = 70690001, pos = { x = 275.723, y = 137.723, z = 129.925 }, rot = { x = 5.424, y = 282.341, z = 0.000 }, level = 1, area_id = 102 },
	[108079] = { config_id = 108079, gadget_id = 70290061, pos = { x = 476.756, y = 120.000, z = 395.238 }, rot = { x = 0.000, y = 252.320, z = 0.000 }, level = 1, area_id = 102 },
	[108080] = { config_id = 108080, gadget_id = 70350249, pos = { x = 513.619, y = 120.000, z = 405.998 }, rot = { x = 0.000, y = 247.911, z = 0.000 }, level = 1, area_id = 102 },
	[108081] = { config_id = 108081, gadget_id = 70350249, pos = { x = 498.794, y = 120.000, z = 399.981 }, rot = { x = 0.000, y = 244.496, z = 0.000 }, level = 1, area_id = 102 },
	[108082] = { config_id = 108082, gadget_id = 70350249, pos = { x = 484.359, y = 120.000, z = 393.095 }, rot = { x = 0.000, y = 228.417, z = 0.000 }, level = 1, area_id = 102 },
	[108083] = { config_id = 108083, gadget_id = 70690001, pos = { x = 261.136, y = 136.305, z = 133.117 }, rot = { x = 5.424, y = 282.341, z = 0.000 }, level = 1, area_id = 102 },
	[108084] = { config_id = 108084, gadget_id = 70350256, pos = { x = 338.853, y = 156.218, z = 172.092 }, rot = { x = 11.330, y = 232.662, z = 359.007 }, level = 1, area_id = 102 },
	[108085] = { config_id = 108085, gadget_id = 70350256, pos = { x = 336.988, y = 155.066, z = 169.681 }, rot = { x = 9.821, y = 224.792, z = 357.734 }, level = 1, area_id = 102 },
	[108086] = { config_id = 108086, gadget_id = 70350256, pos = { x = 335.105, y = 153.871, z = 166.682 }, rot = { x = 7.454, y = 214.071, z = 356.070 }, level = 1, area_id = 102 },
	[108087] = { config_id = 108087, gadget_id = 70350258, pos = { x = 595.996, y = 120.000, z = 304.985 }, rot = { x = 0.000, y = 341.000, z = 0.000 }, level = 1, area_id = 102 },
	[108088] = { config_id = 108088, gadget_id = 70350256, pos = { x = 333.381, y = 152.652, z = 163.742 }, rot = { x = 7.454, y = 214.072, z = 356.070 }, level = 1, area_id = 102 },
	[108089] = { config_id = 108089, gadget_id = 70350256, pos = { x = 331.677, y = 151.321, z = 160.713 }, rot = { x = 7.454, y = 214.072, z = 356.070 }, level = 1, area_id = 102 },
	[108090] = { config_id = 108090, gadget_id = 70350256, pos = { x = 464.755, y = 120.000, z = 220.952 }, rot = { x = 0.000, y = 182.020, z = 0.000 }, level = 1, area_id = 102 },
	[108091] = { config_id = 108091, gadget_id = 70350256, pos = { x = 467.929, y = 120.000, z = 236.850 }, rot = { x = 0.000, y = 182.020, z = 0.000 }, level = 1, area_id = 102 },
	[108092] = { config_id = 108092, gadget_id = 70690001, pos = { x = 404.923, y = 145.252, z = 150.404 }, rot = { x = 4.226, y = 340.820, z = 0.000 }, level = 1, area_id = 102 },
	[108093] = { config_id = 108093, gadget_id = 70350256, pos = { x = 459.994, y = 120.000, z = 357.319 }, rot = { x = 0.000, y = 163.391, z = 0.000 }, level = 1, area_id = 102 },
	[108094] = { config_id = 108094, gadget_id = 70350256, pos = { x = 461.903, y = 120.000, z = 346.270 }, rot = { x = 0.000, y = 165.676, z = 0.000 }, level = 1, area_id = 102 },
	[108095] = { config_id = 108095, gadget_id = 70350258, pos = { x = 470.649, y = 120.000, z = 298.661 }, rot = { x = 0.000, y = 178.320, z = 0.000 }, level = 1, area_id = 102 },
	[108098] = { config_id = 108098, gadget_id = 70350258, pos = { x = 461.066, y = 120.000, z = 204.591 }, rot = { x = 0.000, y = 218.280, z = 0.000 }, level = 1, area_id = 102 },
	[108103] = { config_id = 108103, gadget_id = 70350249, pos = { x = 461.557, y = 120.000, z = 392.908 }, rot = { x = 0.000, y = 187.104, z = 0.000 }, level = 1, area_id = 102 },
	[108104] = { config_id = 108104, gadget_id = 70350249, pos = { x = 472.484, y = 120.000, z = 382.558 }, rot = { x = 0.000, y = 213.319, z = 0.000 }, level = 1, area_id = 102 },
	[108105] = { config_id = 108105, gadget_id = 70350249, pos = { x = 459.580, y = 120.000, z = 377.043 }, rot = { x = 0.000, y = 182.666, z = 0.000 }, level = 1, area_id = 102 },
	[108106] = { config_id = 108106, gadget_id = 70350249, pos = { x = 463.708, y = 120.000, z = 369.207 }, rot = { x = 0.000, y = 213.319, z = 0.000 }, level = 1, area_id = 102 },
	[108107] = { config_id = 108107, gadget_id = 70350249, pos = { x = 459.302, y = 120.000, z = 365.942 }, rot = { x = 0.000, y = 180.265, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	[108037] = { config_id = 108037, shape = RegionShape.SPHERE, radius = 2, pos = { x = 227.262, y = 134.965, z = 148.861 }, area_id = 102 },
	[108038] = { config_id = 108038, shape = RegionShape.SPHERE, radius = 4, pos = { x = 571.533, y = 120.000, z = 375.001 }, area_id = 102 },
	[108040] = { config_id = 108040, shape = RegionShape.SPHERE, radius = 4, pos = { x = 459.323, y = 120.000, z = 365.245 }, area_id = 102 },
	[108042] = { config_id = 108042, shape = RegionShape.SPHERE, radius = 4, pos = { x = 423.013, y = 120.000, z = 157.758 }, area_id = 102 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 船
	{ config_id = 108096, pos = { x = 604.627, y = 120.000, z = 224.138 }, rot = { x = 0.000, y = 354.330, z = 0.000 }, area_id = 102 },
	-- 人
	{ config_id = 108100, pos = { x = 593.561, y = 120.000, z = 223.040 }, rot = { x = 0.000, y = 354.330, z = 0.000 }, area_id = 102 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 108018, gadget_id = 70300114, pos = { x = 451.951, y = 120.113, z = 388.407 }, rot = { x = 0.000, y = 35.365, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 108022, gadget_id = 70350085, pos = { x = 603.695, y = 120.000, z = 233.531 }, rot = { x = 0.000, y = 354.330, z = 0.000 }, level = 1, area_id = 102 }
	},
	triggers = {
		{ config_id = 1108034, name = "GADGET_STATE_CHANGE_108034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_108034", action = "action_EVENT_GADGET_STATE_CHANGE_108034", trigger_count = 0 },
		{ config_id = 1108035, name = "CHALLENGE_SUCCESS_108035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_108035", trigger_count = 0 },
		{ config_id = 1108036, name = "CHALLENGE_FAIL_108036", event = EventType.EVENT_CHALLENGE_FAIL, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_FAIL_108036", trigger_count = 0 },
		{ config_id = 1108039, name = "ANY_MONSTER_DIE_108039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108039", action = "action_EVENT_ANY_MONSTER_DIE_108039" },
		{ config_id = 1108041, name = "ANY_MONSTER_DIE_108041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108041", action = "action_EVENT_ANY_MONSTER_DIE_108041" },
		{ config_id = 1108043, name = "ANY_MONSTER_DIE_108043", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108043", action = "action_EVENT_ANY_MONSTER_DIE_108043" },
		{ config_id = 1108062, name = "SELECT_OPTION_108062", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_108062", action = "action_EVENT_SELECT_OPTION_108062", trigger_count = 0 },
		{ config_id = 1108063, name = "GADGET_CREATE_108063", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_108063", action = "action_EVENT_GADGET_CREATE_108063", trigger_count = 0 },
		{ config_id = 1108064, name = "ANY_GADGET_DIE_108064", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_108064", action = "", trigger_count = 0, tag = "888" },
		{ config_id = 1108065, name = "SELECT_OPTION_108065", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_108065", action = "action_EVENT_SELECT_OPTION_108065", trigger_count = 0 }
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
		gadgets = { 108005, 108013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 108014, 108021, 108026, 108027, 108032, 108033, 108046, 108053, 108054, 108055, 108056, 108057, 108058, 108066, 108067, 108068, 108072, 108074, 108076, 108077, 108078, 108083, 108084, 108085, 108086, 108088, 108089, 108092 },
		regions = { 108037 },
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
		gadgets = { 108001, 108002, 108009, 108010, 108015, 108023, 108028, 108029, 108030, 108047, 108052, 108073, 108087 },
		regions = { 108038 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 108075 },
		gadgets = { 108003, 108004, 108006, 108007, 108008, 108011, 108012, 108016, 108017, 108024, 108031, 108048, 108049, 108050, 108051, 108079, 108080, 108081, 108082, 108103, 108104, 108105, 108106, 108107 },
		regions = { 108040 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 108019, 108020, 108025, 108044, 108045, 108059, 108060, 108061, 108069, 108070, 108071, 108090, 108091, 108095, 108098 },
		regions = { 108042 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
		monsters = { },
		gadgets = { 108093, 108094 },
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