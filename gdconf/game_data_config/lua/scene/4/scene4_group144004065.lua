-- 基础信息
local base_info = {
	group_id = 144004065
}

-- DEFS_MISCS
local defs = {
	group_id = 144004065, --对应的GroupID
	need_kill_hint = true,
	gadget_init = {65006, 65007},	--defs.gadget_init里按顺序填入 开启挑战机关ConfigID、 限时终点ConfigID
	challenge_time = 181, --挑战持续的时间
	gadget_suites = { 
		[4] = {65008,65016},	--suites每波需要销毁的指示路点和光柱,结构为[suite_id] = {gadget1,gadget2},id从4开始
		[5] = {65010,65017},
		[6] = {65012,65018},
	},
	suites_heraldry_loot = { --怪物死亡时刷新对应的Suites里的纹章,结构为[configid] = suiteid,
		[65050] = 7,
		[65051] = 8,
		[65052] = 9,
		[65053] = 10,
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
	[65050] = { config_id = 65050, monster_id = 21010401, pos = { x = -388.202, y = 123.664, z = 30.766 }, rot = { x = 0.000, y = 255.300, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 103 },
	[65051] = { config_id = 65051, monster_id = 21010401, pos = { x = -361.698, y = 123.618, z = 7.160 }, rot = { x = 0.000, y = 276.940, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 103 },
	[65052] = { config_id = 65052, monster_id = 21010401, pos = { x = -331.200, y = 123.632, z = 24.809 }, rot = { x = 0.000, y = 278.586, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 103 },
	[65053] = { config_id = 65053, monster_id = 21010401, pos = { x = -324.875, y = 123.615, z = -1.421 }, rot = { x = 0.000, y = 315.270, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[65001] = { config_id = 65001, gadget_id = 70950092, pos = { x = -387.688, y = 120.000, z = 31.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65002] = { config_id = 65002, gadget_id = 70350249, pos = { x = -533.218, y = 120.015, z = -105.151 }, rot = { x = 359.686, y = 32.125, z = 0.000 }, level = 1, area_id = 103 },
	[65003] = { config_id = 65003, gadget_id = 70350249, pos = { x = -524.712, y = 120.103, z = -91.604 }, rot = { x = 358.901, y = 34.949, z = 0.000 }, level = 1, area_id = 103 },
	[65004] = { config_id = 65004, gadget_id = 70350249, pos = { x = -515.549, y = 120.409, z = -78.493 }, rot = { x = 1.294, y = 35.813, z = 0.000 }, level = 1, area_id = 103 },
	[65006] = { config_id = 65006, gadget_id = 70350250, pos = { x = -556.162, y = 120.000, z = -141.999 }, rot = { x = 0.000, y = 31.738, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	[65007] = { config_id = 65007, gadget_id = 70360025, pos = { x = 115.845, y = 120.345, z = -227.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[65008] = { config_id = 65008, gadget_id = 70350085, pos = { x = -443.151, y = 120.000, z = 6.577 }, rot = { x = 0.000, y = 61.013, z = 0.000 }, level = 1, area_id = 103 },
	[65009] = { config_id = 65009, gadget_id = 70950092, pos = { x = -360.858, y = 120.000, z = 5.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65010] = { config_id = 65010, gadget_id = 70350085, pos = { x = -306.487, y = 120.000, z = -1.293 }, rot = { x = 0.000, y = 137.800, z = 0.000 }, level = 1, area_id = 103 },
	[65011] = { config_id = 65011, gadget_id = 70350249, pos = { x = -496.156, y = 120.000, z = -53.062 }, rot = { x = 0.000, y = 39.153, z = 0.000 }, level = 1, area_id = 103 },
	[65012] = { config_id = 65012, gadget_id = 70350085, pos = { x = -146.589, y = 120.000, z = -97.900 }, rot = { x = 0.000, y = 163.437, z = 0.000 }, level = 1, area_id = 101 },
	[65013] = { config_id = 65013, gadget_id = 70350249, pos = { x = -486.054, y = 120.000, z = -40.654 }, rot = { x = 0.000, y = 39.212, z = 0.000 }, level = 1, area_id = 103 },
	[65014] = { config_id = 65014, gadget_id = 70350085, pos = { x = 115.845, y = 120.345, z = -227.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[65016] = { config_id = 65016, gadget_id = 70710126, pos = { x = -443.151, y = 120.000, z = 6.577 }, rot = { x = 0.000, y = 61.013, z = 0.000 }, level = 1, area_id = 103 },
	[65017] = { config_id = 65017, gadget_id = 70710126, pos = { x = -306.487, y = 120.000, z = -1.293 }, rot = { x = 0.000, y = 137.800, z = 0.000 }, level = 1, area_id = 103 },
	[65018] = { config_id = 65018, gadget_id = 70710126, pos = { x = -146.589, y = 120.000, z = -97.900 }, rot = { x = 0.000, y = 163.437, z = 0.000 }, level = 1, area_id = 101 },
	[65019] = { config_id = 65019, gadget_id = 70950092, pos = { x = -329.934, y = 120.000, z = 25.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65020] = { config_id = 65020, gadget_id = 70350249, pos = { x = -465.663, y = 120.000, z = -15.994 }, rot = { x = 0.000, y = 40.367, z = 0.000 }, level = 1, area_id = 103 },
	[65021] = { config_id = 65021, gadget_id = 70350249, pos = { x = -455.302, y = 120.000, z = -3.805 }, rot = { x = 0.000, y = 49.488, z = 0.000 }, level = 1, area_id = 103 },
	[65022] = { config_id = 65022, gadget_id = 70350249, pos = { x = -443.151, y = 120.000, z = 6.577 }, rot = { x = 0.000, y = 61.013, z = 0.000 }, level = 1, area_id = 103 },
	[65023] = { config_id = 65023, gadget_id = 70350249, pos = { x = -429.210, y = 120.000, z = 14.300 }, rot = { x = 0.000, y = 79.186, z = 0.000 }, level = 1, area_id = 103 },
	[65024] = { config_id = 65024, gadget_id = 70350249, pos = { x = -413.539, y = 120.000, z = 17.294 }, rot = { x = 0.000, y = 85.130, z = 0.000 }, level = 1, area_id = 103 },
	[65025] = { config_id = 65025, gadget_id = 70350249, pos = { x = -397.602, y = 120.000, z = 18.652 }, rot = { x = 0.000, y = 87.142, z = 0.000 }, level = 1, area_id = 103 },
	[65026] = { config_id = 65026, gadget_id = 70350249, pos = { x = -381.622, y = 120.000, z = 19.450 }, rot = { x = 0.000, y = 93.062, z = 0.000 }, level = 1, area_id = 103 },
	[65027] = { config_id = 65027, gadget_id = 70350249, pos = { x = -365.663, y = 120.000, z = 18.596 }, rot = { x = 0.000, y = 95.579, z = 0.000 }, level = 1, area_id = 103 },
	[65028] = { config_id = 65028, gadget_id = 70350249, pos = { x = -349.755, y = 120.000, z = 17.042 }, rot = { x = 0.000, y = 102.337, z = 0.000 }, level = 1, area_id = 103 },
	[65029] = { config_id = 65029, gadget_id = 70350249, pos = { x = -334.125, y = 120.000, z = 13.623 }, rot = { x = 0.000, y = 108.296, z = 0.000 }, level = 1, area_id = 103 },
	[65030] = { config_id = 65030, gadget_id = 70350249, pos = { x = -318.984, y = 120.000, z = 8.617 }, rot = { x = 0.000, y = 128.415, z = 0.000 }, level = 1, area_id = 103 },
	[65031] = { config_id = 65031, gadget_id = 70350249, pos = { x = -306.487, y = 120.000, z = -1.293 }, rot = { x = 0.000, y = 137.800, z = 0.000 }, level = 1, area_id = 103 },
	[65032] = { config_id = 65032, gadget_id = 70350258, pos = { x = -241.704, y = 120.000, z = -68.174 }, rot = { x = 0.000, y = 89.650, z = 0.000 }, level = 1, area_id = 103 },
	[65033] = { config_id = 65033, gadget_id = 70350249, pos = { x = -288.908, y = 120.000, z = -27.786 }, rot = { x = 0.000, y = 148.590, z = 0.000 }, level = 1, area_id = 103 },
	[65034] = { config_id = 65034, gadget_id = 70350249, pos = { x = -279.751, y = 120.000, z = -40.639 }, rot = { x = 0.000, y = 137.030, z = 0.000 }, level = 1, area_id = 103 },
	[65035] = { config_id = 65035, gadget_id = 70350249, pos = { x = -268.848, y = 120.000, z = -52.343 }, rot = { x = 0.000, y = 129.975, z = 0.000 }, level = 1, area_id = 103 },
	[65036] = { config_id = 65036, gadget_id = 70350249, pos = { x = -256.644, y = 120.000, z = -62.575 }, rot = { x = 0.000, y = 110.545, z = 0.000 }, level = 1, area_id = 103 },
	[65037] = { config_id = 65037, gadget_id = 70690001, pos = { x = -106.740, y = 137.635, z = -138.356 }, rot = { x = 16.093, y = 119.759, z = 0.000 }, level = 1, area_id = 101 },
	[65038] = { config_id = 65038, gadget_id = 70350249, pos = { x = -226.786, y = 120.000, z = -68.838 }, rot = { x = 0.000, y = 77.150, z = 0.000 }, level = 1, area_id = 103 },
	[65039] = { config_id = 65039, gadget_id = 70350249, pos = { x = -210.554, y = 120.000, z = -67.526 }, rot = { x = 0.000, y = 82.084, z = 0.000 }, level = 1, area_id = 103 },
	[65040] = { config_id = 65040, gadget_id = 70350249, pos = { x = -194.120, y = 120.000, z = -67.395 }, rot = { x = 0.000, y = 96.023, z = 0.000 }, level = 1, area_id = 101 },
	[65041] = { config_id = 65041, gadget_id = 70350249, pos = { x = -178.885, y = 120.000, z = -67.005 }, rot = { x = 0.000, y = 111.846, z = 0.000 }, level = 1, area_id = 101 },
	[65042] = { config_id = 65042, gadget_id = 70350249, pos = { x = -164.099, y = 120.000, z = -72.933 }, rot = { x = 0.000, y = 129.082, z = 0.000 }, level = 1, area_id = 101 },
	[65043] = { config_id = 65043, gadget_id = 70350249, pos = { x = -151.733, y = 120.000, z = -82.976 }, rot = { x = 0.000, y = 160.984, z = 0.000 }, level = 1, area_id = 101 },
	[65044] = { config_id = 65044, gadget_id = 70350249, pos = { x = -146.589, y = 120.000, z = -97.900 }, rot = { x = 0.000, y = 163.437, z = 0.000 }, level = 1, area_id = 101 },
	[65046] = { config_id = 65046, gadget_id = 70350258, pos = { x = -541.605, y = 120.000, z = -118.776 }, rot = { x = 359.947, y = 32.880, z = 0.000 }, level = 1, area_id = 103 },
	[65047] = { config_id = 65047, gadget_id = 70350258, pos = { x = -506.189, y = 120.048, z = -65.521 }, rot = { x = 0.173, y = 38.844, z = 0.000 }, level = 1, area_id = 103 },
	[65048] = { config_id = 65048, gadget_id = 70350258, pos = { x = -475.939, y = 120.000, z = -28.257 }, rot = { x = 0.000, y = 39.960, z = 0.000 }, level = 1, area_id = 103 },
	[65049] = { config_id = 65049, gadget_id = 70950092, pos = { x = -323.862, y = 120.000, z = -2.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65054] = { config_id = 65054, gadget_id = 70950087, pos = { x = -390.819, y = 120.000, z = 28.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65055] = { config_id = 65055, gadget_id = 70950087, pos = { x = -385.325, y = 120.000, z = 28.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65056] = { config_id = 65056, gadget_id = 70950087, pos = { x = -364.556, y = 120.000, z = 8.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65057] = { config_id = 65057, gadget_id = 70950087, pos = { x = -358.534, y = 120.000, z = 9.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65058] = { config_id = 65058, gadget_id = 70950087, pos = { x = -334.092, y = 120.000, z = 24.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65059] = { config_id = 65059, gadget_id = 70950087, pos = { x = -328.450, y = 120.000, z = 22.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65060] = { config_id = 65060, gadget_id = 70950087, pos = { x = -325.257, y = 120.000, z = 2.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65061] = { config_id = 65061, gadget_id = 70950087, pos = { x = -320.222, y = 120.000, z = -0.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[65062] = { config_id = 65062, gadget_id = 70350256, pos = { x = -303.436, y = 120.000, z = -4.303 }, rot = { x = 0.000, y = 123.756, z = 0.000 }, level = 1, area_id = 103 },
	[65063] = { config_id = 65063, gadget_id = 70350256, pos = { x = -301.061, y = 120.000, z = -5.890 }, rot = { x = 0.000, y = 131.613, z = 0.000 }, level = 1, area_id = 103 },
	[65064] = { config_id = 65064, gadget_id = 70350256, pos = { x = -298.927, y = 120.000, z = -7.786 }, rot = { x = 0.000, y = 138.319, z = 0.000 }, level = 1, area_id = 103 },
	[65065] = { config_id = 65065, gadget_id = 70350256, pos = { x = -297.029, y = 120.000, z = -9.917 }, rot = { x = 0.000, y = 146.607, z = 0.000 }, level = 1, area_id = 103 },
	[65066] = { config_id = 65066, gadget_id = 70350256, pos = { x = -295.462, y = 120.000, z = -12.295 }, rot = { x = 0.000, y = 151.778, z = 0.000 }, level = 1, area_id = 103 },
	[65067] = { config_id = 65067, gadget_id = 70350256, pos = { x = -294.110, y = 120.000, z = -14.813 }, rot = { x = 0.000, y = 158.109, z = 0.000 }, level = 1, area_id = 103 },
	[65068] = { config_id = 65068, gadget_id = 70350256, pos = { x = -293.047, y = 120.000, z = -17.458 }, rot = { x = 0.000, y = 167.564, z = 0.000 }, level = 1, area_id = 103 },
	[65069] = { config_id = 65069, gadget_id = 70350256, pos = { x = -292.433, y = 120.000, z = -20.246 }, rot = { x = 0.000, y = 167.564, z = 0.000 }, level = 1, area_id = 103 },
	[65071] = { config_id = 65071, gadget_id = 70350277, pos = { x = -556.932, y = 120.000, z = -144.271 }, rot = { x = 0.000, y = 31.738, z = 0.000 }, level = 1, area_id = 103 },
	[65072] = { config_id = 65072, gadget_id = 70690001, pos = { x = -99.234, y = 135.141, z = -142.648 }, rot = { x = 13.244, y = 119.065, z = 0.000 }, level = 1, area_id = 101 },
	[65073] = { config_id = 65073, gadget_id = 70350256, pos = { x = 2.146, y = 139.782, z = -177.584 }, rot = { x = 14.432, y = 148.165, z = 0.000 }, level = 1, area_id = 101 },
	[65074] = { config_id = 65074, gadget_id = 70690001, pos = { x = -91.580, y = 133.080, z = -146.902 }, rot = { x = 2.118, y = 116.480, z = 0.000 }, level = 1, area_id = 101 },
	[65075] = { config_id = 65075, gadget_id = 70690001, pos = { x = -83.540, y = 132.748, z = -150.906 }, rot = { x = 357.981, y = 115.539, z = 0.000 }, level = 1, area_id = 101 },
	[65076] = { config_id = 65076, gadget_id = 70690001, pos = { x = -75.425, y = 133.065, z = -154.784 }, rot = { x = 332.758, y = 111.138, z = 0.000 }, level = 1, area_id = 101 },
	[65077] = { config_id = 65077, gadget_id = 70690001, pos = { x = -68.185, y = 137.061, z = -157.583 }, rot = { x = 324.909, y = 109.437, z = 0.000 }, level = 1, area_id = 101 },
	[65078] = { config_id = 65078, gadget_id = 70690001, pos = { x = -61.240, y = 142.235, z = -160.034 }, rot = { x = 324.909, y = 109.437, z = 0.000 }, level = 1, area_id = 101 },
	[65079] = { config_id = 65079, gadget_id = 70690001, pos = { x = -54.296, y = 147.409, z = -162.484 }, rot = { x = 324.909, y = 109.437, z = 0.000 }, level = 1, area_id = 101 },
	[65080] = { config_id = 65080, gadget_id = 70690001, pos = { x = 7.242, y = 136.351, z = -183.346 }, rot = { x = 14.432, y = 148.165, z = 0.000 }, level = 1, area_id = 101 },
	[65081] = { config_id = 65081, gadget_id = 70690001, pos = { x = 11.839, y = 134.108, z = -190.751 }, rot = { x = 13.144, y = 147.588, z = 0.000 }, level = 1, area_id = 101 },
	[65082] = { config_id = 65082, gadget_id = 70690001, pos = { x = 16.537, y = 132.061, z = -198.149 }, rot = { x = 6.798, y = 145.643, z = 0.000 }, level = 1, area_id = 101 },
	[65083] = { config_id = 65083, gadget_id = 70690001, pos = { x = 21.559, y = 131.001, z = -205.495 }, rot = { x = 352.144, y = 143.414, z = 0.000 }, level = 1, area_id = 101 },
	[65084] = { config_id = 65084, gadget_id = 70690001, pos = { x = 26.865, y = 132.229, z = -212.645 }, rot = { x = 348.286, y = 128.869, z = 0.000 }, level = 1, area_id = 101 },
	[65085] = { config_id = 65085, gadget_id = 70690001, pos = { x = 33.628, y = 134.030, z = -218.095 }, rot = { x = 349.261, y = 100.909, z = 0.000 }, level = 1, area_id = 101 },
	[65086] = { config_id = 65086, gadget_id = 70350277, pos = { x = -443.151, y = 120.000, z = 6.577 }, rot = { x = 0.000, y = 61.013, z = 0.000 }, level = 1, area_id = 103 },
	[65087] = { config_id = 65087, gadget_id = 70690001, pos = { x = 42.305, y = 135.706, z = -219.768 }, rot = { x = 349.291, y = 98.029, z = 0.000 }, level = 1, area_id = 101 },
	[65088] = { config_id = 65088, gadget_id = 70690001, pos = { x = 51.061, y = 137.378, z = -221.003 }, rot = { x = 349.305, y = 97.202, z = 0.000 }, level = 1, area_id = 101 },
	[65089] = { config_id = 65089, gadget_id = 70690001, pos = { x = 59.835, y = 139.049, z = -222.112 }, rot = { x = 349.314, y = 96.702, z = 0.000 }, level = 1, area_id = 101 },
	[65090] = { config_id = 65090, gadget_id = 70690001, pos = { x = 68.618, y = 140.717, z = -223.144 }, rot = { x = 349.314, y = 96.702, z = 0.000 }, level = 1, area_id = 101 },
	[65091] = { config_id = 65091, gadget_id = 70690011, pos = { x = -130.000, y = 120.000, z = -127.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[65092] = { config_id = 65092, gadget_id = 70350277, pos = { x = -306.487, y = 120.000, z = -1.293 }, rot = { x = 0.000, y = 138.432, z = 0.000 }, level = 1, area_id = 103 },
	[65093] = { config_id = 65093, gadget_id = 70350256, pos = { x = 5.142, y = 137.375, z = -179.964 }, rot = { x = 14.432, y = 148.165, z = 0.000 }, level = 1, area_id = 101 },
	[65094] = { config_id = 65094, gadget_id = 70350256, pos = { x = 72.597, y = 141.473, z = -223.611 }, rot = { x = 349.314, y = 96.702, z = 0.000 }, level = 1, area_id = 101 },
	[65095] = { config_id = 65095, gadget_id = 70350256, pos = { x = 75.433, y = 141.763, z = -223.944 }, rot = { x = 349.314, y = 96.702, z = 0.000 }, level = 1, area_id = 101 },
	[65096] = { config_id = 65096, gadget_id = 70350256, pos = { x = 77.879, y = 142.167, z = -224.232 }, rot = { x = 349.314, y = 96.702, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	[65118] = { config_id = 65118, shape = RegionShape.SPHERE, radius = 2, pos = { x = 115.845, y = 120.345, z = -227.528 }, area_id = 101 },
	[65119] = { config_id = 65119, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -443.151, y = 120.000, z = 6.577 }, area_id = 103 },
	[65121] = { config_id = 65121, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -306.487, y = 120.000, z = -1.293 }, area_id = 103 },
	[65123] = { config_id = 65123, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -146.589, y = 120.000, z = -97.900 }, area_id = 101 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 人
	{ config_id = 65045, pos = { x = -573.546, y = 120.000, z = -145.737 }, rot = { x = 0.000, y = 31.738, z = 0.000 }, area_id = 103 },
	-- 船
	{ config_id = 65070, pos = { x = -562.645, y = 120.000, z = -152.479 }, rot = { x = 0.000, y = 31.738, z = 0.000 }, area_id = 103 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 65005, gadget_id = 70220013, pos = { x = -556.162, y = 120.000, z = -141.999 }, rot = { x = 0.000, y = 305.138, z = 0.000 }, level = 1, area_id = 103 },
		{ config_id = 65015, gadget_id = 70350085, pos = { x = -560.232, y = 120.000, z = -148.578 }, rot = { x = 0.000, y = 31.738, z = 0.000 }, level = 1, area_id = 103 }
	},
	triggers = {
		{ config_id = 1065115, name = "GADGET_STATE_CHANGE_65115", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65115", action = "action_EVENT_GADGET_STATE_CHANGE_65115", trigger_count = 0 },
		{ config_id = 1065116, name = "CHALLENGE_SUCCESS_65116", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_65116", trigger_count = 0 },
		{ config_id = 1065117, name = "CHALLENGE_FAIL_65117", event = EventType.EVENT_CHALLENGE_FAIL, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_FAIL_65117", trigger_count = 0 },
		{ config_id = 1065127, name = "GADGET_CREATE_65127", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_65127", action = "action_EVENT_GADGET_CREATE_65127", trigger_count = 0 },
		{ config_id = 1065128, name = "ANY_GADGET_DIE_65128", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65128", action = "", trigger_count = 0, tag = "888" },
		{ config_id = 1065129, name = "SELECT_OPTION_65129", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_65129", action = "action_EVENT_SELECT_OPTION_65129", trigger_count = 0 },
		{ config_id = 1065130, name = "SELECT_OPTION_65130", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_65130", action = "action_EVENT_SELECT_OPTION_65130", trigger_count = 0 }
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
		gadgets = { 65006, 65071 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 65007, 65014, 65037, 65072, 65073, 65074, 65075, 65076, 65077, 65078, 65079, 65080, 65081, 65082, 65083, 65084, 65085, 65087, 65088, 65089, 65090, 65091, 65093, 65094, 65095, 65096 },
		regions = { 65118 },
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
		gadgets = { 65002, 65003, 65004, 65008, 65011, 65013, 65016, 65020, 65021, 65022, 65023, 65046, 65047, 65048, 65086 },
		regions = { 65119 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 65050, 65051, 65052, 65053 },
		gadgets = { 65001, 65009, 65010, 65017, 65019, 65024, 65025, 65026, 65027, 65028, 65029, 65030, 65031, 65049, 65054, 65055, 65056, 65057, 65058, 65059, 65060, 65061, 65092 },
		regions = { 65121 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 65012, 65018, 65032, 65033, 65034, 65035, 65036, 65038, 65039, 65040, 65041, 65042, 65043, 65044 },
		regions = { 65123 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 65062, 65063 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 65064, 65065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 65066, 65067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 65068, 65069 },
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