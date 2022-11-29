-- 基础信息
local base_info = {
	group_id = 133113008
}

-- DEFS_MISCS
local defs = {
	group_id = 133113008, --对应的GroupID
	need_kill_hint = true,
	gadget_init = {8006, 8007},	--defs.gadget_init里按顺序填入 开启挑战机关ConfigID、 限时终点ConfigID
	challenge_time = 181, --挑战持续的时间
	gadget_suites = { 
		[4] = {8008,8016},	--suites每波需要销毁的指示路点和光柱,结构为[suite_id] = {gadget1,gadget2},id从4开始
		[5] = {8010,8017},
		[6] = {8012,8018},
	},
	suites_heraldry_loot = { --怪物死亡时刷新对应的Suites里的纹章,结构为[configid] = suiteid,
		[8002] = 7,
		[8003] = 8,
		[8004] = 9,
	
		
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
	[8001] = { config_id = 8001, monster_id = 21010401, pos = { x = -536.090, y = 203.820, z = -1323.399 }, rot = { x = 0.000, y = 349.893, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 16 },
	[8002] = { config_id = 8002, monster_id = 21010401, pos = { x = -561.388, y = 203.743, z = -1333.907 }, rot = { x = 0.000, y = 60.079, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 16 },
	[8003] = { config_id = 8003, monster_id = 21010401, pos = { x = -554.502, y = 203.869, z = -1375.001 }, rot = { x = 0.000, y = 347.476, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 16 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[8004] = { config_id = 8004, gadget_id = 70350277, pos = { x = -632.097, y = 200.000, z = -1398.129 }, rot = { x = 0.000, y = 305.554, z = 0.000 }, level = 1, area_id = 16 },
	[8005] = { config_id = 8005, gadget_id = 70950087, pos = { x = -536.330, y = 200.000, z = -1319.722 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8006] = { config_id = 8006, gadget_id = 70350250, pos = { x = -452.708, y = 200.000, z = -1145.585 }, rot = { x = 0.000, y = 264.654, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[8007] = { config_id = 8007, gadget_id = 70360025, pos = { x = -421.154, y = 213.368, z = -1128.842 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 7 },
	[8008] = { config_id = 8008, gadget_id = 70350085, pos = { x = -511.425, y = 200.000, z = -1272.717 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 7 },
	[8009] = { config_id = 8009, gadget_id = 70950087, pos = { x = -556.717, y = 200.000, z = -1330.644 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8010] = { config_id = 8010, gadget_id = 70350085, pos = { x = -633.804, y = 200.000, z = -1397.507 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8011] = { config_id = 8011, gadget_id = 70950087, pos = { x = -555.145, y = 200.000, z = -1369.738 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8012] = { config_id = 8012, gadget_id = 70350085, pos = { x = -625.603, y = 200.000, z = -1252.912 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8014] = { config_id = 8014, gadget_id = 70350085, pos = { x = -421.154, y = 213.368, z = -1128.842 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 7 },
	[8015] = { config_id = 8015, gadget_id = 70950087, pos = { x = -539.598, y = 200.000, z = -1322.754 }, rot = { x = 0.000, y = 151.950, z = 0.000 }, level = 1, area_id = 16 },
	[8016] = { config_id = 8016, gadget_id = 70710126, pos = { x = -511.425, y = 200.000, z = -1272.717 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 7 },
	[8017] = { config_id = 8017, gadget_id = 70710126, pos = { x = -633.804, y = 200.000, z = -1397.507 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8018] = { config_id = 8018, gadget_id = 70710126, pos = { x = -625.603, y = 200.000, z = -1252.912 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8019] = { config_id = 8019, gadget_id = 70350249, pos = { x = -502.658, y = 200.000, z = -1168.750 }, rot = { x = 0.000, y = 205.210, z = 0.000 }, level = 1, area_id = 7 },
	[8020] = { config_id = 8020, gadget_id = 70350249, pos = { x = -485.686, y = 200.000, z = -1152.106 }, rot = { x = 0.000, y = 232.322, z = 0.000 }, level = 1, area_id = 7 },
	[8021] = { config_id = 8021, gadget_id = 70350249, pos = { x = -495.156, y = 200.000, z = -1159.420 }, rot = { x = 0.000, y = 218.799, z = 0.000 }, level = 1, area_id = 7 },
	[8022] = { config_id = 8022, gadget_id = 70350256, pos = { x = -507.832, y = 200.000, z = -1179.773 }, rot = { x = 0.000, y = 205.210, z = 0.000 }, level = 1, area_id = 7 },
	[8023] = { config_id = 8023, gadget_id = 70350256, pos = { x = -509.562, y = 200.000, z = -1183.279 }, rot = { x = 0.000, y = 205.210, z = 0.000 }, level = 1, area_id = 7 },
	[8024] = { config_id = 8024, gadget_id = 70350249, pos = { x = -510.836, y = 200.000, z = -1191.174 }, rot = { x = 0.000, y = 178.322, z = 0.000 }, level = 1, area_id = 7 },
	[8025] = { config_id = 8025, gadget_id = 70350249, pos = { x = -510.489, y = 200.000, z = -1203.026 }, rot = { x = 0.000, y = 162.842, z = 0.000 }, level = 1, area_id = 7 },
	[8026] = { config_id = 8026, gadget_id = 70290057, pos = { x = -620.776, y = 200.000, z = -1415.879 }, rot = { x = 0.000, y = 357.722, z = 0.000 }, level = 1, area_id = 16 },
	[8027] = { config_id = 8027, gadget_id = 70290057, pos = { x = -631.147, y = 200.000, z = -1414.550 }, rot = { x = 0.000, y = 17.234, z = 0.000 }, level = 1, area_id = 16 },
	[8028] = { config_id = 8028, gadget_id = 70350249, pos = { x = -502.601, y = 200.000, z = -1238.060 }, rot = { x = 0.000, y = 176.272, z = 0.000 }, level = 1, area_id = 7 },
	[8029] = { config_id = 8029, gadget_id = 70350256, pos = { x = -639.263, y = 200.000, z = -1392.294 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8030] = { config_id = 8030, gadget_id = 70350256, pos = { x = -644.096, y = 200.000, z = -1387.917 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8031] = { config_id = 8031, gadget_id = 70290056, pos = { x = -524.862, y = 200.000, z = -1305.994 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8032] = { config_id = 8032, gadget_id = 70290056, pos = { x = -546.457, y = 200.000, z = -1306.424 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8033] = { config_id = 8033, gadget_id = 70350256, pos = { x = -505.140, y = 200.000, z = -1181.040 }, rot = { x = 0.000, y = 205.210, z = 0.000 }, level = 1, area_id = 7 },
	[8034] = { config_id = 8034, gadget_id = 70350256, pos = { x = -510.485, y = 200.000, z = -1178.523 }, rot = { x = 0.000, y = 205.210, z = 0.000 }, level = 1, area_id = 7 },
	[8035] = { config_id = 8035, gadget_id = 70290057, pos = { x = -640.954, y = 200.000, z = -1410.700 }, rot = { x = 0.000, y = 49.108, z = 0.000 }, level = 1, area_id = 16 },
	[8036] = { config_id = 8036, gadget_id = 70290057, pos = { x = -648.813, y = 200.000, z = -1403.414 }, rot = { x = 0.000, y = 58.054, z = 0.000 }, level = 1, area_id = 16 },
	[8037] = { config_id = 8037, gadget_id = 70290056, pos = { x = -545.536, y = 200.000, z = -1349.929 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8038] = { config_id = 8038, gadget_id = 70290056, pos = { x = -569.114, y = 200.000, z = -1363.546 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8039] = { config_id = 8039, gadget_id = 70290056, pos = { x = -578.571, y = 200.000, z = -1401.818 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8040] = { config_id = 8040, gadget_id = 70350249, pos = { x = -528.589, y = 200.000, z = -1296.717 }, rot = { x = 0.000, y = 230.584, z = 0.000 }, level = 1, area_id = 16 },
	[8041] = { config_id = 8041, gadget_id = 70350249, pos = { x = -534.865, y = 200.000, z = -1305.946 }, rot = { x = 0.000, y = 220.654, z = 0.000 }, level = 1, area_id = 16 },
	[8042] = { config_id = 8042, gadget_id = 70290057, pos = { x = -642.967, y = 200.000, z = -1369.427 }, rot = { x = 0.000, y = 182.364, z = 0.000 }, level = 1, area_id = 16 },
	[8043] = { config_id = 8043, gadget_id = 70350249, pos = { x = -502.660, y = 200.000, z = -1253.243 }, rot = { x = 0.000, y = 176.272, z = 0.000 }, level = 1, area_id = 7 },
	[8044] = { config_id = 8044, gadget_id = 70290057, pos = { x = -638.850, y = 200.000, z = -1321.438 }, rot = { x = 0.000, y = 182.364, z = 0.000 }, level = 1, area_id = 16 },
	[8045] = { config_id = 8045, gadget_id = 70290057, pos = { x = -650.498, y = 200.000, z = -1344.574 }, rot = { x = 0.000, y = 182.364, z = 0.000 }, level = 1, area_id = 16 },
	[8046] = { config_id = 8046, gadget_id = 70350256, pos = { x = -646.828, y = 200.000, z = -1384.325 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8047] = { config_id = 8047, gadget_id = 70350249, pos = { x = -650.482, y = 200.000, z = -1379.241 }, rot = { x = 0.000, y = 323.477, z = 0.000 }, level = 1, area_id = 16 },
	[8048] = { config_id = 8048, gadget_id = 70350249, pos = { x = -552.453, y = 200.000, z = -1343.403 }, rot = { x = 0.000, y = 192.969, z = 0.000 }, level = 1, area_id = 16 },
	[8049] = { config_id = 8049, gadget_id = 70350249, pos = { x = -555.592, y = 200.000, z = -1357.029 }, rot = { x = 0.000, y = 205.468, z = 0.000 }, level = 1, area_id = 16 },
	[8050] = { config_id = 8050, gadget_id = 70350249, pos = { x = -519.080, y = 200.000, z = -1283.941 }, rot = { x = 0.000, y = 179.938, z = 0.000 }, level = 1, area_id = 7 },
	[8051] = { config_id = 8051, gadget_id = 70350249, pos = { x = -595.311, y = 200.000, z = -1393.368 }, rot = { x = 0.000, y = 252.889, z = 0.000 }, level = 1, area_id = 16 },
	[8052] = { config_id = 8052, gadget_id = 70350249, pos = { x = -582.507, y = 200.000, z = -1387.729 }, rot = { x = 0.000, y = 246.229, z = 0.000 }, level = 1, area_id = 16 },
	[8053] = { config_id = 8053, gadget_id = 70350249, pos = { x = -633.642, y = 200.000, z = -1274.046 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8054] = { config_id = 8054, gadget_id = 70950092, pos = { x = -535.670, y = 200.000, z = -1323.689 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8055] = { config_id = 8055, gadget_id = 70950092, pos = { x = -560.376, y = 200.000, z = -1334.201 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8056] = { config_id = 8056, gadget_id = 70950092, pos = { x = -554.571, y = 200.000, z = -1374.995 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8057] = { config_id = 8057, gadget_id = 70350249, pos = { x = -619.013, y = 200.000, z = -1400.804 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8058] = { config_id = 8058, gadget_id = 70350249, pos = { x = -628.238, y = 200.000, z = -1398.854 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8059] = { config_id = 8059, gadget_id = 70350256, pos = { x = -642.037, y = 200.000, z = -1389.935 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8060] = { config_id = 8060, gadget_id = 70350256, pos = { x = -645.732, y = 200.000, z = -1385.922 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8061] = { config_id = 8061, gadget_id = 70350249, pos = { x = -509.666, y = 200.000, z = -1271.141 }, rot = { x = 0.000, y = 179.938, z = 0.000 }, level = 1, area_id = 7 },
	[8062] = { config_id = 8062, gadget_id = 70350249, pos = { x = -506.949, y = 200.000, z = -1214.490 }, rot = { x = 0.000, y = 166.979, z = 0.000 }, level = 1, area_id = 7 },
	[8063] = { config_id = 8063, gadget_id = 70350249, pos = { x = -504.247, y = 200.000, z = -1226.177 }, rot = { x = 0.000, y = 172.116, z = 0.000 }, level = 1, area_id = 7 },
	[8064] = { config_id = 8064, gadget_id = 70350249, pos = { x = -653.683, y = 200.000, z = -1323.285 }, rot = { x = 0.000, y = 16.783, z = 0.000 }, level = 1, area_id = 16 },
	[8065] = { config_id = 8065, gadget_id = 70350249, pos = { x = -652.556, y = 200.000, z = -1311.182 }, rot = { x = 0.000, y = 29.322, z = 0.000 }, level = 1, area_id = 16 },
	[8066] = { config_id = 8066, gadget_id = 70350249, pos = { x = -633.642, y = 200.000, z = -1274.046 }, rot = { x = 0.000, y = 13.747, z = 0.000 }, level = 1, area_id = 16 },
	[8067] = { config_id = 8067, gadget_id = 70350249, pos = { x = -505.345, y = 200.000, z = -1263.203 }, rot = { x = 0.000, y = 179.938, z = 0.000 }, level = 1, area_id = 7 },
	[8068] = { config_id = 8068, gadget_id = 70350249, pos = { x = -631.028, y = 200.000, z = -1263.360 }, rot = { x = 0.000, y = 13.747, z = 0.000 }, level = 1, area_id = 16 },
	[8069] = { config_id = 8069, gadget_id = 70690027, pos = { x = -612.396, y = 200.000, z = -1238.024 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8070] = { config_id = 8070, gadget_id = 70690027, pos = { x = -528.056, y = 200.000, z = -1223.911 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 7 },
	[8071] = { config_id = 8071, gadget_id = 70690001, pos = { x = -599.106, y = 207.000, z = -1230.567 }, rot = { x = 0.000, y = 66.974, z = 0.000 }, level = 1, area_id = 7 },
	[8072] = { config_id = 8072, gadget_id = 70690001, pos = { x = -590.911, y = 207.000, z = -1228.555 }, rot = { x = 0.000, y = 88.590, z = 0.000 }, level = 1, area_id = 7 },
	[8073] = { config_id = 8073, gadget_id = 70690001, pos = { x = -582.894, y = 207.000, z = -1228.859 }, rot = { x = 0.000, y = 94.634, z = 0.000 }, level = 1, area_id = 7 },
	[8074] = { config_id = 8074, gadget_id = 70690001, pos = { x = -573.992, y = 207.000, z = -1229.337 }, rot = { x = 0.000, y = 94.374, z = 0.000 }, level = 1, area_id = 7 },
	[8075] = { config_id = 8075, gadget_id = 70690001, pos = { x = -564.324, y = 207.000, z = -1229.425 }, rot = { x = 0.000, y = 94.271, z = 0.000 }, level = 1, area_id = 7 },
	[8076] = { config_id = 8076, gadget_id = 70690001, pos = { x = -551.556, y = 207.000, z = -1230.995 }, rot = { x = 0.000, y = 94.202, z = 0.000 }, level = 1, area_id = 7 },
	[8077] = { config_id = 8077, gadget_id = 70350256, pos = { x = -539.861, y = 207.000, z = -1230.848 }, rot = { x = 0.000, y = 94.202, z = 0.000 }, level = 1, area_id = 7 },
	[8078] = { config_id = 8078, gadget_id = 70690001, pos = { x = -517.405, y = 207.000, z = -1225.227 }, rot = { x = 0.000, y = 67.345, z = 0.000 }, level = 1, area_id = 7 },
	[8079] = { config_id = 8079, gadget_id = 70690001, pos = { x = -505.432, y = 207.117, z = -1217.139 }, rot = { x = 0.000, y = 51.600, z = 0.000 }, level = 1, area_id = 7 },
	[8080] = { config_id = 8080, gadget_id = 70690001, pos = { x = -494.458, y = 207.000, z = -1208.509 }, rot = { x = 0.000, y = 53.000, z = 0.000 }, level = 1, area_id = 7 },
	[8081] = { config_id = 8081, gadget_id = 70690001, pos = { x = -483.904, y = 207.000, z = -1199.673 }, rot = { x = 0.000, y = 51.800, z = 0.000 }, level = 1, area_id = 7 },
	[8082] = { config_id = 8082, gadget_id = 70350277, pos = { x = -509.666, y = 200.000, z = -1271.141 }, rot = { x = 0.000, y = 219.854, z = 0.000 }, level = 1, area_id = 7 },
	[8083] = { config_id = 8083, gadget_id = 70350249, pos = { x = -543.275, y = 200.000, z = -1317.258 }, rot = { x = 0.000, y = 206.607, z = 0.000 }, level = 1, area_id = 16 },
	[8084] = { config_id = 8084, gadget_id = 70350249, pos = { x = -549.522, y = 200.000, z = -1329.728 }, rot = { x = 0.000, y = 192.098, z = 0.000 }, level = 1, area_id = 16 },
	[8085] = { config_id = 8085, gadget_id = 70350249, pos = { x = -561.598, y = 200.000, z = -1369.641 }, rot = { x = 0.000, y = 221.331, z = 0.000 }, level = 1, area_id = 16 },
	[8086] = { config_id = 8086, gadget_id = 70690001, pos = { x = -473.652, y = 207.000, z = -1191.861 }, rot = { x = 0.000, y = 51.600, z = 0.000 }, level = 1, area_id = 7 },
	[8087] = { config_id = 8087, gadget_id = 70350249, pos = { x = -570.797, y = 200.000, z = -1380.100 }, rot = { x = 0.000, y = 236.920, z = 0.000 }, level = 1, area_id = 16 },
	[8088] = { config_id = 8088, gadget_id = 70690001, pos = { x = -466.400, y = 207.000, z = -1185.443 }, rot = { x = 0.000, y = 45.700, z = 0.000 }, level = 1, area_id = 7 },
	[8089] = { config_id = 8089, gadget_id = 70690001, pos = { x = -459.437, y = 207.000, z = -1177.542 }, rot = { x = 0.000, y = 50.000, z = 0.000 }, level = 1, area_id = 7 },
	[8090] = { config_id = 8090, gadget_id = 70690001, pos = { x = -451.821, y = 208.009, z = -1169.393 }, rot = { x = 344.223, y = 50.625, z = 0.000 }, level = 1, area_id = 7 },
	[8091] = { config_id = 8091, gadget_id = 70690001, pos = { x = -445.297, y = 209.574, z = -1162.464 }, rot = { x = 340.600, y = 60.000, z = 357.732 }, level = 1, area_id = 7 },
	[8092] = { config_id = 8092, gadget_id = 70690001, pos = { x = -439.057, y = 212.207, z = -1156.349 }, rot = { x = 342.800, y = 55.800, z = 0.000 }, level = 1, area_id = 7 },
	[8093] = { config_id = 8093, gadget_id = 70690001, pos = { x = -434.316, y = 214.061, z = -1149.953 }, rot = { x = 339.850, y = 58.520, z = 0.000 }, level = 1, area_id = 7 },
	[8094] = { config_id = 8094, gadget_id = 70690001, pos = { x = -429.850, y = 217.492, z = -1144.580 }, rot = { x = 340.100, y = 50.500, z = 0.000 }, level = 1, area_id = 7 },
	[8095] = { config_id = 8095, gadget_id = 70350256, pos = { x = -456.029, y = 206.789, z = -1173.838 }, rot = { x = 0.227, y = 56.534, z = 0.768 }, level = 1, area_id = 7 },
	[8096] = { config_id = 8096, gadget_id = 70350256, pos = { x = -423.806, y = 219.932, z = -1137.407 }, rot = { x = 0.227, y = 56.534, z = 0.768 }, level = 1, area_id = 7 },
	[8097] = { config_id = 8097, gadget_id = 70350256, pos = { x = -647.972, y = 200.000, z = -1382.278 }, rot = { x = 0.000, y = 144.954, z = 0.000 }, level = 1, area_id = 16 },
	[8098] = { config_id = 8098, gadget_id = 70350277, pos = { x = -451.010, y = 200.000, z = -1145.426 }, rot = { x = 0.000, y = 264.654, z = 0.000 }, level = 1, area_id = 7 },
	[8099] = { config_id = 8099, gadget_id = 70350249, pos = { x = -655.063, y = 200.000, z = -1368.828 }, rot = { x = 0.000, y = 1.554, z = 0.000 }, level = 1, area_id = 16 },
	[8100] = { config_id = 8100, gadget_id = 70350249, pos = { x = -637.517, y = 200.000, z = -1347.284 }, rot = { x = 0.000, y = 352.889, z = 0.000 }, level = 1, area_id = 16 },
	[8101] = { config_id = 8101, gadget_id = 70350249, pos = { x = -639.217, y = 200.000, z = -1333.657 }, rot = { x = 0.000, y = 306.058, z = 0.000 }, level = 1, area_id = 16 },
	[8102] = { config_id = 8102, gadget_id = 70350249, pos = { x = -639.842, y = 200.000, z = -1298.462 }, rot = { x = 0.000, y = 29.322, z = 0.000 }, level = 1, area_id = 16 },
	[8103] = { config_id = 8103, gadget_id = 70350249, pos = { x = -609.531, y = 200.000, z = -1399.468 }, rot = { x = 0.000, y = 252.889, z = 0.000 }, level = 1, area_id = 16 },
	[8104] = { config_id = 8104, gadget_id = 70350249, pos = { x = -636.442, y = 200.000, z = -1283.739 }, rot = { x = 0.000, y = 10.554, z = 0.000 }, level = 1, area_id = 16 },
	[8107] = { config_id = 8107, gadget_id = 70950087, pos = { x = -538.341, y = 200.000, z = -1326.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 16 },
	[8112] = { config_id = 8112, gadget_id = 70950087, pos = { x = -556.237, y = 200.000, z = -1333.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 16 },
	[8116] = { config_id = 8116, gadget_id = 70950087, pos = { x = -562.218, y = 200.000, z = -1331.093 }, rot = { x = 0.000, y = 82.300, z = 0.000 }, level = 1, area_id = 16 },
	[8120] = { config_id = 8120, gadget_id = 70950087, pos = { x = -555.241, y = 200.000, z = -1378.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 16 },
	[8123] = { config_id = 8123, gadget_id = 70950087, pos = { x = -558.455, y = 200.000, z = -1373.202 }, rot = { x = 0.000, y = 27.100, z = 0.000 }, level = 1, area_id = 16 }
}

-- 区域
regions = {
	[8110] = { config_id = 8110, shape = RegionShape.SPHERE, radius = 2, pos = { x = -421.025, y = 213.368, z = -1128.825 }, area_id = 7 },
	[8111] = { config_id = 8111, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -511.425, y = 200.000, z = -1272.717 }, area_id = 7 },
	[8113] = { config_id = 8113, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -633.804, y = 200.000, z = -1397.507 }, area_id = 16 },
	[8115] = { config_id = 8115, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -625.603, y = 200.000, z = -1252.912 }, area_id = 16 }
}

-- 触发器
triggers = {
	{ config_id = 1008013, name = "QUEST_FINISH_8013", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_8013", action = "action_EVENT_QUEST_FINISH_8013" },
	{ config_id = 1008105, name = "ANY_MONSTER_DIE_8105", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8105", action = "action_EVENT_ANY_MONSTER_DIE_8105", trigger_count = 0 },
	{ config_id = 1008106, name = "ANY_MONSTER_DIE_8106", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8106", action = "action_EVENT_ANY_MONSTER_DIE_8106", trigger_count = 0 },
	{ config_id = 1008108, name = "CHALLENGE_SUCCESS_8108", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2003007", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8108", trigger_count = 0 },
	{ config_id = 1008109, name = "CHALLENGE_FAIL_8109", event = EventType.EVENT_CHALLENGE_FAIL, source = "2003007", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8109", trigger_count = 0 },
	{ config_id = 1008110, name = "ENTER_REGION_8110", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8110", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 1008111, name = "ENTER_REGION_8111", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8111", action = "action_EVENT_ENTER_REGION_8111", trigger_count = 0 },
	{ config_id = 1008113, name = "ENTER_REGION_8113", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8113", action = "action_EVENT_ENTER_REGION_8113", trigger_count = 0 },
	{ config_id = 1008114, name = "ANY_MONSTER_DIE_8114", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8114", action = "action_EVENT_ANY_MONSTER_DIE_8114", trigger_count = 0 },
	{ config_id = 1008115, name = "ENTER_REGION_8115", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8115", action = "action_EVENT_ENTER_REGION_8115", trigger_count = 0 },
	{ config_id = 1008117, name = "GADGET_CREATE_8117", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8117", action = "action_EVENT_GADGET_CREATE_8117", trigger_count = 0 },
	{ config_id = 1008118, name = "ANY_GADGET_DIE_8118", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8118", action = "action_EVENT_ANY_GADGET_DIE_8118", trigger_count = 0, tag = "888" },
	{ config_id = 1008119, name = "SELECT_OPTION_8119", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8119", action = "action_EVENT_SELECT_OPTION_8119", trigger_count = 0 }
}

-- 点位
points = {
	-- 人
	{ config_id = 8121, pos = { x = -444.776, y = 200.000, z = -1140.243 }, rot = { x = 6.230, y = 264.654, z = 356.424 }, area_id = 7 },
	-- 船
	{ config_id = 8122, pos = { x = -445.152, y = 200.000, z = -1142.973 }, rot = { x = 6.230, y = 264.654, z = 356.424 }, area_id = 7 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false },
	{ config_id = 2, name = "key", value = 0, no_refresh = false }
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
		gadgets = { 8006, 8098 },
		regions = { },
		triggers = { "QUEST_FINISH_8013", "CHALLENGE_SUCCESS_8108", "CHALLENGE_FAIL_8109", "GADGET_CREATE_8117", "ANY_GADGET_DIE_8118", "SELECT_OPTION_8119" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 8007, 8014, 8069, 8070, 8071, 8072, 8073, 8074, 8075, 8076, 8077, 8078, 8079, 8080, 8081, 8086, 8088, 8089, 8090, 8091, 8092, 8093, 8094, 8095, 8096 },
		regions = { 8110 },
		triggers = { "ENTER_REGION_8110" },
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
		gadgets = { 8008, 8016, 8019, 8020, 8021, 8022, 8023, 8024, 8025, 8028, 8033, 8034, 8043, 8050, 8061, 8062, 8063, 8067, 8082 },
		regions = { 8111 },
		triggers = { "ENTER_REGION_8111" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 8001, 8002, 8003 },
		gadgets = { 8004, 8005, 8009, 8010, 8011, 8015, 8017, 8026, 8027, 8031, 8032, 8035, 8036, 8037, 8038, 8039, 8040, 8041, 8048, 8049, 8051, 8052, 8057, 8058, 8083, 8084, 8085, 8087, 8103, 8107, 8112, 8116, 8120, 8123 },
		regions = { 8113 },
		triggers = { "ANY_MONSTER_DIE_8105", "ANY_MONSTER_DIE_8106", "ENTER_REGION_8113", "ANY_MONSTER_DIE_8114" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 8012, 8018, 8042, 8044, 8045, 8047, 8053, 8064, 8065, 8066, 8068, 8099, 8100, 8101, 8102, 8104 },
		regions = { 8115 },
		triggers = { "ENTER_REGION_8115" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
		monsters = { },
		gadgets = { 8029, 8059 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 8030, 8060 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 8046, 8097 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 8054, 8055, 8056 },
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
function condition_EVENT_QUEST_FINISH_8013(context, evt)
	--检查ID为1905216的任务的完成状态是否为0（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1905216 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 0 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_8013(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8105(context, evt)
	--判断死亡怪物的configid是否为 8002
	if evt.param1 ~= 8002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8105(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133113008, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8106(context, evt)
	--判断死亡怪物的configid是否为 8003
	if evt.param1 ~= 8003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8106(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133113008, 9)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8108(context, evt)
	  -- key>= 4，lua通知190520201；key< 4，lua通知190520202
	  if ScriptLib.GetGroupVariableValue(context, "key") < 10 then ScriptLib.AddQuestProgress(context, "190520202")
	  elseif ScriptLib.GetGroupVariableValue(context, "key") >= 10 then ScriptLib.AddQuestProgress(context, "190520201")
	  end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133113008, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133113008, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133113008, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133113008, 7)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133113008, 8)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133113008, 9)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133113008, 10)    
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133113008, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133113008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8109(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1905215_Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133113008, 8006, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 8006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133113008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8110(context, evt)
	if evt.param1 ~= 8110 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8111(context, evt)
	if evt.param1 ~= 8111 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8111(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133113008, EntityType.GADGET, 8016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133113008, 5)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133113008, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8113(context, evt)
	if evt.param1 ~= 8113 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8113(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133113008, 6)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8114(context, evt)
	--判断死亡怪物的configid是否为 8001
	if evt.param1 ~= 8001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8114(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133113008, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8115(context, evt)
	if evt.param1 ~= 8115 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8115(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133113008, 2)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 5)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133113008, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8117(context, evt)
	if 8006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8117(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133113008, 8006, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8118(context, evt)
	if (8022 == evt.param1)  or (8023 == evt.param1) or (8029 == evt.param1) or (8030 == evt.param1) or (8033 == evt.param1) or (8034 == evt.param1) or (8046 == evt.param1) or (8059 == evt.param1) or (8060 == evt.param1) or (8077 == evt.param1) or (8095 == evt.param1) or (8096 == evt.param1) or (8097 == evt.param1) then
	  return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8118(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8119(context, evt)
	-- 判断是gadgetid 8006 option_id 175
	if 8006 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 400041 ~= 0 then
	        ScriptLib.ShowReminder(context, 400041)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8119(context, evt)
	--创建编号为888（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	
	ScriptLib.CreateFatherChallenge(context, 2003007, 2003007, 121, {success = 1, fail = 1})
	ScriptLib.AttachChildChallenge(context, 2003007, 2003008, 2003008,{0,4, 666,1},{},{success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 2003007, 2003009, 2003009,{0,2, 888,13},{},{success=0,fail=0})
	ScriptLib.StartFatherChallenge(context, 2003007)
	ScriptLib.SetChallengeEventMark(context, 2003007, ChallengeEventMarkType.SUMMER_TIME_SPRINT_BOAT_TIME)
	ScriptLib.SetChallengeEventMark(context, 2003009, ChallengeEventMarkType.SUMMER_TIME_SPRINT_BOAT_GATHER_POINT)
	
	-- 添加suite4的新内容
	ScriptLib.AddExtraGroupSuite(context, 133113008, 4)
	
	-- 添加suite10的新内容
	ScriptLib.AddExtraGroupSuite(context, 133113008, 10)
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 8006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133113008 ；指定config：8006；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133113008, 8006, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end