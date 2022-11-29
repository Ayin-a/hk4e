-- 基础信息
local base_info = {
	group_id = 144002049
}

-- DEFS_MISCS
local defs = {
	group_id = 144002049, --对应的GroupID
	need_kill_hint = true,
	gadget_init = {49006, 49007},	--defs.gadget_init里按顺序填入 开启挑战机关ConfigID、 限时终点ConfigID
	challenge_time = 181, --挑战持续的时间
	gadget_suites = { 
		[4] = {49008,49016},	--suites每波需要销毁的指示路点和光柱,结构为[suite_id] = {gadget1,gadget2},id从4开始
		[5] = {49010,49017},
		[6] = {49012,49018},
	},
	suites_heraldry_loot = { --怪物死亡时刷新对应的Suites里的纹章,结构为[configid] = suiteid,
		[49002] = 7,
		[49003] = 8,
		[49004] = 9,	
		
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
	[49002] = { config_id = 49002, monster_id = 21010401, pos = { x = 457.377, y = 123.591, z = -667.282 }, rot = { x = 0.000, y = 204.939, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	[49003] = { config_id = 49003, monster_id = 21010401, pos = { x = 482.415, y = 123.766, z = -671.580 }, rot = { x = 0.000, y = 275.125, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	[49004] = { config_id = 49004, monster_id = 21010401, pos = { x = 501.601, y = 123.634, z = -635.822 }, rot = { x = 0.000, y = 202.522, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[49001] = { config_id = 49001, gadget_id = 70350277, pos = { x = 579.379, y = 120.000, z = -660.279 }, rot = { x = 0.000, y = 160.600, z = 0.000 }, level = 1, area_id = 101 },
	[49005] = { config_id = 49005, gadget_id = 70950087, pos = { x = 455.948, y = 120.000, z = -669.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49006] = { config_id = 49006, gadget_id = 70350250, pos = { x = 287.496, y = 119.946, z = -764.024 }, rot = { x = 6.230, y = 119.700, z = 356.424 }, level = 1, persistent = true, area_id = 101 },
	[49007] = { config_id = 49007, gadget_id = 70360025, pos = { x = 319.871, y = 126.392, z = -714.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49008] = { config_id = 49008, gadget_id = 70350085, pos = { x = 408.570, y = 120.000, z = -693.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49009] = { config_id = 49009, gadget_id = 70950087, pos = { x = 478.910, y = 120.000, z = -672.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49010] = { config_id = 49010, gadget_id = 70350085, pos = { x = 580.420, y = 120.000, z = -661.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49011] = { config_id = 49011, gadget_id = 70950087, pos = { x = 500.072, y = 120.000, z = -639.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49012] = { config_id = 49012, gadget_id = 70350085, pos = { x = 490.674, y = 120.000, z = -775.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49014] = { config_id = 49014, gadget_id = 70350085, pos = { x = 319.871, y = 126.392, z = -714.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49016] = { config_id = 49016, gadget_id = 70710126, pos = { x = 408.570, y = 120.000, z = -693.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49017] = { config_id = 49017, gadget_id = 70710126, pos = { x = 580.420, y = 120.000, z = -661.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49018] = { config_id = 49018, gadget_id = 70710126, pos = { x = 490.674, y = 120.000, z = -775.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49021] = { config_id = 49021, gadget_id = 70350249, pos = { x = 341.692, y = 120.000, z = -773.741 }, rot = { x = 0.000, y = 60.256, z = 0.000 }, level = 1, area_id = 101 },
	[49022] = { config_id = 49022, gadget_id = 70350249, pos = { x = 318.239, y = 120.000, z = -777.622 }, rot = { x = 0.000, y = 87.368, z = 0.000 }, level = 1, area_id = 101 },
	[49023] = { config_id = 49023, gadget_id = 70350249, pos = { x = 330.192, y = 120.000, z = -777.072 }, rot = { x = 0.000, y = 73.845, z = 0.000 }, level = 1, area_id = 101 },
	[49024] = { config_id = 49024, gadget_id = 70350256, pos = { x = 352.257, y = 123.518, z = -767.689 }, rot = { x = 0.000, y = 60.256, z = 0.000 }, level = 1, area_id = 101 },
	[49025] = { config_id = 49025, gadget_id = 70350256, pos = { x = 352.257, y = 126.175, z = -767.689 }, rot = { x = 0.000, y = 60.256, z = 0.000 }, level = 1, area_id = 101 },
	[49026] = { config_id = 49026, gadget_id = 70350249, pos = { x = 361.263, y = 120.000, z = -760.080 }, rot = { x = 0.000, y = 33.368, z = 0.000 }, level = 1, area_id = 101 },
	[49027] = { config_id = 49027, gadget_id = 70350249, pos = { x = 367.785, y = 120.000, z = -750.178 }, rot = { x = 0.000, y = 17.889, z = 0.000 }, level = 1, area_id = 101 },
	[49028] = { config_id = 49028, gadget_id = 70290057, pos = { x = 580.359, y = 120.000, z = -639.200 }, rot = { x = 0.000, y = 212.768, z = 0.000 }, level = 1, area_id = 101 },
	[49029] = { config_id = 49029, gadget_id = 70290057, pos = { x = 588.092, y = 120.000, z = -646.268 }, rot = { x = 0.000, y = 232.280, z = 0.000 }, level = 1, area_id = 101 },
	[49030] = { config_id = 49030, gadget_id = 70350249, pos = { x = 381.446, y = 120.000, z = -716.965 }, rot = { x = 0.000, y = 31.318, z = 0.000 }, level = 1, area_id = 101 },
	[49031] = { config_id = 49031, gadget_id = 70350256, pos = { x = 581.896, y = 120.000, z = -669.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49032] = { config_id = 49032, gadget_id = 70350256, pos = { x = 583.339, y = 120.000, z = -675.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49033] = { config_id = 49033, gadget_id = 70290056, pos = { x = 438.680, y = 120.000, z = -674.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49034] = { config_id = 49034, gadget_id = 70290056, pos = { x = 456.607, y = 120.000, z = -686.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49035] = { config_id = 49035, gadget_id = 70350256, pos = { x = 350.781, y = 126.175, z = -765.106 }, rot = { x = 0.000, y = 60.256, z = 0.000 }, level = 1, area_id = 101 },
	[49036] = { config_id = 49036, gadget_id = 70350256, pos = { x = 353.712, y = 126.175, z = -770.234 }, rot = { x = 0.000, y = 60.256, z = 0.000 }, level = 1, area_id = 101 },
	[49037] = { config_id = 49037, gadget_id = 70290057, pos = { x = 593.920, y = 120.000, z = -655.093 }, rot = { x = 0.000, y = 264.154, z = 0.000 }, level = 1, area_id = 101 },
	[49038] = { config_id = 49038, gadget_id = 70290057, pos = { x = 596.145, y = 120.000, z = -665.563 }, rot = { x = 0.000, y = 273.100, z = 0.000 }, level = 1, area_id = 101 },
	[49041] = { config_id = 49041, gadget_id = 70290056, pos = { x = 480.834, y = 120.000, z = -650.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49042] = { config_id = 49042, gadget_id = 70290056, pos = { x = 507.957, y = 120.000, z = -652.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49043] = { config_id = 49043, gadget_id = 70290056, pos = { x = 537.676, y = 120.000, z = -626.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49044] = { config_id = 49044, gadget_id = 70350249, pos = { x = 436.404, y = 120.000, z = -683.867 }, rot = { x = 0.000, y = 85.630, z = 0.000 }, level = 1, area_id = 101 },
	[49045] = { config_id = 49045, gadget_id = 70350249, pos = { x = 446.841, y = 120.000, z = -679.916 }, rot = { x = 0.000, y = 75.700, z = 0.000 }, level = 1, area_id = 101 },
	[49046] = { config_id = 49046, gadget_id = 70290057, pos = { x = 571.754, y = 120.000, z = -690.047 }, rot = { x = 0.000, y = 37.410, z = 0.000 }, level = 1, area_id = 101 },
	[49048] = { config_id = 49048, gadget_id = 70350249, pos = { x = 390.212, y = 120.000, z = -704.569 }, rot = { x = 0.000, y = 31.318, z = 0.000 }, level = 1, area_id = 101 },
	[49049] = { config_id = 49049, gadget_id = 70290057, pos = { x = 540.819, y = 120.000, z = -726.972 }, rot = { x = 0.000, y = 37.410, z = 0.000 }, level = 1, area_id = 101 },
	[49050] = { config_id = 49050, gadget_id = 70290057, pos = { x = 563.645, y = 120.000, z = -714.723 }, rot = { x = 0.000, y = 37.410, z = 0.000 }, level = 1, area_id = 101 },
	[49051] = { config_id = 49051, gadget_id = 70350256, pos = { x = 583.513, y = 120.000, z = -680.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49052] = { config_id = 49052, gadget_id = 70350249, pos = { x = 583.585, y = 120.000, z = -686.301 }, rot = { x = 0.000, y = 178.523, z = 0.000 }, level = 1, area_id = 101 },
	[49053] = { config_id = 49053, gadget_id = 70350249, pos = { x = 482.750, y = 120.000, z = -659.349 }, rot = { x = 0.000, y = 48.016, z = 0.000 }, level = 1, area_id = 101 },
	[49054] = { config_id = 49054, gadget_id = 70350249, pos = { x = 493.144, y = 120.000, z = -649.995 }, rot = { x = 0.000, y = 60.515, z = 0.000 }, level = 1, area_id = 101 },
	[49055] = { config_id = 49055, gadget_id = 70350249, pos = { x = 421.282, y = 120.000, z = -688.866 }, rot = { x = 0.000, y = 34.984, z = 0.000 }, level = 1, area_id = 101 },
	[49056] = { config_id = 49056, gadget_id = 70350249, pos = { x = 546.529, y = 120.000, z = -643.053 }, rot = { x = 0.000, y = 107.935, z = 0.000 }, level = 1, area_id = 101 },
	[49057] = { config_id = 49057, gadget_id = 70350249, pos = { x = 532.809, y = 120.000, z = -640.318 }, rot = { x = 0.000, y = 101.275, z = 0.000 }, level = 1, area_id = 101 },
	[49059] = { config_id = 49059, gadget_id = 70350249, pos = { x = 509.391, y = 120.000, z = -762.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49060] = { config_id = 49060, gadget_id = 70950092, pos = { x = 457.689, y = 120.000, z = -665.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49061] = { config_id = 49061, gadget_id = 70950092, pos = { x = 483.952, y = 120.000, z = -671.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49062] = { config_id = 49062, gadget_id = 70950092, pos = { x = 502.626, y = 120.000, z = -634.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49063] = { config_id = 49063, gadget_id = 70350249, pos = { x = 570.204, y = 120.000, z = -650.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49064] = { config_id = 49064, gadget_id = 70350249, pos = { x = 576.637, y = 120.000, z = -657.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49065] = { config_id = 49065, gadget_id = 70350256, pos = { x = 582.811, y = 120.000, z = -672.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49066] = { config_id = 49066, gadget_id = 70350256, pos = { x = 583.532, y = 120.000, z = -678.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49067] = { config_id = 49067, gadget_id = 70350249, pos = { x = 406.225, y = 120.000, z = -693.938 }, rot = { x = 0.000, y = 34.984, z = 0.000 }, level = 1, area_id = 101 },
	[49068] = { config_id = 49068, gadget_id = 70350249, pos = { x = 371.470, y = 120.000, z = -738.759 }, rot = { x = 0.000, y = 22.025, z = 0.000 }, level = 1, area_id = 101 },
	[49069] = { config_id = 49069, gadget_id = 70350249, pos = { x = 375.969, y = 120.000, z = -727.638 }, rot = { x = 0.000, y = 27.162, z = 0.000 }, level = 1, area_id = 101 },
	[49070] = { config_id = 49070, gadget_id = 70350249, pos = { x = 554.074, y = 120.000, z = -733.950 }, rot = { x = 0.000, y = 231.829, z = 0.000 }, level = 1, area_id = 101 },
	[49071] = { config_id = 49071, gadget_id = 70350249, pos = { x = 546.200, y = 120.000, z = -743.210 }, rot = { x = 0.000, y = 244.368, z = 0.000 }, level = 1, area_id = 101 },
	[49072] = { config_id = 49072, gadget_id = 70350249, pos = { x = 509.391, y = 120.000, z = -762.753 }, rot = { x = 0.000, y = 228.793, z = 0.000 }, level = 1, area_id = 101 },
	[49073] = { config_id = 49073, gadget_id = 70350249, pos = { x = 398.129, y = 120.000, z = -697.957 }, rot = { x = 0.000, y = 34.984, z = 0.000 }, level = 1, area_id = 101 },
	[49076] = { config_id = 49076, gadget_id = 70350249, pos = { x = 501.116, y = 120.000, z = -769.999 }, rot = { x = 0.000, y = 228.793, z = 0.000 }, level = 1, area_id = 101 },
	[49079] = { config_id = 49079, gadget_id = 70690027, pos = { x = 471.312, y = 120.000, z = -780.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49080] = { config_id = 49080, gadget_id = 70690027, pos = { x = 409.432, y = 120.098, z = -744.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49081] = { config_id = 49081, gadget_id = 70690001, pos = { x = 456.149, y = 126.622, z = -778.516 }, rot = { x = 351.793, y = 282.020, z = 0.000 }, level = 1, area_id = 101 },
	[49082] = { config_id = 49082, gadget_id = 70690001, pos = { x = 450.376, y = 127.474, z = -777.287 }, rot = { x = 358.287, y = 303.636, z = 0.000 }, level = 1, area_id = 101 },
	[49083] = { config_id = 49083, gadget_id = 70690001, pos = { x = 445.419, y = 127.652, z = -773.989 }, rot = { x = 4.012, y = 309.680, z = 0.000 }, level = 1, area_id = 101 },
	[49084] = { config_id = 49084, gadget_id = 70690001, pos = { x = 440.813, y = 127.232, z = -770.168 }, rot = { x = 5.206, y = 309.420, z = 0.000 }, level = 1, area_id = 101 },
	[49085] = { config_id = 49085, gadget_id = 70690001, pos = { x = 436.197, y = 126.688, z = -766.374 }, rot = { x = 5.676, y = 309.317, z = 0.000 }, level = 1, area_id = 101 },
	[49086] = { config_id = 49086, gadget_id = 70690001, pos = { x = 431.578, y = 126.094, z = -762.591 }, rot = { x = 5.987, y = 309.249, z = 0.000 }, level = 1, area_id = 101 },
	[49087] = { config_id = 49087, gadget_id = 70350256, pos = { x = 417.732, y = 125.029, z = -750.265 }, rot = { x = 5.987, y = 309.249, z = 0.000 }, level = 1, area_id = 101 },
	[49088] = { config_id = 49088, gadget_id = 70690001, pos = { x = 402.086, y = 127.014, z = -739.215 }, rot = { x = 355.874, y = 293.569, z = 0.000 }, level = 1, area_id = 101 },
	[49089] = { config_id = 49089, gadget_id = 70690001, pos = { x = 396.601, y = 127.446, z = -736.822 }, rot = { x = 356.201, y = 292.417, z = 0.000 }, level = 1, area_id = 101 },
	[49090] = { config_id = 49090, gadget_id = 70690001, pos = { x = 391.067, y = 127.843, z = -734.539 }, rot = { x = 356.579, y = 291.097, z = 0.000 }, level = 1, area_id = 101 },
	[49091] = { config_id = 49091, gadget_id = 70690001, pos = { x = 385.479, y = 128.201, z = -732.384 }, rot = { x = 357.089, y = 289.327, z = 0.000 }, level = 1, area_id = 101 },
	[49092] = { config_id = 49092, gadget_id = 70350277, pos = { x = 406.225, y = 120.000, z = -693.938 }, rot = { x = 0.000, y = 74.900, z = 0.000 }, level = 1, area_id = 101 },
	[49093] = { config_id = 49093, gadget_id = 70350249, pos = { x = 460.222, y = 120.000, z = -675.483 }, rot = { x = 0.000, y = 61.653, z = 0.000 }, level = 1, area_id = 101 },
	[49094] = { config_id = 49094, gadget_id = 70350249, pos = { x = 472.499, y = 120.000, z = -668.860 }, rot = { x = 0.000, y = 47.145, z = 0.000 }, level = 1, area_id = 101 },
	[49095] = { config_id = 49095, gadget_id = 70350249, pos = { x = 505.304, y = 120.000, z = -643.120 }, rot = { x = 0.000, y = 76.377, z = 0.000 }, level = 1, area_id = 101 },
	[49096] = { config_id = 49096, gadget_id = 70690001, pos = { x = 379.825, y = 128.506, z = -730.400 }, rot = { x = 358.016, y = 286.134, z = 0.000 }, level = 1, area_id = 101 },
	[49097] = { config_id = 49097, gadget_id = 70350249, pos = { x = 518.842, y = 120.000, z = -639.839 }, rot = { x = 0.000, y = 91.966, z = 0.000 }, level = 1, area_id = 101 },
	[49098] = { config_id = 49098, gadget_id = 70690001, pos = { x = 374.067, y = 128.713, z = -728.735 }, rot = { x = 1.717, y = 283.877, z = 0.000 }, level = 1, area_id = 101 },
	[49099] = { config_id = 49099, gadget_id = 70690001, pos = { x = 368.247, y = 128.534, z = -727.297 }, rot = { x = 5.909, y = 285.481, z = 0.000 }, level = 1, area_id = 101 },
	[49100] = { config_id = 49100, gadget_id = 70690001, pos = { x = 362.496, y = 127.916, z = -725.704 }, rot = { x = 7.882, y = 286.365, z = 0.000 }, level = 1, area_id = 101 },
	[49101] = { config_id = 49101, gadget_id = 70690001, pos = { x = 356.794, y = 127.093, z = -724.030 }, rot = { x = 9.020, y = 286.882, z = 0.000 }, level = 1, area_id = 101 },
	[49102] = { config_id = 49102, gadget_id = 70690001, pos = { x = 351.124, y = 126.153, z = -722.309 }, rot = { x = 9.857, y = 287.262, z = 0.000 }, level = 1, area_id = 101 },
	[49103] = { config_id = 49103, gadget_id = 70690001, pos = { x = 345.479, y = 125.126, z = -720.555 }, rot = { x = 10.544, y = 287.577, z = 0.000 }, level = 1, area_id = 101 },
	[49104] = { config_id = 49104, gadget_id = 70690001, pos = { x = 339.855, y = 124.028, z = -718.773 }, rot = { x = 10.544, y = 287.577, z = 0.000 }, level = 1, area_id = 101 },
	[49109] = { config_id = 49109, gadget_id = 70350256, pos = { x = 328.845, y = 124.144, z = -716.176 }, rot = { x = 5.987, y = 282.700, z = 0.000 }, level = 1, area_id = 101 },
	[49110] = { config_id = 49110, gadget_id = 70350256, pos = { x = 326.512, y = 124.661, z = -715.650 }, rot = { x = 5.987, y = 282.700, z = 0.000 }, level = 1, area_id = 101 },
	[49111] = { config_id = 49111, gadget_id = 70350256, pos = { x = 583.275, y = 120.000, z = -682.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[49112] = { config_id = 49112, gadget_id = 70350277, pos = { x = 286.015, y = 120.133, z = -763.179 }, rot = { x = 6.230, y = 119.700, z = 356.424 }, level = 1, area_id = 101 },
	[49113] = { config_id = 49113, gadget_id = 70350249, pos = { x = 581.356, y = 120.000, z = -697.456 }, rot = { x = 0.000, y = 216.600, z = 0.000 }, level = 1, area_id = 101 },
	[49114] = { config_id = 49114, gadget_id = 70350249, pos = { x = 554.620, y = 120.000, z = -705.019 }, rot = { x = 0.000, y = 207.935, z = 0.000 }, level = 1, area_id = 101 },
	[49125] = { config_id = 49125, gadget_id = 70350249, pos = { x = 548.187, y = 120.000, z = -717.151 }, rot = { x = 0.000, y = 161.104, z = 0.000 }, level = 1, area_id = 101 },
	[49126] = { config_id = 49126, gadget_id = 70350249, pos = { x = 528.488, y = 120.000, z = -746.324 }, rot = { x = 0.000, y = 244.368, z = 0.000 }, level = 1, area_id = 101 },
	[49131] = { config_id = 49131, gadget_id = 70350249, pos = { x = 561.674, y = 120.000, z = -646.226 }, rot = { x = 0.000, y = 107.935, z = 0.000 }, level = 1, area_id = 101 },
	[49137] = { config_id = 49137, gadget_id = 70350249, pos = { x = 517.251, y = 120.000, z = -756.426 }, rot = { x = 0.000, y = 225.600, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	[49118] = { config_id = 49118, shape = RegionShape.SPHERE, radius = 2, pos = { x = 319.871, y = 126.392, z = -714.434 }, area_id = 101 },
	[49119] = { config_id = 49119, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = 408.570, y = 120.000, z = -693.659 }, area_id = 101 },
	[49121] = { config_id = 49121, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = 580.420, y = 120.000, z = -661.770 }, area_id = 101 },
	[49123] = { config_id = 49123, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = 490.674, y = 120.000, z = -775.439 }, area_id = 101 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 人
	{ config_id = 49039, pos = { x = 283.000, y = 120.000, z = -749.893 }, rot = { x = 6.230, y = 119.700, z = 356.424 }, area_id = 101 },
	-- 船
	{ config_id = 49058, pos = { x = 277.963, y = 120.000, z = -758.587 }, rot = { x = 6.230, y = 119.700, z = 356.424 }, area_id = 101 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 49013, gadget_id = 70300114, pos = { x = 472.365, y = 120.000, z = -779.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 49015, gadget_id = 70350085, pos = { x = 280.485, y = 120.828, z = -760.025 }, rot = { x = 6.230, y = 119.700, z = 356.424 }, level = 1, area_id = 101 }
	},
	triggers = {
		{ config_id = 1049019, name = "ANY_MONSTER_DIE_49019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49019", action = "action_EVENT_ANY_MONSTER_DIE_49019", trigger_count = 0 },
		{ config_id = 1049020, name = "ANY_MONSTER_DIE_49020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49020", action = "action_EVENT_ANY_MONSTER_DIE_49020", trigger_count = 0 },
		{ config_id = 1049115, name = "GADGET_STATE_CHANGE_49115", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49115", action = "action_EVENT_GADGET_STATE_CHANGE_49115", trigger_count = 0 },
		{ config_id = 1049116, name = "CHALLENGE_SUCCESS_49116", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_49116", trigger_count = 0 },
		{ config_id = 1049117, name = "CHALLENGE_FAIL_49117", event = EventType.EVENT_CHALLENGE_FAIL, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_FAIL_49117", trigger_count = 0 },
		{ config_id = 1049120, name = "ANY_MONSTER_DIE_49120", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49120", action = "action_EVENT_ANY_MONSTER_DIE_49120" },
		{ config_id = 1049122, name = "ANY_MONSTER_DIE_49122", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49122", action = "action_EVENT_ANY_MONSTER_DIE_49122", trigger_count = 0 },
		{ config_id = 1049124, name = "ANY_MONSTER_DIE_49124", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49124", action = "action_EVENT_ANY_MONSTER_DIE_49124", trigger_count = 0 },
		{ config_id = 1049127, name = "GADGET_CREATE_49127", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_49127", action = "action_EVENT_GADGET_CREATE_49127", trigger_count = 0 },
		{ config_id = 1049128, name = "ANY_GADGET_DIE_49128", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_49128", action = "", trigger_count = 0, tag = "888" },
		{ config_id = 1049129, name = "SELECT_OPTION_49129", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_49129", action = "action_EVENT_SELECT_OPTION_49129", trigger_count = 0 },
		{ config_id = 1049130, name = "SELECT_OPTION_49130", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_49130", action = "action_EVENT_SELECT_OPTION_49130", trigger_count = 0 }
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
		gadgets = { 49006, 49112 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 49007, 49014, 49079, 49080, 49081, 49082, 49083, 49084, 49085, 49086, 49087, 49088, 49089, 49090, 49091, 49096, 49098, 49099, 49100, 49101, 49102, 49103, 49104, 49109, 49110 },
		regions = { 49118 },
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
		gadgets = { 49008, 49016, 49021, 49022, 49023, 49024, 49025, 49026, 49027, 49030, 49035, 49036, 49048, 49055, 49067, 49068, 49069, 49073, 49092 },
		regions = { 49119 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 49002, 49003, 49004 },
		gadgets = { 49001, 49005, 49009, 49010, 49011, 49017, 49028, 49029, 49033, 49034, 49037, 49038, 49041, 49042, 49043, 49044, 49045, 49053, 49054, 49056, 49057, 49063, 49064, 49093, 49094, 49095, 49097, 49131 },
		regions = { 49121 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 49012, 49018, 49046, 49049, 49050, 49052, 49059, 49070, 49071, 49072, 49076, 49113, 49114, 49125, 49126, 49137 },
		regions = { 49123 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
		monsters = { },
		gadgets = { 49031, 49065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 49032, 49066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 49051, 49111 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 49060, 49061, 49062 },
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