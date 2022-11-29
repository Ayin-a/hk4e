-- 基础信息
local base_info = {
	group_id = 144004063
}

-- DEFS_MISCS
local defs = {
	group_id = 144004063, --对应的GroupID
	need_kill_hint = true,
	gadget_init = {63006, 63007},	--defs.gadget_init里按顺序填入 开启挑战机关ConfigID、 限时终点ConfigID
	challenge_time = 181, --挑战持续的时间
	gadget_suites = { 
		[4] = {63008,63016},	--suites每波需要销毁的指示路点和光柱,结构为[suite_id] = {gadget1,gadget2},id从4开始
		[5] = {63010,63017},
		[6] = {63012,63018},
	},
	suites_heraldry_loot = { --怪物死亡时刷新对应的Suites里的纹章,结构为[configid] = suiteid,
		[63001] = 7,
		[63003] = 8,
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
	[63001] = { config_id = 63001, monster_id = 21010401, pos = { x = -325.984, y = 123.723, z = -430.830 }, rot = { x = 0.000, y = 50.796, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 101 },
	[63003] = { config_id = 63003, monster_id = 21010901, pos = { x = -425.674, y = 123.670, z = -256.593 }, rot = { x = 0.000, y = 102.557, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[63004] = { config_id = 63004, gadget_id = 70350258, pos = { x = -240.528, y = 120.000, z = -442.293 }, rot = { x = 0.000, y = 289.600, z = 0.000 }, level = 1, area_id = 101 },
	[63006] = { config_id = 63006, gadget_id = 70350250, pos = { x = -193.424, y = 120.000, z = -466.225 }, rot = { x = 0.000, y = 297.500, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	[63007] = { config_id = 63007, gadget_id = 70360025, pos = { x = -610.954, y = 129.563, z = 81.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[63008] = { config_id = 63008, gadget_id = 70350085, pos = { x = -332.614, y = 120.000, z = -418.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[63009] = { config_id = 63009, gadget_id = 70290057, pos = { x = -439.803, y = 120.000, z = -385.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	[63010] = { config_id = 63010, gadget_id = 70350085, pos = { x = -413.240, y = 120.000, z = -245.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	[63011] = { config_id = 63011, gadget_id = 70290057, pos = { x = -451.194, y = 120.000, z = -385.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	[63012] = { config_id = 63012, gadget_id = 70350085, pos = { x = -509.644, y = 120.000, z = -114.719 }, rot = { x = 0.000, y = 14.020, z = 0.000 }, level = 1, area_id = 103 },
	[63013] = { config_id = 63013, gadget_id = 70350249, pos = { x = -254.898, y = 120.000, z = -435.258 }, rot = { x = 0.000, y = 293.478, z = 0.000 }, level = 1, area_id = 101 },
	[63014] = { config_id = 63014, gadget_id = 70350085, pos = { x = -610.954, y = 129.563, z = 81.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[63016] = { config_id = 63016, gadget_id = 70710126, pos = { x = -332.614, y = 120.000, z = -418.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[63017] = { config_id = 63017, gadget_id = 70710126, pos = { x = -413.240, y = 120.000, z = -245.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	[63018] = { config_id = 63018, gadget_id = 70710126, pos = { x = -509.644, y = 120.000, z = -114.719 }, rot = { x = 0.000, y = 14.020, z = 0.000 }, level = 1, area_id = 103 },
	[63021] = { config_id = 63021, gadget_id = 70350256, pos = { x = -341.169, y = 120.000, z = -418.544 }, rot = { x = 0.000, y = 281.076, z = 0.000 }, level = 1, area_id = 101 },
	[63023] = { config_id = 63023, gadget_id = 70350277, pos = { x = -191.131, y = 120.000, z = -467.721 }, rot = { x = 0.000, y = 297.500, z = 0.000 }, level = 1, area_id = 101 },
	[63026] = { config_id = 63026, gadget_id = 70350277, pos = { x = -328.884, y = 120.000, z = -419.501 }, rot = { x = 359.986, y = 276.223, z = 0.000 }, level = 1, area_id = 101 },
	[63027] = { config_id = 63027, gadget_id = 70350256, pos = { x = -305.483, y = 120.000, z = -421.560 }, rot = { x = 0.000, y = 277.064, z = 0.000 }, level = 1, area_id = 101 },
	[63029] = { config_id = 63029, gadget_id = 70350249, pos = { x = -212.094, y = 120.000, z = -456.972 }, rot = { x = 0.000, y = 297.609, z = 0.000 }, level = 1, area_id = 101 },
	[63030] = { config_id = 63030, gadget_id = 70350249, pos = { x = -226.272, y = 120.000, z = -449.557 }, rot = { x = 0.000, y = 297.004, z = 0.000 }, level = 1, area_id = 101 },
	[63031] = { config_id = 63031, gadget_id = 70950092, pos = { x = -326.958, y = 120.000, z = -432.556 }, rot = { x = 0.000, y = 301.500, z = 0.000 }, level = 1, area_id = 101 },
	[63032] = { config_id = 63032, gadget_id = 70950092, pos = { x = -427.634, y = 120.000, z = -256.097 }, rot = { x = 0.000, y = 257.277, z = 0.000 }, level = 1, area_id = 100 },
	[63033] = { config_id = 63033, gadget_id = 70350277, pos = { x = -411.661, y = 120.000, z = -249.529 }, rot = { x = 0.000, y = 344.377, z = 0.000 }, level = 1, area_id = 100 },
	[63034] = { config_id = 63034, gadget_id = 70350258, pos = { x = -380.288, y = 120.011, z = -413.124 }, rot = { x = -0.001, y = 278.081, z = 0.000 }, level = 1, area_id = 100 },
	[63035] = { config_id = 63035, gadget_id = 70350249, pos = { x = -269.568, y = 120.000, z = -428.886 }, rot = { x = 0.000, y = 283.446, z = 0.000 }, level = 1, area_id = 101 },
	[63036] = { config_id = 63036, gadget_id = 70350256, pos = { x = -428.274, y = 119.846, z = -407.063 }, rot = { x = 0.549, y = 275.125, z = 0.000 }, level = 1, area_id = 100 },
	[63037] = { config_id = 63037, gadget_id = 70350249, pos = { x = -427.143, y = 120.000, z = -200.029 }, rot = { x = 0.000, y = 338.390, z = 0.000 }, level = 1, area_id = 103 },
	[63038] = { config_id = 63038, gadget_id = 70350249, pos = { x = -316.721, y = 120.000, z = -420.176 }, rot = { x = -0.002, y = 273.900, z = 0.000 }, level = 1, area_id = 101 },
	[63040] = { config_id = 63040, gadget_id = 70350256, pos = { x = -457.621, y = 120.012, z = -346.015 }, rot = { x = 0.018, y = 35.934, z = 0.000 }, level = 1, area_id = 100 },
	[63041] = { config_id = 63041, gadget_id = 70350256, pos = { x = -419.030, y = 120.000, z = -224.310 }, rot = { x = 0.000, y = 342.463, z = 0.000 }, level = 1, area_id = 103 },
	[63042] = { config_id = 63042, gadget_id = 70350256, pos = { x = -351.818, y = 120.000, z = -416.459 }, rot = { x = 0.000, y = 281.076, z = 0.000 }, level = 1, area_id = 100 },
	[63044] = { config_id = 63044, gadget_id = 70350249, pos = { x = -411.956, y = 120.002, z = -408.526 }, rot = { x = 0.549, y = 275.125, z = 0.000 }, level = 1, area_id = 100 },
	[63045] = { config_id = 63045, gadget_id = 70350249, pos = { x = -445.133, y = 120.000, z = -163.230 }, rot = { x = 0.000, y = 326.193, z = 0.000 }, level = 1, area_id = 103 },
	[63046] = { config_id = 63046, gadget_id = 70350249, pos = { x = -443.845, y = 119.673, z = -405.961 }, rot = { x = 0.635, y = 274.220, z = 0.000 }, level = 1, area_id = 100 },
	[63047] = { config_id = 63047, gadget_id = 70350249, pos = { x = -324.931, y = 120.000, z = -419.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[63048] = { config_id = 63048, gadget_id = 70950087, pos = { x = -423.882, y = 120.000, z = -252.308 }, rot = { x = 0.000, y = 14.127, z = 0.000 }, level = 1, area_id = 100 },
	[63049] = { config_id = 63049, gadget_id = 70350249, pos = { x = -459.801, y = 119.495, z = -404.783 }, rot = { x = 0.614, y = 274.885, z = 0.000 }, level = 1, area_id = 100 },
	[63050] = { config_id = 63050, gadget_id = 70350249, pos = { x = -475.741, y = 119.324, z = -403.421 }, rot = { x = 359.221, y = 285.217, z = 0.000 }, level = 1, area_id = 100 },
	[63051] = { config_id = 63051, gadget_id = 70350249, pos = { x = -454.035, y = 120.000, z = -149.936 }, rot = { x = 0.000, y = 321.281, z = 0.000 }, level = 1, area_id = 103 },
	[63052] = { config_id = 63052, gadget_id = 70350249, pos = { x = -490.841, y = 119.536, z = -399.314 }, rot = { x = 358.200, y = 20.152, z = 0.000 }, level = 1, area_id = 100 },
	[63053] = { config_id = 63053, gadget_id = 70350249, pos = { x = -485.595, y = 120.015, z = -385.019 }, rot = { x = 359.990, y = 35.104, z = 0.000 }, level = 1, area_id = 100 },
	[63054] = { config_id = 63054, gadget_id = 70350249, pos = { x = -476.394, y = 120.018, z = -371.930 }, rot = { x = 0.007, y = 35.820, z = 0.000 }, level = 1, area_id = 100 },
	[63055] = { config_id = 63055, gadget_id = 70350249, pos = { x = -467.030, y = 120.016, z = -358.956 }, rot = { x = 0.014, y = 36.022, z = 0.000 }, level = 1, area_id = 100 },
	[63057] = { config_id = 63057, gadget_id = 70350249, pos = { x = -396.129, y = 120.011, z = -410.875 }, rot = { x = 0.030, y = 278.441, z = 0.000 }, level = 1, area_id = 100 },
	[63058] = { config_id = 63058, gadget_id = 70350249, pos = { x = -439.031, y = 120.001, z = -319.971 }, rot = { x = 0.003, y = 25.158, z = 0.000 }, level = 1, area_id = 100 },
	[63059] = { config_id = 63059, gadget_id = 70350249, pos = { x = -432.240, y = 120.000, z = -305.512 }, rot = { x = 0.000, y = 23.408, z = 0.000 }, level = 1, area_id = 100 },
	[63060] = { config_id = 63060, gadget_id = 70350249, pos = { x = -425.884, y = 120.000, z = -290.828 }, rot = { x = 0.000, y = 22.915, z = 0.000 }, level = 1, area_id = 100 },
	[63061] = { config_id = 63061, gadget_id = 70350249, pos = { x = -464.005, y = 120.000, z = -137.500 }, rot = { x = 0.000, y = 312.430, z = 0.000 }, level = 1, area_id = 103 },
	[63062] = { config_id = 63062, gadget_id = 70350249, pos = { x = -332.665, y = 120.001, z = -418.086 }, rot = { x = 359.986, y = 276.223, z = 0.000 }, level = 1, area_id = 101 },
	[63063] = { config_id = 63063, gadget_id = 70350258, pos = { x = -439.975, y = 120.000, z = -170.748 }, rot = { x = 0.000, y = 322.000, z = 0.000 }, level = 1, area_id = 103 },
	[63064] = { config_id = 63064, gadget_id = 70350249, pos = { x = -413.720, y = 120.000, z = -261.233 }, rot = { x = 0.000, y = 3.749, z = 0.000 }, level = 1, area_id = 100 },
	[63065] = { config_id = 63065, gadget_id = 70690027, pos = { x = -532.653, y = 120.000, z = -105.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[63066] = { config_id = 63066, gadget_id = 70350249, pos = { x = -432.031, y = 120.000, z = -184.671 }, rot = { x = 0.000, y = 334.278, z = 0.000 }, level = 1, area_id = 103 },
	[63067] = { config_id = 63067, gadget_id = 70690027, pos = { x = -529.199, y = 120.000, z = -27.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[63068] = { config_id = 63068, gadget_id = 70690027, pos = { x = -597.216, y = 120.000, z = 16.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[63069] = { config_id = 63069, gadget_id = 70690001, pos = { x = -531.285, y = 127.343, z = -97.124 }, rot = { x = 1.437, y = 2.455, z = 0.000 }, level = 1, area_id = 103 },
	[63070] = { config_id = 63070, gadget_id = 70350256, pos = { x = -423.868, y = 120.000, z = -209.000 }, rot = { x = 0.000, y = 342.463, z = 0.000 }, level = 1, area_id = 103 },
	[63071] = { config_id = 63071, gadget_id = 70350256, pos = { x = -475.814, y = 120.000, z = -126.705 }, rot = { x = 0.000, y = 297.664, z = 0.000 }, level = 1, area_id = 103 },
	[63072] = { config_id = 63072, gadget_id = 70350256, pos = { x = -489.736, y = 120.000, z = -119.407 }, rot = { x = 0.000, y = 297.664, z = 0.000 }, level = 1, area_id = 103 },
	[63078] = { config_id = 63078, gadget_id = 70350256, pos = { x = -289.674, y = 120.000, z = -424.024 }, rot = { x = 0.000, y = 278.858, z = 0.000 }, level = 1, area_id = 101 },
	[63082] = { config_id = 63082, gadget_id = 70350256, pos = { x = -419.654, y = 120.000, z = -276.091 }, rot = { x = 0.000, y = 21.771, z = 0.000 }, level = 1, area_id = 100 },
	[63083] = { config_id = 63083, gadget_id = 70350258, pos = { x = -448.231, y = 120.007, z = -333.060 }, rot = { x = 0.020, y = 24.200, z = 0.000 }, level = 1, area_id = 100 },
	[63087] = { config_id = 63087, gadget_id = 70690001, pos = { x = -530.900, y = 127.117, z = -88.136 }, rot = { x = 1.437, y = 2.454, z = 0.000 }, level = 1, area_id = 103 },
	[63093] = { config_id = 63093, gadget_id = 70690001, pos = { x = -530.514, y = 126.892, z = -79.147 }, rot = { x = 1.437, y = 2.455, z = 0.000 }, level = 1, area_id = 103 },
	[63094] = { config_id = 63094, gadget_id = 70690001, pos = { x = -530.129, y = 126.666, z = -70.158 }, rot = { x = 1.437, y = 2.454, z = 0.000 }, level = 1, area_id = 103 },
	[63095] = { config_id = 63095, gadget_id = 70690001, pos = { x = -529.744, y = 126.440, z = -61.169 }, rot = { x = 1.437, y = 2.455, z = 0.000 }, level = 1, area_id = 103 },
	[63098] = { config_id = 63098, gadget_id = 70950087, pos = { x = -424.962, y = 120.000, z = -260.820 }, rot = { x = 0.000, y = 14.127, z = 0.000 }, level = 1, area_id = 100 },
	[63101] = { config_id = 63101, gadget_id = 70690001, pos = { x = -529.358, y = 126.215, z = -52.180 }, rot = { x = 1.437, y = 2.455, z = 0.000 }, level = 1, area_id = 103 },
	[63102] = { config_id = 63102, gadget_id = 70690001, pos = { x = -528.973, y = 125.989, z = -43.191 }, rot = { x = 1.437, y = 2.455, z = 0.000 }, level = 1, area_id = 103 },
	[63103] = { config_id = 63103, gadget_id = 70690001, pos = { x = -536.958, y = 126.945, z = -21.192 }, rot = { x = 1.541, y = 302.279, z = 0.000 }, level = 1, area_id = 103 },
	[63104] = { config_id = 63104, gadget_id = 70690001, pos = { x = -544.565, y = 126.703, z = -16.387 }, rot = { x = 1.541, y = 302.279, z = 0.000 }, level = 1, area_id = 103 },
	[63105] = { config_id = 63105, gadget_id = 70690001, pos = { x = -552.171, y = 126.461, z = -11.583 }, rot = { x = 1.541, y = 302.279, z = 0.000 }, level = 1, area_id = 103 },
	[63106] = { config_id = 63106, gadget_id = 70690001, pos = { x = -559.777, y = 126.219, z = -6.778 }, rot = { x = 1.541, y = 302.279, z = 0.000 }, level = 1, area_id = 103 },
	[63107] = { config_id = 63107, gadget_id = 70690001, pos = { x = -567.384, y = 125.977, z = -1.973 }, rot = { x = 1.541, y = 302.279, z = 0.000 }, level = 1, area_id = 103 },
	[63108] = { config_id = 63108, gadget_id = 70690001, pos = { x = -574.990, y = 125.735, z = 2.831 }, rot = { x = 1.541, y = 302.279, z = 0.000 }, level = 1, area_id = 103 },
	[63109] = { config_id = 63109, gadget_id = 70690001, pos = { x = -582.597, y = 125.493, z = 7.636 }, rot = { x = 1.541, y = 302.279, z = 0.000 }, level = 1, area_id = 103 },
	[63110] = { config_id = 63110, gadget_id = 70690001, pos = { x = -603.120, y = 127.314, z = 25.162 }, rot = { x = 2.118, y = 349.114, z = 0.157 }, level = 1, area_id = 103 },
	[63111] = { config_id = 63111, gadget_id = 70690001, pos = { x = -604.819, y = 126.981, z = 33.994 }, rot = { x = 2.118, y = 349.114, z = 0.157 }, level = 1, area_id = 103 },
	[63112] = { config_id = 63112, gadget_id = 70690001, pos = { x = -606.517, y = 126.649, z = 42.826 }, rot = { x = 2.118, y = 349.114, z = 0.157 }, level = 1, area_id = 103 },
	[63113] = { config_id = 63113, gadget_id = 70690001, pos = { x = -608.216, y = 126.316, z = 51.658 }, rot = { x = 2.118, y = 349.114, z = 0.157 }, level = 1, area_id = 103 },
	[63114] = { config_id = 63114, gadget_id = 70690001, pos = { x = -609.914, y = 125.983, z = 60.490 }, rot = { x = 2.118, y = 349.114, z = 0.157 }, level = 1, area_id = 103 },
	[63132] = { config_id = 63132, gadget_id = 70350256, pos = { x = -529.199, y = 127.367, z = -27.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[63133] = { config_id = 63133, gadget_id = 70950087, pos = { x = -328.654, y = 120.000, z = -428.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[63134] = { config_id = 63134, gadget_id = 70950087, pos = { x = -322.654, y = 120.000, z = -430.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[63135] = { config_id = 63135, gadget_id = 70350256, pos = { x = -597.216, y = 127.452, z = 16.746 }, rot = { x = 0.000, y = 316.510, z = 0.000 }, level = 1, area_id = 103 },
	[63138] = { config_id = 63138, gadget_id = 70950087, pos = { x = -472.708, y = 120.000, z = -390.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
	[63118] = { config_id = 63118, shape = RegionShape.SPHERE, radius = 2, pos = { x = -610.954, y = 129.563, z = 81.702 }, area_id = 103 },
	[63119] = { config_id = 63119, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -332.614, y = 120.000, z = -418.111 }, area_id = 101 },
	[63121] = { config_id = 63121, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -413.240, y = 120.000, z = -245.841 }, area_id = 100 },
	[63123] = { config_id = 63123, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -509.644, y = 120.000, z = -114.719 }, area_id = 103 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 人
	{ config_id = 63022, pos = { x = -187.471, y = 120.000, z = -481.672 }, rot = { x = 0.000, y = 297.500, z = 0.000 }, area_id = 101 },
	-- 船
	{ config_id = 63139, pos = { x = -182.413, y = 120.000, z = -471.957 }, rot = { x = 0.000, y = 297.500, z = 0.000 }, area_id = 101 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 63005, gadget_id = 70220013, pos = { x = -185.917, y = 120.000, z = -470.133 }, rot = { x = 0.000, y = 297.500, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 63015, gadget_id = 70350085, pos = { x = -193.424, y = 120.000, z = -466.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
	},
	triggers = {
		{ config_id = 1063002, name = "ANY_MONSTER_DIE_63002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63002", action = "action_EVENT_ANY_MONSTER_DIE_63002", trigger_count = 0 },
		{ config_id = 1063019, name = "ANY_MONSTER_DIE_63019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63019", action = "action_EVENT_ANY_MONSTER_DIE_63019", trigger_count = 0 },
		{ config_id = 1063020, name = "ANY_MONSTER_DIE_63020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63020", action = "action_EVENT_ANY_MONSTER_DIE_63020", trigger_count = 0 },
		{ config_id = 1063115, name = "GADGET_STATE_CHANGE_63115", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_63115", action = "action_EVENT_GADGET_STATE_CHANGE_63115", trigger_count = 0 },
		{ config_id = 1063116, name = "CHALLENGE_SUCCESS_63116", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_63116", trigger_count = 0 },
		{ config_id = 1063117, name = "CHALLENGE_FAIL_63117", event = EventType.EVENT_CHALLENGE_FAIL, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_FAIL_63117", trigger_count = 0 },
		{ config_id = 1063127, name = "GADGET_CREATE_63127", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_63127", action = "action_EVENT_GADGET_CREATE_63127", trigger_count = 0 },
		{ config_id = 1063128, name = "ANY_GADGET_DIE_63128", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_63128", action = "", trigger_count = 0, tag = "888" },
		{ config_id = 1063129, name = "SELECT_OPTION_63129", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_63129", action = "action_EVENT_SELECT_OPTION_63129", trigger_count = 0 },
		{ config_id = 1063130, name = "SELECT_OPTION_63130", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_63130", action = "action_EVENT_SELECT_OPTION_63130", trigger_count = 0 }
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
		gadgets = { 63006, 63023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 63007, 63014, 63065, 63067, 63068, 63069, 63087, 63093, 63094, 63095, 63101, 63102, 63103, 63104, 63105, 63106, 63107, 63108, 63109, 63110, 63111, 63112, 63113, 63114, 63132, 63135 },
		regions = { 63118 },
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
		monsters = { 63001 },
		gadgets = { 63004, 63008, 63013, 63016, 63026, 63027, 63029, 63030, 63031, 63035, 63038, 63047, 63062, 63078, 63133, 63134 },
		regions = { 63119 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 63003 },
		gadgets = { 63009, 63010, 63011, 63017, 63032, 63033, 63034, 63036, 63040, 63044, 63046, 63048, 63049, 63050, 63052, 63053, 63054, 63055, 63057, 63058, 63059, 63060, 63064, 63082, 63083, 63098, 63138 },
		regions = { 63121 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 63012, 63018, 63037, 63045, 63051, 63061, 63063, 63066, 63071, 63072 },
		regions = { 63123 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
		monsters = { },
		gadgets = { 63021, 63042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 63041, 63070 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
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